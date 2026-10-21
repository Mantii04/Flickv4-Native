.class public final Landroidx/datastore/preferences/protobuf/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/l0;


# static fields
.field public static final o:[I

.field public static final p:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Landroidx/datastore/preferences/protobuf/a0;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:I

.field public final k:Landroidx/datastore/preferences/protobuf/d0;

.field public final l:Landroidx/datastore/preferences/protobuf/N;

.field public final m:Landroidx/datastore/preferences/protobuf/w0;

.field public final n:Landroidx/datastore/preferences/protobuf/V;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Landroidx/datastore/preferences/protobuf/b0;->o:[I

    .line 5
    .line 6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/H0;->i()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Landroidx/datastore/preferences/protobuf/b0;->p:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/a0;Z[IIILandroidx/datastore/preferences/protobuf/d0;Landroidx/datastore/preferences/protobuf/N;Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/x;Landroidx/datastore/preferences/protobuf/V;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/b0;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Landroidx/datastore/preferences/protobuf/b0;->c:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/datastore/preferences/protobuf/b0;->d:I

    .line 11
    .line 12
    instance-of p1, p5, Landroidx/datastore/preferences/protobuf/F;

    .line 13
    .line 14
    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/b0;->f:Z

    .line 15
    .line 16
    iput-boolean p6, p0, Landroidx/datastore/preferences/protobuf/b0;->g:Z

    .line 17
    .line 18
    iput-object p7, p0, Landroidx/datastore/preferences/protobuf/b0;->h:[I

    .line 19
    .line 20
    iput p8, p0, Landroidx/datastore/preferences/protobuf/b0;->i:I

    .line 21
    .line 22
    iput p9, p0, Landroidx/datastore/preferences/protobuf/b0;->j:I

    .line 23
    .line 24
    iput-object p10, p0, Landroidx/datastore/preferences/protobuf/b0;->k:Landroidx/datastore/preferences/protobuf/d0;

    .line 25
    .line 26
    iput-object p11, p0, Landroidx/datastore/preferences/protobuf/b0;->l:Landroidx/datastore/preferences/protobuf/N;

    .line 27
    .line 28
    iput-object p12, p0, Landroidx/datastore/preferences/protobuf/b0;->m:Landroidx/datastore/preferences/protobuf/w0;

    .line 29
    .line 30
    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/b0;->e:Landroidx/datastore/preferences/protobuf/a0;

    .line 31
    .line 32
    iput-object p14, p0, Landroidx/datastore/preferences/protobuf/b0;->n:Landroidx/datastore/preferences/protobuf/V;

    .line 33
    .line 34
    return-void
.end method

.method public static A(I)I
    .locals 1

    .line 1
    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static E(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/t;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p2, p0, p1}, Landroidx/datastore/preferences/protobuf/t;->writeString(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    check-cast p1, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 12
    .line 13
    invoke-virtual {p2, p0, p1}, Landroidx/datastore/preferences/protobuf/t;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static j(JLjava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p0, p1}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/List;

    .line 8
    .line 9
    return-object p0
.end method

.method public static o(Landroidx/datastore/preferences/protobuf/j0;Landroidx/datastore/preferences/protobuf/d0;Landroidx/datastore/preferences/protobuf/N;Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/x;Landroidx/datastore/preferences/protobuf/V;)Landroidx/datastore/preferences/protobuf/b0;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j0;->getSyntax()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->e:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v11, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v11, v3

    .line 15
    :goto_0
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/j0;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const v7, 0xd800

    .line 26
    .line 27
    .line 28
    if-lt v5, v7, :cond_2

    .line 29
    .line 30
    and-int/lit16 v5, v5, 0x1fff

    .line 31
    .line 32
    const/4 v8, 0x1

    .line 33
    const/16 v9, 0xd

    .line 34
    .line 35
    :goto_1
    add-int/lit8 v10, v8, 0x1

    .line 36
    .line 37
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-lt v8, v7, :cond_1

    .line 42
    .line 43
    and-int/lit16 v8, v8, 0x1fff

    .line 44
    .line 45
    shl-int/2addr v8, v9

    .line 46
    or-int/2addr v5, v8

    .line 47
    add-int/lit8 v9, v9, 0xd

    .line 48
    .line 49
    move v8, v10

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    shl-int/2addr v8, v9

    .line 52
    or-int/2addr v5, v8

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/4 v10, 0x1

    .line 55
    :goto_2
    add-int/lit8 v8, v10, 0x1

    .line 56
    .line 57
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-lt v9, v7, :cond_4

    .line 62
    .line 63
    and-int/lit16 v9, v9, 0x1fff

    .line 64
    .line 65
    const/16 v10, 0xd

    .line 66
    .line 67
    :goto_3
    add-int/lit8 v12, v8, 0x1

    .line 68
    .line 69
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-lt v8, v7, :cond_3

    .line 74
    .line 75
    and-int/lit16 v8, v8, 0x1fff

    .line 76
    .line 77
    shl-int/2addr v8, v10

    .line 78
    or-int/2addr v9, v8

    .line 79
    add-int/lit8 v10, v10, 0xd

    .line 80
    .line 81
    move v8, v12

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    shl-int/2addr v8, v10

    .line 84
    or-int/2addr v9, v8

    .line 85
    move v8, v12

    .line 86
    :cond_4
    if-nez v9, :cond_5

    .line 87
    .line 88
    sget-object v9, Landroidx/datastore/preferences/protobuf/b0;->o:[I

    .line 89
    .line 90
    move v6, v3

    .line 91
    move v10, v6

    .line 92
    move v13, v10

    .line 93
    move v14, v13

    .line 94
    move v15, v14

    .line 95
    move-object v12, v9

    .line 96
    move v9, v15

    .line 97
    goto/16 :goto_d

    .line 98
    .line 99
    :cond_5
    add-int/lit8 v9, v8, 0x1

    .line 100
    .line 101
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-lt v8, v7, :cond_7

    .line 106
    .line 107
    and-int/lit16 v8, v8, 0x1fff

    .line 108
    .line 109
    const/16 v10, 0xd

    .line 110
    .line 111
    :goto_4
    add-int/lit8 v12, v9, 0x1

    .line 112
    .line 113
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-lt v9, v7, :cond_6

    .line 118
    .line 119
    and-int/lit16 v9, v9, 0x1fff

    .line 120
    .line 121
    shl-int/2addr v9, v10

    .line 122
    or-int/2addr v8, v9

    .line 123
    add-int/lit8 v10, v10, 0xd

    .line 124
    .line 125
    move v9, v12

    .line 126
    goto :goto_4

    .line 127
    :cond_6
    shl-int/2addr v9, v10

    .line 128
    or-int/2addr v8, v9

    .line 129
    move v9, v12

    .line 130
    :cond_7
    add-int/lit8 v10, v9, 0x1

    .line 131
    .line 132
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-lt v9, v7, :cond_9

    .line 137
    .line 138
    and-int/lit16 v9, v9, 0x1fff

    .line 139
    .line 140
    const/16 v12, 0xd

    .line 141
    .line 142
    :goto_5
    add-int/lit8 v13, v10, 0x1

    .line 143
    .line 144
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    if-lt v10, v7, :cond_8

    .line 149
    .line 150
    and-int/lit16 v10, v10, 0x1fff

    .line 151
    .line 152
    shl-int/2addr v10, v12

    .line 153
    or-int/2addr v9, v10

    .line 154
    add-int/lit8 v12, v12, 0xd

    .line 155
    .line 156
    move v10, v13

    .line 157
    goto :goto_5

    .line 158
    :cond_8
    shl-int/2addr v10, v12

    .line 159
    or-int/2addr v9, v10

    .line 160
    move v10, v13

    .line 161
    :cond_9
    add-int/lit8 v12, v10, 0x1

    .line 162
    .line 163
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    if-lt v10, v7, :cond_b

    .line 168
    .line 169
    and-int/lit16 v10, v10, 0x1fff

    .line 170
    .line 171
    const/16 v13, 0xd

    .line 172
    .line 173
    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 174
    .line 175
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    if-lt v12, v7, :cond_a

    .line 180
    .line 181
    and-int/lit16 v12, v12, 0x1fff

    .line 182
    .line 183
    shl-int/2addr v12, v13

    .line 184
    or-int/2addr v10, v12

    .line 185
    add-int/lit8 v13, v13, 0xd

    .line 186
    .line 187
    move v12, v14

    .line 188
    goto :goto_6

    .line 189
    :cond_a
    shl-int/2addr v12, v13

    .line 190
    or-int/2addr v10, v12

    .line 191
    move v12, v14

    .line 192
    :cond_b
    add-int/lit8 v13, v12, 0x1

    .line 193
    .line 194
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    if-lt v12, v7, :cond_d

    .line 199
    .line 200
    and-int/lit16 v12, v12, 0x1fff

    .line 201
    .line 202
    const/16 v14, 0xd

    .line 203
    .line 204
    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 205
    .line 206
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 207
    .line 208
    .line 209
    move-result v13

    .line 210
    if-lt v13, v7, :cond_c

    .line 211
    .line 212
    and-int/lit16 v13, v13, 0x1fff

    .line 213
    .line 214
    shl-int/2addr v13, v14

    .line 215
    or-int/2addr v12, v13

    .line 216
    add-int/lit8 v14, v14, 0xd

    .line 217
    .line 218
    move v13, v15

    .line 219
    goto :goto_7

    .line 220
    :cond_c
    shl-int/2addr v13, v14

    .line 221
    or-int/2addr v12, v13

    .line 222
    move v13, v15

    .line 223
    :cond_d
    add-int/lit8 v14, v13, 0x1

    .line 224
    .line 225
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 226
    .line 227
    .line 228
    move-result v13

    .line 229
    if-lt v13, v7, :cond_f

    .line 230
    .line 231
    and-int/lit16 v13, v13, 0x1fff

    .line 232
    .line 233
    const/16 v15, 0xd

    .line 234
    .line 235
    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 236
    .line 237
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 238
    .line 239
    .line 240
    move-result v14

    .line 241
    if-lt v14, v7, :cond_e

    .line 242
    .line 243
    and-int/lit16 v14, v14, 0x1fff

    .line 244
    .line 245
    shl-int/2addr v14, v15

    .line 246
    or-int/2addr v13, v14

    .line 247
    add-int/lit8 v15, v15, 0xd

    .line 248
    .line 249
    move/from16 v14, v16

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_e
    shl-int/2addr v14, v15

    .line 253
    or-int/2addr v13, v14

    .line 254
    move/from16 v14, v16

    .line 255
    .line 256
    :cond_f
    add-int/lit8 v15, v14, 0x1

    .line 257
    .line 258
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 259
    .line 260
    .line 261
    move-result v14

    .line 262
    if-lt v14, v7, :cond_11

    .line 263
    .line 264
    and-int/lit16 v14, v14, 0x1fff

    .line 265
    .line 266
    const/16 v16, 0xd

    .line 267
    .line 268
    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 269
    .line 270
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 271
    .line 272
    .line 273
    move-result v15

    .line 274
    if-lt v15, v7, :cond_10

    .line 275
    .line 276
    and-int/lit16 v15, v15, 0x1fff

    .line 277
    .line 278
    shl-int v15, v15, v16

    .line 279
    .line 280
    or-int/2addr v14, v15

    .line 281
    add-int/lit8 v16, v16, 0xd

    .line 282
    .line 283
    move/from16 v15, v17

    .line 284
    .line 285
    goto :goto_9

    .line 286
    :cond_10
    shl-int v15, v15, v16

    .line 287
    .line 288
    or-int/2addr v14, v15

    .line 289
    move/from16 v15, v17

    .line 290
    .line 291
    :cond_11
    add-int/lit8 v16, v15, 0x1

    .line 292
    .line 293
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 294
    .line 295
    .line 296
    move-result v15

    .line 297
    if-lt v15, v7, :cond_13

    .line 298
    .line 299
    and-int/lit16 v15, v15, 0x1fff

    .line 300
    .line 301
    move/from16 v3, v16

    .line 302
    .line 303
    const/16 v16, 0xd

    .line 304
    .line 305
    :goto_a
    add-int/lit8 v18, v3, 0x1

    .line 306
    .line 307
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-lt v3, v7, :cond_12

    .line 312
    .line 313
    and-int/lit16 v3, v3, 0x1fff

    .line 314
    .line 315
    shl-int v3, v3, v16

    .line 316
    .line 317
    or-int/2addr v15, v3

    .line 318
    add-int/lit8 v16, v16, 0xd

    .line 319
    .line 320
    move/from16 v3, v18

    .line 321
    .line 322
    goto :goto_a

    .line 323
    :cond_12
    shl-int v3, v3, v16

    .line 324
    .line 325
    or-int/2addr v15, v3

    .line 326
    move/from16 v3, v18

    .line 327
    .line 328
    goto :goto_b

    .line 329
    :cond_13
    move/from16 v3, v16

    .line 330
    .line 331
    :goto_b
    add-int/lit8 v16, v3, 0x1

    .line 332
    .line 333
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    if-lt v3, v7, :cond_15

    .line 338
    .line 339
    and-int/lit16 v3, v3, 0x1fff

    .line 340
    .line 341
    move/from16 v6, v16

    .line 342
    .line 343
    const/16 v16, 0xd

    .line 344
    .line 345
    :goto_c
    add-int/lit8 v19, v6, 0x1

    .line 346
    .line 347
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    if-lt v6, v7, :cond_14

    .line 352
    .line 353
    and-int/lit16 v6, v6, 0x1fff

    .line 354
    .line 355
    shl-int v6, v6, v16

    .line 356
    .line 357
    or-int/2addr v3, v6

    .line 358
    add-int/lit8 v16, v16, 0xd

    .line 359
    .line 360
    move/from16 v6, v19

    .line 361
    .line 362
    goto :goto_c

    .line 363
    :cond_14
    shl-int v6, v6, v16

    .line 364
    .line 365
    or-int/2addr v3, v6

    .line 366
    move/from16 v16, v19

    .line 367
    .line 368
    :cond_15
    add-int v6, v3, v14

    .line 369
    .line 370
    add-int/2addr v6, v15

    .line 371
    new-array v6, v6, [I

    .line 372
    .line 373
    mul-int/lit8 v15, v8, 0x2

    .line 374
    .line 375
    add-int/2addr v15, v9

    .line 376
    move v9, v12

    .line 377
    move-object v12, v6

    .line 378
    move v6, v13

    .line 379
    move v13, v3

    .line 380
    move v3, v8

    .line 381
    move/from16 v8, v16

    .line 382
    .line 383
    :goto_d
    sget-object v4, Landroidx/datastore/preferences/protobuf/b0;->p:Lsun/misc/Unsafe;

    .line 384
    .line 385
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j0;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/a0;

    .line 386
    .line 387
    .line 388
    move-result-object v19

    .line 389
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    move/from16 v19, v3

    .line 394
    .line 395
    mul-int/lit8 v3, v6, 0x3

    .line 396
    .line 397
    new-array v3, v3, [I

    .line 398
    .line 399
    mul-int/lit8 v6, v6, 0x2

    .line 400
    .line 401
    new-array v6, v6, [Ljava/lang/Object;

    .line 402
    .line 403
    add-int/2addr v14, v13

    .line 404
    move/from16 v23, v13

    .line 405
    .line 406
    move/from16 v24, v14

    .line 407
    .line 408
    const/16 v21, 0x0

    .line 409
    .line 410
    const/16 v22, 0x0

    .line 411
    .line 412
    :goto_e
    if-ge v8, v2, :cond_33

    .line 413
    .line 414
    add-int/lit8 v25, v8, 0x1

    .line 415
    .line 416
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 417
    .line 418
    .line 419
    move-result v8

    .line 420
    move/from16 v26, v2

    .line 421
    .line 422
    const v2, 0xd800

    .line 423
    .line 424
    .line 425
    if-lt v8, v2, :cond_17

    .line 426
    .line 427
    and-int/lit16 v8, v8, 0x1fff

    .line 428
    .line 429
    move/from16 v2, v25

    .line 430
    .line 431
    const/16 v25, 0xd

    .line 432
    .line 433
    :goto_f
    add-int/lit8 v27, v2, 0x1

    .line 434
    .line 435
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    move-object/from16 v28, v3

    .line 440
    .line 441
    const v3, 0xd800

    .line 442
    .line 443
    .line 444
    if-lt v2, v3, :cond_16

    .line 445
    .line 446
    and-int/lit16 v2, v2, 0x1fff

    .line 447
    .line 448
    shl-int v2, v2, v25

    .line 449
    .line 450
    or-int/2addr v8, v2

    .line 451
    add-int/lit8 v25, v25, 0xd

    .line 452
    .line 453
    move/from16 v2, v27

    .line 454
    .line 455
    move-object/from16 v3, v28

    .line 456
    .line 457
    goto :goto_f

    .line 458
    :cond_16
    shl-int v2, v2, v25

    .line 459
    .line 460
    or-int/2addr v8, v2

    .line 461
    move/from16 v2, v27

    .line 462
    .line 463
    goto :goto_10

    .line 464
    :cond_17
    move-object/from16 v28, v3

    .line 465
    .line 466
    move/from16 v2, v25

    .line 467
    .line 468
    :goto_10
    add-int/lit8 v3, v2, 0x1

    .line 469
    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    move/from16 v25, v3

    .line 475
    .line 476
    const v3, 0xd800

    .line 477
    .line 478
    .line 479
    if-lt v2, v3, :cond_19

    .line 480
    .line 481
    and-int/lit16 v2, v2, 0x1fff

    .line 482
    .line 483
    move/from16 v3, v25

    .line 484
    .line 485
    const/16 v25, 0xd

    .line 486
    .line 487
    :goto_11
    add-int/lit8 v27, v3, 0x1

    .line 488
    .line 489
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    move/from16 v29, v2

    .line 494
    .line 495
    const v2, 0xd800

    .line 496
    .line 497
    .line 498
    if-lt v3, v2, :cond_18

    .line 499
    .line 500
    and-int/lit16 v2, v3, 0x1fff

    .line 501
    .line 502
    shl-int v2, v2, v25

    .line 503
    .line 504
    or-int v2, v29, v2

    .line 505
    .line 506
    add-int/lit8 v25, v25, 0xd

    .line 507
    .line 508
    move/from16 v3, v27

    .line 509
    .line 510
    goto :goto_11

    .line 511
    :cond_18
    shl-int v2, v3, v25

    .line 512
    .line 513
    or-int v2, v29, v2

    .line 514
    .line 515
    move/from16 v3, v27

    .line 516
    .line 517
    goto :goto_12

    .line 518
    :cond_19
    move/from16 v3, v25

    .line 519
    .line 520
    :goto_12
    move/from16 v25, v5

    .line 521
    .line 522
    and-int/lit16 v5, v2, 0xff

    .line 523
    .line 524
    move-object/from16 v27, v6

    .line 525
    .line 526
    and-int/lit16 v6, v2, 0x400

    .line 527
    .line 528
    if-eqz v6, :cond_1a

    .line 529
    .line 530
    add-int/lit8 v6, v21, 0x1

    .line 531
    .line 532
    aput v22, v12, v21

    .line 533
    .line 534
    move/from16 v21, v6

    .line 535
    .line 536
    :cond_1a
    iget-object v6, v0, Landroidx/datastore/preferences/protobuf/j0;->c:[Ljava/lang/Object;

    .line 537
    .line 538
    const/16 v0, 0x33

    .line 539
    .line 540
    if-lt v5, v0, :cond_22

    .line 541
    .line 542
    add-int/lit8 v0, v3, 0x1

    .line 543
    .line 544
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 545
    .line 546
    .line 547
    move-result v3

    .line 548
    move/from16 v29, v0

    .line 549
    .line 550
    const v0, 0xd800

    .line 551
    .line 552
    .line 553
    if-lt v3, v0, :cond_1c

    .line 554
    .line 555
    and-int/lit16 v3, v3, 0x1fff

    .line 556
    .line 557
    move/from16 v31, v29

    .line 558
    .line 559
    move/from16 v29, v3

    .line 560
    .line 561
    move/from16 v3, v31

    .line 562
    .line 563
    const/16 v31, 0xd

    .line 564
    .line 565
    :goto_13
    add-int/lit8 v32, v3, 0x1

    .line 566
    .line 567
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    if-lt v3, v0, :cond_1b

    .line 572
    .line 573
    and-int/lit16 v0, v3, 0x1fff

    .line 574
    .line 575
    shl-int v0, v0, v31

    .line 576
    .line 577
    or-int v29, v29, v0

    .line 578
    .line 579
    add-int/lit8 v31, v31, 0xd

    .line 580
    .line 581
    move/from16 v3, v32

    .line 582
    .line 583
    const v0, 0xd800

    .line 584
    .line 585
    .line 586
    goto :goto_13

    .line 587
    :cond_1b
    shl-int v0, v3, v31

    .line 588
    .line 589
    or-int v3, v29, v0

    .line 590
    .line 591
    move/from16 v0, v32

    .line 592
    .line 593
    goto :goto_14

    .line 594
    :cond_1c
    move/from16 v0, v29

    .line 595
    .line 596
    :goto_14
    move/from16 v29, v0

    .line 597
    .line 598
    add-int/lit8 v0, v5, -0x33

    .line 599
    .line 600
    move/from16 v31, v3

    .line 601
    .line 602
    const/16 v3, 0x9

    .line 603
    .line 604
    if-eq v0, v3, :cond_1e

    .line 605
    .line 606
    const/16 v3, 0x11

    .line 607
    .line 608
    if-ne v0, v3, :cond_1d

    .line 609
    .line 610
    goto :goto_16

    .line 611
    :cond_1d
    const/16 v3, 0xc

    .line 612
    .line 613
    if-ne v0, v3, :cond_1f

    .line 614
    .line 615
    and-int/lit8 v0, v25, 0x1

    .line 616
    .line 617
    const/4 v3, 0x1

    .line 618
    if-ne v0, v3, :cond_1f

    .line 619
    .line 620
    div-int/lit8 v0, v22, 0x3

    .line 621
    .line 622
    mul-int/lit8 v0, v0, 0x2

    .line 623
    .line 624
    add-int/2addr v0, v3

    .line 625
    add-int/lit8 v3, v15, 0x1

    .line 626
    .line 627
    aget-object v15, v6, v15

    .line 628
    .line 629
    aput-object v15, v27, v0

    .line 630
    .line 631
    :goto_15
    move v15, v3

    .line 632
    goto :goto_17

    .line 633
    :cond_1e
    :goto_16
    div-int/lit8 v0, v22, 0x3

    .line 634
    .line 635
    mul-int/lit8 v0, v0, 0x2

    .line 636
    .line 637
    const/16 v16, 0x1

    .line 638
    .line 639
    add-int/lit8 v0, v0, 0x1

    .line 640
    .line 641
    add-int/lit8 v3, v15, 0x1

    .line 642
    .line 643
    aget-object v15, v6, v15

    .line 644
    .line 645
    aput-object v15, v27, v0

    .line 646
    .line 647
    goto :goto_15

    .line 648
    :cond_1f
    :goto_17
    mul-int/lit8 v3, v31, 0x2

    .line 649
    .line 650
    aget-object v0, v6, v3

    .line 651
    .line 652
    move/from16 v30, v3

    .line 653
    .line 654
    instance-of v3, v0, Ljava/lang/reflect/Field;

    .line 655
    .line 656
    if-eqz v3, :cond_20

    .line 657
    .line 658
    check-cast v0, Ljava/lang/reflect/Field;

    .line 659
    .line 660
    :goto_18
    move/from16 v32, v8

    .line 661
    .line 662
    move/from16 v31, v9

    .line 663
    .line 664
    goto :goto_19

    .line 665
    :cond_20
    check-cast v0, Ljava/lang/String;

    .line 666
    .line 667
    invoke-static {v7, v0}, Landroidx/datastore/preferences/protobuf/b0;->x(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    aput-object v0, v6, v30

    .line 672
    .line 673
    goto :goto_18

    .line 674
    :goto_19
    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 675
    .line 676
    .line 677
    move-result-wide v8

    .line 678
    long-to-int v0, v8

    .line 679
    add-int/lit8 v3, v30, 0x1

    .line 680
    .line 681
    aget-object v8, v6, v3

    .line 682
    .line 683
    instance-of v9, v8, Ljava/lang/reflect/Field;

    .line 684
    .line 685
    if-eqz v9, :cond_21

    .line 686
    .line 687
    check-cast v8, Ljava/lang/reflect/Field;

    .line 688
    .line 689
    goto :goto_1a

    .line 690
    :cond_21
    check-cast v8, Ljava/lang/String;

    .line 691
    .line 692
    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/b0;->x(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 693
    .line 694
    .line 695
    move-result-object v8

    .line 696
    aput-object v8, v6, v3

    .line 697
    .line 698
    :goto_1a
    invoke-virtual {v4, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 699
    .line 700
    .line 701
    move-result-wide v8

    .line 702
    long-to-int v3, v8

    .line 703
    move-object v6, v1

    .line 704
    move v1, v3

    .line 705
    move/from16 v30, v15

    .line 706
    .line 707
    move/from16 v8, v29

    .line 708
    .line 709
    const/4 v3, 0x0

    .line 710
    const v15, 0xd800

    .line 711
    .line 712
    .line 713
    goto/16 :goto_26

    .line 714
    .line 715
    :cond_22
    move/from16 v32, v8

    .line 716
    .line 717
    move/from16 v31, v9

    .line 718
    .line 719
    add-int/lit8 v0, v15, 0x1

    .line 720
    .line 721
    aget-object v8, v6, v15

    .line 722
    .line 723
    check-cast v8, Ljava/lang/String;

    .line 724
    .line 725
    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/b0;->x(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 726
    .line 727
    .line 728
    move-result-object v8

    .line 729
    const/16 v9, 0x9

    .line 730
    .line 731
    if-eq v5, v9, :cond_23

    .line 732
    .line 733
    const/16 v9, 0x11

    .line 734
    .line 735
    if-ne v5, v9, :cond_24

    .line 736
    .line 737
    :cond_23
    move/from16 v30, v0

    .line 738
    .line 739
    const/4 v0, 0x1

    .line 740
    goto :goto_1f

    .line 741
    :cond_24
    const/16 v9, 0x1b

    .line 742
    .line 743
    if-eq v5, v9, :cond_25

    .line 744
    .line 745
    const/16 v9, 0x31

    .line 746
    .line 747
    if-ne v5, v9, :cond_26

    .line 748
    .line 749
    :cond_25
    move/from16 v30, v0

    .line 750
    .line 751
    const/4 v0, 0x1

    .line 752
    goto :goto_1e

    .line 753
    :cond_26
    const/16 v9, 0xc

    .line 754
    .line 755
    if-eq v5, v9, :cond_2a

    .line 756
    .line 757
    const/16 v9, 0x1e

    .line 758
    .line 759
    if-eq v5, v9, :cond_2a

    .line 760
    .line 761
    const/16 v9, 0x2c

    .line 762
    .line 763
    if-ne v5, v9, :cond_27

    .line 764
    .line 765
    goto :goto_1c

    .line 766
    :cond_27
    const/16 v9, 0x32

    .line 767
    .line 768
    if-ne v5, v9, :cond_29

    .line 769
    .line 770
    add-int/lit8 v9, v23, 0x1

    .line 771
    .line 772
    aput v22, v12, v23

    .line 773
    .line 774
    div-int/lit8 v23, v22, 0x3

    .line 775
    .line 776
    mul-int/lit8 v23, v23, 0x2

    .line 777
    .line 778
    add-int/lit8 v30, v15, 0x2

    .line 779
    .line 780
    aget-object v0, v6, v0

    .line 781
    .line 782
    aput-object v0, v27, v23

    .line 783
    .line 784
    and-int/lit16 v0, v2, 0x800

    .line 785
    .line 786
    if-eqz v0, :cond_28

    .line 787
    .line 788
    add-int/lit8 v23, v23, 0x1

    .line 789
    .line 790
    add-int/lit8 v0, v15, 0x3

    .line 791
    .line 792
    aget-object v15, v6, v30

    .line 793
    .line 794
    aput-object v15, v27, v23

    .line 795
    .line 796
    move/from16 v30, v0

    .line 797
    .line 798
    :cond_28
    move/from16 v23, v9

    .line 799
    .line 800
    :goto_1b
    const/4 v0, 0x1

    .line 801
    goto :goto_20

    .line 802
    :cond_29
    move/from16 v30, v0

    .line 803
    .line 804
    goto :goto_1b

    .line 805
    :cond_2a
    :goto_1c
    and-int/lit8 v9, v25, 0x1

    .line 806
    .line 807
    move/from16 v30, v0

    .line 808
    .line 809
    const/4 v0, 0x1

    .line 810
    if-ne v9, v0, :cond_2b

    .line 811
    .line 812
    div-int/lit8 v9, v22, 0x3

    .line 813
    .line 814
    mul-int/lit8 v9, v9, 0x2

    .line 815
    .line 816
    add-int/2addr v9, v0

    .line 817
    add-int/lit8 v15, v15, 0x2

    .line 818
    .line 819
    aget-object v16, v6, v30

    .line 820
    .line 821
    aput-object v16, v27, v9

    .line 822
    .line 823
    :goto_1d
    move/from16 v30, v15

    .line 824
    .line 825
    goto :goto_20

    .line 826
    :goto_1e
    div-int/lit8 v9, v22, 0x3

    .line 827
    .line 828
    mul-int/lit8 v9, v9, 0x2

    .line 829
    .line 830
    add-int/2addr v9, v0

    .line 831
    add-int/lit8 v15, v15, 0x2

    .line 832
    .line 833
    aget-object v16, v6, v30

    .line 834
    .line 835
    aput-object v16, v27, v9

    .line 836
    .line 837
    goto :goto_1d

    .line 838
    :goto_1f
    div-int/lit8 v9, v22, 0x3

    .line 839
    .line 840
    mul-int/lit8 v9, v9, 0x2

    .line 841
    .line 842
    add-int/2addr v9, v0

    .line 843
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 844
    .line 845
    .line 846
    move-result-object v15

    .line 847
    aput-object v15, v27, v9

    .line 848
    .line 849
    :cond_2b
    :goto_20
    invoke-virtual {v4, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 850
    .line 851
    .line 852
    move-result-wide v8

    .line 853
    long-to-int v8, v8

    .line 854
    and-int/lit8 v9, v25, 0x1

    .line 855
    .line 856
    if-ne v9, v0, :cond_2f

    .line 857
    .line 858
    const/16 v9, 0x11

    .line 859
    .line 860
    if-gt v5, v9, :cond_2f

    .line 861
    .line 862
    add-int/lit8 v9, v3, 0x1

    .line 863
    .line 864
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 865
    .line 866
    .line 867
    move-result v3

    .line 868
    const v15, 0xd800

    .line 869
    .line 870
    .line 871
    if-lt v3, v15, :cond_2d

    .line 872
    .line 873
    and-int/lit16 v3, v3, 0x1fff

    .line 874
    .line 875
    const/16 v16, 0xd

    .line 876
    .line 877
    :goto_21
    add-int/lit8 v20, v9, 0x1

    .line 878
    .line 879
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 880
    .line 881
    .line 882
    move-result v9

    .line 883
    if-lt v9, v15, :cond_2c

    .line 884
    .line 885
    and-int/lit16 v9, v9, 0x1fff

    .line 886
    .line 887
    shl-int v9, v9, v16

    .line 888
    .line 889
    or-int/2addr v3, v9

    .line 890
    add-int/lit8 v16, v16, 0xd

    .line 891
    .line 892
    move/from16 v9, v20

    .line 893
    .line 894
    goto :goto_21

    .line 895
    :cond_2c
    shl-int v9, v9, v16

    .line 896
    .line 897
    or-int/2addr v3, v9

    .line 898
    goto :goto_22

    .line 899
    :cond_2d
    move/from16 v20, v9

    .line 900
    .line 901
    :goto_22
    mul-int/lit8 v9, v19, 0x2

    .line 902
    .line 903
    div-int/lit8 v16, v3, 0x20

    .line 904
    .line 905
    add-int v16, v16, v9

    .line 906
    .line 907
    aget-object v9, v6, v16

    .line 908
    .line 909
    instance-of v0, v9, Ljava/lang/reflect/Field;

    .line 910
    .line 911
    if-eqz v0, :cond_2e

    .line 912
    .line 913
    check-cast v9, Ljava/lang/reflect/Field;

    .line 914
    .line 915
    :goto_23
    move-object v6, v1

    .line 916
    goto :goto_24

    .line 917
    :cond_2e
    check-cast v9, Ljava/lang/String;

    .line 918
    .line 919
    invoke-static {v7, v9}, Landroidx/datastore/preferences/protobuf/b0;->x(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 920
    .line 921
    .line 922
    move-result-object v9

    .line 923
    aput-object v9, v6, v16

    .line 924
    .line 925
    goto :goto_23

    .line 926
    :goto_24
    invoke-virtual {v4, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 927
    .line 928
    .line 929
    move-result-wide v0

    .line 930
    long-to-int v0, v0

    .line 931
    rem-int/lit8 v3, v3, 0x20

    .line 932
    .line 933
    goto :goto_25

    .line 934
    :cond_2f
    move-object v6, v1

    .line 935
    const v15, 0xd800

    .line 936
    .line 937
    .line 938
    move/from16 v20, v3

    .line 939
    .line 940
    const/4 v0, 0x0

    .line 941
    const/4 v3, 0x0

    .line 942
    :goto_25
    const/16 v1, 0x12

    .line 943
    .line 944
    if-lt v5, v1, :cond_30

    .line 945
    .line 946
    const/16 v9, 0x31

    .line 947
    .line 948
    if-gt v5, v9, :cond_30

    .line 949
    .line 950
    add-int/lit8 v1, v24, 0x1

    .line 951
    .line 952
    aput v8, v12, v24

    .line 953
    .line 954
    move/from16 v24, v1

    .line 955
    .line 956
    :cond_30
    move v1, v0

    .line 957
    move v0, v8

    .line 958
    move/from16 v8, v20

    .line 959
    .line 960
    :goto_26
    add-int/lit8 v9, v22, 0x1

    .line 961
    .line 962
    aput v32, v28, v22

    .line 963
    .line 964
    add-int/lit8 v16, v22, 0x2

    .line 965
    .line 966
    and-int/lit16 v15, v2, 0x200

    .line 967
    .line 968
    if-eqz v15, :cond_31

    .line 969
    .line 970
    const/high16 v15, 0x20000000

    .line 971
    .line 972
    goto :goto_27

    .line 973
    :cond_31
    const/4 v15, 0x0

    .line 974
    :goto_27
    and-int/lit16 v2, v2, 0x100

    .line 975
    .line 976
    if-eqz v2, :cond_32

    .line 977
    .line 978
    const/high16 v2, 0x10000000

    .line 979
    .line 980
    goto :goto_28

    .line 981
    :cond_32
    const/4 v2, 0x0

    .line 982
    :goto_28
    or-int/2addr v2, v15

    .line 983
    shl-int/lit8 v5, v5, 0x14

    .line 984
    .line 985
    or-int/2addr v2, v5

    .line 986
    or-int/2addr v0, v2

    .line 987
    aput v0, v28, v9

    .line 988
    .line 989
    add-int/lit8 v22, v22, 0x3

    .line 990
    .line 991
    shl-int/lit8 v0, v3, 0x14

    .line 992
    .line 993
    or-int/2addr v0, v1

    .line 994
    aput v0, v28, v16

    .line 995
    .line 996
    move-object/from16 v0, p0

    .line 997
    .line 998
    move-object v1, v6

    .line 999
    move/from16 v5, v25

    .line 1000
    .line 1001
    move/from16 v2, v26

    .line 1002
    .line 1003
    move-object/from16 v6, v27

    .line 1004
    .line 1005
    move-object/from16 v3, v28

    .line 1006
    .line 1007
    move/from16 v15, v30

    .line 1008
    .line 1009
    move/from16 v9, v31

    .line 1010
    .line 1011
    goto/16 :goto_e

    .line 1012
    .line 1013
    :cond_33
    move-object/from16 v28, v3

    .line 1014
    .line 1015
    move-object/from16 v27, v6

    .line 1016
    .line 1017
    move/from16 v31, v9

    .line 1018
    .line 1019
    new-instance v5, Landroidx/datastore/preferences/protobuf/b0;

    .line 1020
    .line 1021
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/j0;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/a0;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v0

    .line 1025
    move-object/from16 v15, p1

    .line 1026
    .line 1027
    move-object/from16 v16, p2

    .line 1028
    .line 1029
    move-object/from16 v17, p3

    .line 1030
    .line 1031
    move-object/from16 v18, p4

    .line 1032
    .line 1033
    move-object/from16 v19, p5

    .line 1034
    .line 1035
    move v8, v10

    .line 1036
    move-object/from16 v7, v27

    .line 1037
    .line 1038
    move-object/from16 v6, v28

    .line 1039
    .line 1040
    move-object v10, v0

    .line 1041
    invoke-direct/range {v5 .. v19}, Landroidx/datastore/preferences/protobuf/b0;-><init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/a0;Z[IIILandroidx/datastore/preferences/protobuf/d0;Landroidx/datastore/preferences/protobuf/N;Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/x;Landroidx/datastore/preferences/protobuf/V;)V

    .line 1042
    .line 1043
    .line 1044
    return-object v5
.end method

.method public static p(I)J
    .locals 2

    .line 1
    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static q(JLjava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p0, p1}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static r(JLjava/lang/Object;)J
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p0, p1}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method public static x(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    const-string v2, "Field "

    .line 33
    .line 34
    const-string v3, " for "

    .line 35
    .line 36
    invoke-static {v2, p1, v3}, LA/i;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, " not found. Known fields are "

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1
.end method


# virtual methods
.method public final B(I)I
    .locals 1

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method public final C(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/t;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    sget-object v5, Landroidx/datastore/preferences/protobuf/b0;->p:Lsun/misc/Unsafe;

    .line 11
    .line 12
    const/4 v7, -0x1

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    :goto_0
    if-ge v8, v4, :cond_4

    .line 16
    .line 17
    invoke-virtual {v0, v8}, Landroidx/datastore/preferences/protobuf/b0;->B(I)I

    .line 18
    .line 19
    .line 20
    move-result v10

    .line 21
    aget v11, v3, v8

    .line 22
    .line 23
    invoke-static {v10}, Landroidx/datastore/preferences/protobuf/b0;->A(I)I

    .line 24
    .line 25
    .line 26
    move-result v12

    .line 27
    iget-boolean v13, v0, Landroidx/datastore/preferences/protobuf/b0;->g:Z

    .line 28
    .line 29
    const/4 v15, 0x1

    .line 30
    if-nez v13, :cond_1

    .line 31
    .line 32
    const/16 v13, 0x11

    .line 33
    .line 34
    if-gt v12, v13, :cond_1

    .line 35
    .line 36
    add-int/lit8 v13, v8, 0x2

    .line 37
    .line 38
    aget v13, v3, v13

    .line 39
    .line 40
    const v16, 0xfffff

    .line 41
    .line 42
    .line 43
    and-int v14, v13, v16

    .line 44
    .line 45
    if-eq v14, v7, :cond_0

    .line 46
    .line 47
    int-to-long v6, v14

    .line 48
    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    move v7, v14

    .line 53
    :cond_0
    ushr-int/lit8 v6, v13, 0x14

    .line 54
    .line 55
    shl-int v6, v15, v6

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const v16, 0xfffff

    .line 59
    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    :goto_1
    and-int v10, v10, v16

    .line 63
    .line 64
    int-to-long v13, v10

    .line 65
    packed-switch v12, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_2
    const/4 v12, 0x0

    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :pswitch_0
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v0, v8}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    invoke-virtual {v2, v11, v6, v10}, Landroidx/datastore/preferences/protobuf/t;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :pswitch_1
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_2

    .line 94
    .line 95
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v12

    .line 99
    invoke-virtual {v2, v11, v12, v13}, Landroidx/datastore/preferences/protobuf/t;->writeSInt64(IJ)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :pswitch_2
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_2

    .line 108
    .line 109
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeSInt32(II)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :pswitch_3
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_2

    .line 122
    .line 123
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v12

    .line 127
    invoke-virtual {v2, v11, v12, v13}, Landroidx/datastore/preferences/protobuf/t;->writeSFixed64(IJ)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :pswitch_4
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_2

    .line 136
    .line 137
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeSFixed32(II)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :pswitch_5
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_2

    .line 150
    .line 151
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeEnum(II)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :pswitch_6
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-eqz v6, :cond_2

    .line 164
    .line 165
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeUInt32(II)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :pswitch_7
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_2

    .line 178
    .line 179
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    check-cast v6, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 184
    .line 185
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :pswitch_8
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-eqz v6, :cond_2

    .line 194
    .line 195
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-virtual {v0, v8}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    invoke-virtual {v2, v11, v6, v10}, Landroidx/datastore/preferences/protobuf/t;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_2

    .line 207
    .line 208
    :pswitch_9
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    if-eqz v6, :cond_2

    .line 213
    .line 214
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-static {v11, v6, v2}, Landroidx/datastore/preferences/protobuf/b0;->E(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/t;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_2

    .line 222
    .line 223
    :pswitch_a
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    if-eqz v6, :cond_2

    .line 228
    .line 229
    sget-object v6, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 230
    .line 231
    invoke-virtual {v6, v1, v13, v14}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    check-cast v6, Ljava/lang/Boolean;

    .line 236
    .line 237
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeBool(IZ)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_2

    .line 245
    .line 246
    :pswitch_b
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    if-eqz v6, :cond_2

    .line 251
    .line 252
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeFixed32(II)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_2

    .line 260
    .line 261
    :pswitch_c
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    if-eqz v6, :cond_2

    .line 266
    .line 267
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 268
    .line 269
    .line 270
    move-result-wide v12

    .line 271
    invoke-virtual {v2, v11, v12, v13}, Landroidx/datastore/preferences/protobuf/t;->writeFixed64(IJ)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_2

    .line 275
    .line 276
    :pswitch_d
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    if-eqz v6, :cond_2

    .line 281
    .line 282
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeInt32(II)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_2

    .line 290
    .line 291
    :pswitch_e
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    if-eqz v6, :cond_2

    .line 296
    .line 297
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 298
    .line 299
    .line 300
    move-result-wide v12

    .line 301
    invoke-virtual {v2, v11, v12, v13}, Landroidx/datastore/preferences/protobuf/t;->writeUInt64(IJ)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :pswitch_f
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 307
    .line 308
    .line 309
    move-result v6

    .line 310
    if-eqz v6, :cond_2

    .line 311
    .line 312
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 313
    .line 314
    .line 315
    move-result-wide v12

    .line 316
    invoke-virtual {v2, v11, v12, v13}, Landroidx/datastore/preferences/protobuf/t;->writeInt64(IJ)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_2

    .line 320
    .line 321
    :pswitch_10
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    if-eqz v6, :cond_2

    .line 326
    .line 327
    sget-object v6, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 328
    .line 329
    invoke-virtual {v6, v1, v13, v14}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    check-cast v6, Ljava/lang/Float;

    .line 334
    .line 335
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 336
    .line 337
    .line 338
    move-result v6

    .line 339
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeFloat(IF)V

    .line 340
    .line 341
    .line 342
    goto/16 :goto_2

    .line 343
    .line 344
    :pswitch_11
    invoke-virtual {v0, v1, v11, v8}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 345
    .line 346
    .line 347
    move-result v6

    .line 348
    if-eqz v6, :cond_2

    .line 349
    .line 350
    sget-object v6, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 351
    .line 352
    invoke-virtual {v6, v1, v13, v14}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    check-cast v6, Ljava/lang/Double;

    .line 357
    .line 358
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 359
    .line 360
    .line 361
    move-result-wide v12

    .line 362
    invoke-virtual {v2, v11, v12, v13}, Landroidx/datastore/preferences/protobuf/t;->writeDouble(ID)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_2

    .line 366
    .line 367
    :pswitch_12
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    invoke-virtual {v0, v2, v11, v6, v8}, Landroidx/datastore/preferences/protobuf/b0;->D(Landroidx/datastore/preferences/protobuf/t;ILjava/lang/Object;I)V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_2

    .line 375
    .line 376
    :pswitch_13
    aget v6, v3, v8

    .line 377
    .line 378
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v10

    .line 382
    check-cast v10, Ljava/util/List;

    .line 383
    .line 384
    invoke-virtual {v0, v8}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 385
    .line 386
    .line 387
    move-result-object v11

    .line 388
    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/n0;->writeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_2

    .line 392
    .line 393
    :pswitch_14
    aget v6, v3, v8

    .line 394
    .line 395
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v10

    .line 399
    check-cast v10, Ljava/util/List;

    .line 400
    .line 401
    invoke-static {v6, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/n0;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_2

    .line 405
    .line 406
    :pswitch_15
    aget v6, v3, v8

    .line 407
    .line 408
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v10

    .line 412
    check-cast v10, Ljava/util/List;

    .line 413
    .line 414
    invoke-static {v6, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/n0;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 415
    .line 416
    .line 417
    goto/16 :goto_2

    .line 418
    .line 419
    :pswitch_16
    aget v6, v3, v8

    .line 420
    .line 421
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v10

    .line 425
    check-cast v10, Ljava/util/List;

    .line 426
    .line 427
    invoke-static {v6, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/n0;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 428
    .line 429
    .line 430
    goto/16 :goto_2

    .line 431
    .line 432
    :pswitch_17
    aget v6, v3, v8

    .line 433
    .line 434
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v10

    .line 438
    check-cast v10, Ljava/util/List;

    .line 439
    .line 440
    invoke-static {v6, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/n0;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_2

    .line 444
    .line 445
    :pswitch_18
    aget v6, v3, v8

    .line 446
    .line 447
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v10

    .line 451
    check-cast v10, Ljava/util/List;

    .line 452
    .line 453
    invoke-static {v6, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/n0;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 454
    .line 455
    .line 456
    goto/16 :goto_2

    .line 457
    .line 458
    :pswitch_19
    aget v6, v3, v8

    .line 459
    .line 460
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v10

    .line 464
    check-cast v10, Ljava/util/List;

    .line 465
    .line 466
    invoke-static {v6, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/n0;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 467
    .line 468
    .line 469
    goto/16 :goto_2

    .line 470
    .line 471
    :pswitch_1a
    aget v6, v3, v8

    .line 472
    .line 473
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v10

    .line 477
    check-cast v10, Ljava/util/List;

    .line 478
    .line 479
    invoke-static {v6, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/n0;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_2

    .line 483
    .line 484
    :pswitch_1b
    aget v6, v3, v8

    .line 485
    .line 486
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v10

    .line 490
    check-cast v10, Ljava/util/List;

    .line 491
    .line 492
    invoke-static {v6, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/n0;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_2

    .line 496
    .line 497
    :pswitch_1c
    aget v6, v3, v8

    .line 498
    .line 499
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v10

    .line 503
    check-cast v10, Ljava/util/List;

    .line 504
    .line 505
    invoke-static {v6, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/n0;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 506
    .line 507
    .line 508
    goto/16 :goto_2

    .line 509
    .line 510
    :pswitch_1d
    aget v6, v3, v8

    .line 511
    .line 512
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v10

    .line 516
    check-cast v10, Ljava/util/List;

    .line 517
    .line 518
    invoke-static {v6, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/n0;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 519
    .line 520
    .line 521
    goto/16 :goto_2

    .line 522
    .line 523
    :pswitch_1e
    aget v6, v3, v8

    .line 524
    .line 525
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v10

    .line 529
    check-cast v10, Ljava/util/List;

    .line 530
    .line 531
    invoke-static {v6, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/n0;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_2

    .line 535
    .line 536
    :pswitch_1f
    aget v6, v3, v8

    .line 537
    .line 538
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v10

    .line 542
    check-cast v10, Ljava/util/List;

    .line 543
    .line 544
    invoke-static {v6, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/n0;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 545
    .line 546
    .line 547
    goto/16 :goto_2

    .line 548
    .line 549
    :pswitch_20
    aget v6, v3, v8

    .line 550
    .line 551
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v10

    .line 555
    check-cast v10, Ljava/util/List;

    .line 556
    .line 557
    invoke-static {v6, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/n0;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_2

    .line 561
    .line 562
    :pswitch_21
    aget v6, v3, v8

    .line 563
    .line 564
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v10

    .line 568
    check-cast v10, Ljava/util/List;

    .line 569
    .line 570
    invoke-static {v6, v10, v2, v15}, Landroidx/datastore/preferences/protobuf/n0;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 571
    .line 572
    .line 573
    goto/16 :goto_2

    .line 574
    .line 575
    :pswitch_22
    aget v6, v3, v8

    .line 576
    .line 577
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v10

    .line 581
    check-cast v10, Ljava/util/List;

    .line 582
    .line 583
    const/4 v11, 0x0

    .line 584
    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/n0;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 585
    .line 586
    .line 587
    :goto_3
    move v12, v11

    .line 588
    goto/16 :goto_4

    .line 589
    .line 590
    :pswitch_23
    const/4 v11, 0x0

    .line 591
    aget v6, v3, v8

    .line 592
    .line 593
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v10

    .line 597
    check-cast v10, Ljava/util/List;

    .line 598
    .line 599
    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/n0;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 600
    .line 601
    .line 602
    goto :goto_3

    .line 603
    :pswitch_24
    const/4 v11, 0x0

    .line 604
    aget v6, v3, v8

    .line 605
    .line 606
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v10

    .line 610
    check-cast v10, Ljava/util/List;

    .line 611
    .line 612
    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/n0;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 613
    .line 614
    .line 615
    goto :goto_3

    .line 616
    :pswitch_25
    const/4 v11, 0x0

    .line 617
    aget v6, v3, v8

    .line 618
    .line 619
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v10

    .line 623
    check-cast v10, Ljava/util/List;

    .line 624
    .line 625
    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/n0;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 626
    .line 627
    .line 628
    goto :goto_3

    .line 629
    :pswitch_26
    const/4 v11, 0x0

    .line 630
    aget v6, v3, v8

    .line 631
    .line 632
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v10

    .line 636
    check-cast v10, Ljava/util/List;

    .line 637
    .line 638
    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/n0;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 639
    .line 640
    .line 641
    goto :goto_3

    .line 642
    :pswitch_27
    const/4 v11, 0x0

    .line 643
    aget v6, v3, v8

    .line 644
    .line 645
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v10

    .line 649
    check-cast v10, Ljava/util/List;

    .line 650
    .line 651
    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/n0;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 652
    .line 653
    .line 654
    goto :goto_3

    .line 655
    :pswitch_28
    aget v6, v3, v8

    .line 656
    .line 657
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v10

    .line 661
    check-cast v10, Ljava/util/List;

    .line 662
    .line 663
    invoke-static {v6, v10, v2}, Landroidx/datastore/preferences/protobuf/n0;->writeBytesList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;)V

    .line 664
    .line 665
    .line 666
    goto/16 :goto_2

    .line 667
    .line 668
    :pswitch_29
    aget v6, v3, v8

    .line 669
    .line 670
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v10

    .line 674
    check-cast v10, Ljava/util/List;

    .line 675
    .line 676
    invoke-virtual {v0, v8}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 677
    .line 678
    .line 679
    move-result-object v11

    .line 680
    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/n0;->writeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 681
    .line 682
    .line 683
    goto/16 :goto_2

    .line 684
    .line 685
    :pswitch_2a
    aget v6, v3, v8

    .line 686
    .line 687
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v10

    .line 691
    check-cast v10, Ljava/util/List;

    .line 692
    .line 693
    invoke-static {v6, v10, v2}, Landroidx/datastore/preferences/protobuf/n0;->writeStringList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;)V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_2

    .line 697
    .line 698
    :pswitch_2b
    aget v6, v3, v8

    .line 699
    .line 700
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v10

    .line 704
    check-cast v10, Ljava/util/List;

    .line 705
    .line 706
    const/4 v12, 0x0

    .line 707
    invoke-static {v6, v10, v2, v12}, Landroidx/datastore/preferences/protobuf/n0;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 708
    .line 709
    .line 710
    goto/16 :goto_4

    .line 711
    .line 712
    :pswitch_2c
    const/4 v12, 0x0

    .line 713
    aget v6, v3, v8

    .line 714
    .line 715
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v10

    .line 719
    check-cast v10, Ljava/util/List;

    .line 720
    .line 721
    invoke-static {v6, v10, v2, v12}, Landroidx/datastore/preferences/protobuf/n0;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 722
    .line 723
    .line 724
    goto/16 :goto_4

    .line 725
    .line 726
    :pswitch_2d
    const/4 v12, 0x0

    .line 727
    aget v6, v3, v8

    .line 728
    .line 729
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v10

    .line 733
    check-cast v10, Ljava/util/List;

    .line 734
    .line 735
    invoke-static {v6, v10, v2, v12}, Landroidx/datastore/preferences/protobuf/n0;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 736
    .line 737
    .line 738
    goto/16 :goto_4

    .line 739
    .line 740
    :pswitch_2e
    const/4 v12, 0x0

    .line 741
    aget v6, v3, v8

    .line 742
    .line 743
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v10

    .line 747
    check-cast v10, Ljava/util/List;

    .line 748
    .line 749
    invoke-static {v6, v10, v2, v12}, Landroidx/datastore/preferences/protobuf/n0;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 750
    .line 751
    .line 752
    goto/16 :goto_4

    .line 753
    .line 754
    :pswitch_2f
    const/4 v12, 0x0

    .line 755
    aget v6, v3, v8

    .line 756
    .line 757
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v10

    .line 761
    check-cast v10, Ljava/util/List;

    .line 762
    .line 763
    invoke-static {v6, v10, v2, v12}, Landroidx/datastore/preferences/protobuf/n0;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 764
    .line 765
    .line 766
    goto/16 :goto_4

    .line 767
    .line 768
    :pswitch_30
    const/4 v12, 0x0

    .line 769
    aget v6, v3, v8

    .line 770
    .line 771
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v10

    .line 775
    check-cast v10, Ljava/util/List;

    .line 776
    .line 777
    invoke-static {v6, v10, v2, v12}, Landroidx/datastore/preferences/protobuf/n0;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 778
    .line 779
    .line 780
    goto/16 :goto_4

    .line 781
    .line 782
    :pswitch_31
    const/4 v12, 0x0

    .line 783
    aget v6, v3, v8

    .line 784
    .line 785
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v10

    .line 789
    check-cast v10, Ljava/util/List;

    .line 790
    .line 791
    invoke-static {v6, v10, v2, v12}, Landroidx/datastore/preferences/protobuf/n0;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 792
    .line 793
    .line 794
    goto/16 :goto_4

    .line 795
    .line 796
    :pswitch_32
    const/4 v12, 0x0

    .line 797
    aget v6, v3, v8

    .line 798
    .line 799
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v10

    .line 803
    check-cast v10, Ljava/util/List;

    .line 804
    .line 805
    invoke-static {v6, v10, v2, v12}, Landroidx/datastore/preferences/protobuf/n0;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 806
    .line 807
    .line 808
    goto/16 :goto_4

    .line 809
    .line 810
    :pswitch_33
    const/4 v12, 0x0

    .line 811
    and-int/2addr v6, v9

    .line 812
    if-eqz v6, :cond_3

    .line 813
    .line 814
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v6

    .line 818
    invoke-virtual {v0, v8}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 819
    .line 820
    .line 821
    move-result-object v10

    .line 822
    invoke-virtual {v2, v11, v6, v10}, Landroidx/datastore/preferences/protobuf/t;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 823
    .line 824
    .line 825
    goto/16 :goto_4

    .line 826
    .line 827
    :pswitch_34
    const/4 v12, 0x0

    .line 828
    and-int/2addr v6, v9

    .line 829
    if-eqz v6, :cond_3

    .line 830
    .line 831
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 832
    .line 833
    .line 834
    move-result-wide v13

    .line 835
    invoke-virtual {v2, v11, v13, v14}, Landroidx/datastore/preferences/protobuf/t;->writeSInt64(IJ)V

    .line 836
    .line 837
    .line 838
    goto/16 :goto_4

    .line 839
    .line 840
    :pswitch_35
    const/4 v12, 0x0

    .line 841
    and-int/2addr v6, v9

    .line 842
    if-eqz v6, :cond_3

    .line 843
    .line 844
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 845
    .line 846
    .line 847
    move-result v6

    .line 848
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeSInt32(II)V

    .line 849
    .line 850
    .line 851
    goto/16 :goto_4

    .line 852
    .line 853
    :pswitch_36
    const/4 v12, 0x0

    .line 854
    and-int/2addr v6, v9

    .line 855
    if-eqz v6, :cond_3

    .line 856
    .line 857
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 858
    .line 859
    .line 860
    move-result-wide v13

    .line 861
    invoke-virtual {v2, v11, v13, v14}, Landroidx/datastore/preferences/protobuf/t;->writeSFixed64(IJ)V

    .line 862
    .line 863
    .line 864
    goto/16 :goto_4

    .line 865
    .line 866
    :pswitch_37
    const/4 v12, 0x0

    .line 867
    and-int/2addr v6, v9

    .line 868
    if-eqz v6, :cond_3

    .line 869
    .line 870
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 871
    .line 872
    .line 873
    move-result v6

    .line 874
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeSFixed32(II)V

    .line 875
    .line 876
    .line 877
    goto/16 :goto_4

    .line 878
    .line 879
    :pswitch_38
    const/4 v12, 0x0

    .line 880
    and-int/2addr v6, v9

    .line 881
    if-eqz v6, :cond_3

    .line 882
    .line 883
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 884
    .line 885
    .line 886
    move-result v6

    .line 887
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeEnum(II)V

    .line 888
    .line 889
    .line 890
    goto/16 :goto_4

    .line 891
    .line 892
    :pswitch_39
    const/4 v12, 0x0

    .line 893
    and-int/2addr v6, v9

    .line 894
    if-eqz v6, :cond_3

    .line 895
    .line 896
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 897
    .line 898
    .line 899
    move-result v6

    .line 900
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeUInt32(II)V

    .line 901
    .line 902
    .line 903
    goto/16 :goto_4

    .line 904
    .line 905
    :pswitch_3a
    const/4 v12, 0x0

    .line 906
    and-int/2addr v6, v9

    .line 907
    if-eqz v6, :cond_3

    .line 908
    .line 909
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v6

    .line 913
    check-cast v6, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 914
    .line 915
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 916
    .line 917
    .line 918
    goto/16 :goto_4

    .line 919
    .line 920
    :pswitch_3b
    const/4 v12, 0x0

    .line 921
    and-int/2addr v6, v9

    .line 922
    if-eqz v6, :cond_3

    .line 923
    .line 924
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    move-result-object v6

    .line 928
    invoke-virtual {v0, v8}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 929
    .line 930
    .line 931
    move-result-object v10

    .line 932
    invoke-virtual {v2, v11, v6, v10}, Landroidx/datastore/preferences/protobuf/t;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 933
    .line 934
    .line 935
    goto/16 :goto_4

    .line 936
    .line 937
    :pswitch_3c
    const/4 v12, 0x0

    .line 938
    and-int/2addr v6, v9

    .line 939
    if-eqz v6, :cond_3

    .line 940
    .line 941
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    move-result-object v6

    .line 945
    invoke-static {v11, v6, v2}, Landroidx/datastore/preferences/protobuf/b0;->E(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/t;)V

    .line 946
    .line 947
    .line 948
    goto :goto_4

    .line 949
    :pswitch_3d
    const/4 v12, 0x0

    .line 950
    and-int/2addr v6, v9

    .line 951
    if-eqz v6, :cond_3

    .line 952
    .line 953
    sget-object v6, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 954
    .line 955
    invoke-virtual {v6, v1, v13, v14}, Landroidx/datastore/preferences/protobuf/G0;->getBoolean(Ljava/lang/Object;J)Z

    .line 956
    .line 957
    .line 958
    move-result v6

    .line 959
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeBool(IZ)V

    .line 960
    .line 961
    .line 962
    goto :goto_4

    .line 963
    :pswitch_3e
    const/4 v12, 0x0

    .line 964
    and-int/2addr v6, v9

    .line 965
    if-eqz v6, :cond_3

    .line 966
    .line 967
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 968
    .line 969
    .line 970
    move-result v6

    .line 971
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeFixed32(II)V

    .line 972
    .line 973
    .line 974
    goto :goto_4

    .line 975
    :pswitch_3f
    const/4 v12, 0x0

    .line 976
    and-int/2addr v6, v9

    .line 977
    if-eqz v6, :cond_3

    .line 978
    .line 979
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 980
    .line 981
    .line 982
    move-result-wide v13

    .line 983
    invoke-virtual {v2, v11, v13, v14}, Landroidx/datastore/preferences/protobuf/t;->writeFixed64(IJ)V

    .line 984
    .line 985
    .line 986
    goto :goto_4

    .line 987
    :pswitch_40
    const/4 v12, 0x0

    .line 988
    and-int/2addr v6, v9

    .line 989
    if-eqz v6, :cond_3

    .line 990
    .line 991
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 992
    .line 993
    .line 994
    move-result v6

    .line 995
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeInt32(II)V

    .line 996
    .line 997
    .line 998
    goto :goto_4

    .line 999
    :pswitch_41
    const/4 v12, 0x0

    .line 1000
    and-int/2addr v6, v9

    .line 1001
    if-eqz v6, :cond_3

    .line 1002
    .line 1003
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1004
    .line 1005
    .line 1006
    move-result-wide v13

    .line 1007
    invoke-virtual {v2, v11, v13, v14}, Landroidx/datastore/preferences/protobuf/t;->writeUInt64(IJ)V

    .line 1008
    .line 1009
    .line 1010
    goto :goto_4

    .line 1011
    :pswitch_42
    const/4 v12, 0x0

    .line 1012
    and-int/2addr v6, v9

    .line 1013
    if-eqz v6, :cond_3

    .line 1014
    .line 1015
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1016
    .line 1017
    .line 1018
    move-result-wide v13

    .line 1019
    invoke-virtual {v2, v11, v13, v14}, Landroidx/datastore/preferences/protobuf/t;->writeInt64(IJ)V

    .line 1020
    .line 1021
    .line 1022
    goto :goto_4

    .line 1023
    :pswitch_43
    const/4 v12, 0x0

    .line 1024
    and-int/2addr v6, v9

    .line 1025
    if-eqz v6, :cond_3

    .line 1026
    .line 1027
    sget-object v6, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1028
    .line 1029
    invoke-virtual {v6, v1, v13, v14}, Landroidx/datastore/preferences/protobuf/G0;->getFloat(Ljava/lang/Object;J)F

    .line 1030
    .line 1031
    .line 1032
    move-result v6

    .line 1033
    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/t;->writeFloat(IF)V

    .line 1034
    .line 1035
    .line 1036
    goto :goto_4

    .line 1037
    :pswitch_44
    const/4 v12, 0x0

    .line 1038
    and-int/2addr v6, v9

    .line 1039
    if-eqz v6, :cond_3

    .line 1040
    .line 1041
    sget-object v6, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1042
    .line 1043
    invoke-virtual {v6, v1, v13, v14}, Landroidx/datastore/preferences/protobuf/G0;->getDouble(Ljava/lang/Object;J)D

    .line 1044
    .line 1045
    .line 1046
    move-result-wide v13

    .line 1047
    invoke-virtual {v2, v11, v13, v14}, Landroidx/datastore/preferences/protobuf/t;->writeDouble(ID)V

    .line 1048
    .line 1049
    .line 1050
    :cond_3
    :goto_4
    add-int/lit8 v8, v8, 0x3

    .line 1051
    .line 1052
    goto/16 :goto_0

    .line 1053
    .line 1054
    :cond_4
    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/b0;->m:Landroidx/datastore/preferences/protobuf/w0;

    .line 1055
    .line 1056
    check-cast v3, Landroidx/datastore/preferences/protobuf/y0;

    .line 1057
    .line 1058
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1059
    .line 1060
    .line 1061
    check-cast v1, Landroidx/datastore/preferences/protobuf/F;

    .line 1062
    .line 1063
    iget-object v1, v1, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 1064
    .line 1065
    invoke-virtual {v1, v2}, Landroidx/datastore/preferences/protobuf/x0;->writeTo(Landroidx/datastore/preferences/protobuf/L0;)V

    .line 1066
    .line 1067
    .line 1068
    return-void

    .line 1069
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final D(Landroidx/datastore/preferences/protobuf/t;ILjava/lang/Object;I)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p4}, Landroidx/datastore/preferences/protobuf/b0;->d(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->n:Landroidx/datastore/preferences/protobuf/V;

    .line 8
    .line 9
    invoke-virtual {v0, p4}, Landroidx/datastore/preferences/protobuf/V;->forMapMetadata(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/T;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-virtual {v0, p3}, Landroidx/datastore/preferences/protobuf/V;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p1, p2, p4, p3}, Landroidx/datastore/preferences/protobuf/t;->writeMap(ILandroidx/datastore/preferences/protobuf/T;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public final b(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    .line 2
    .line 3
    aget p3, p3, p1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/b0;->B(I)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const v0, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr p3, v0

    .line 13
    int-to-long v0, p3

    .line 14
    sget-object p3, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 15
    .line 16
    invoke-virtual {p3, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/b0;->c(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object p1, v0, p1

    .line 8
    .line 9
    return-object p1
.end method

.method public final e(I)Landroidx/datastore/preferences/protobuf/l0;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object v1, v0, p1

    .line 8
    .line 9
    check-cast v1, Landroidx/datastore/preferences/protobuf/l0;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/h0;->getInstance()Landroidx/datastore/preferences/protobuf/h0;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    add-int/lit8 v2, p1, 0x1

    .line 19
    .line 20
    aget-object v2, v0, v2

    .line 21
    .line 22
    check-cast v2, Ljava/lang/Class;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroidx/datastore/preferences/protobuf/h0;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/l0;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    aput-object v1, v0, p1

    .line 29
    .line 30
    return-object v1
.end method

.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    const/4 v4, 0x1

    .line 7
    if-ge v3, v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/b0;->B(I)I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const v6, 0xfffff

    .line 14
    .line 15
    .line 16
    and-int v7, v5, v6

    .line 17
    .line 18
    int-to-long v7, v7

    .line 19
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/b0;->A(I)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    packed-switch v5, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    .line 29
    .line 30
    aget v5, v0, v5

    .line 31
    .line 32
    and-int/2addr v5, v6

    .line 33
    int-to-long v5, v5

    .line 34
    sget-object v9, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 35
    .line 36
    invoke-virtual {v9, p1, v5, v6}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    invoke-virtual {v9, p2, v5, v6}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-ne v10, v5, :cond_0

    .line 45
    .line 46
    invoke-virtual {v9, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v9, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/n0;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_0

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_0
    move v4, v2

    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :pswitch_1
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 66
    .line 67
    invoke-virtual {v4, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v5, v4}, Landroidx/datastore/preferences/protobuf/n0;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :pswitch_2
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 82
    .line 83
    invoke-virtual {v4, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v4, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v5, v4}, Landroidx/datastore/preferences/protobuf/n0;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :pswitch_3
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_0

    .line 102
    .line 103
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 104
    .line 105
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/n0;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_0

    .line 118
    .line 119
    goto/16 :goto_1

    .line 120
    .line 121
    :pswitch_4
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_0

    .line 126
    .line 127
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 128
    .line 129
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 130
    .line 131
    .line 132
    move-result-wide v9

    .line 133
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 134
    .line 135
    .line 136
    move-result-wide v5

    .line 137
    cmp-long v5, v9, v5

    .line 138
    .line 139
    if-nez v5, :cond_0

    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    :pswitch_5
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_0

    .line 148
    .line 149
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 150
    .line 151
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-ne v6, v5, :cond_0

    .line 160
    .line 161
    goto/16 :goto_1

    .line 162
    .line 163
    :pswitch_6
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_0

    .line 168
    .line 169
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 170
    .line 171
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 172
    .line 173
    .line 174
    move-result-wide v9

    .line 175
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 176
    .line 177
    .line 178
    move-result-wide v5

    .line 179
    cmp-long v5, v9, v5

    .line 180
    .line 181
    if-nez v5, :cond_0

    .line 182
    .line 183
    goto/16 :goto_1

    .line 184
    .line 185
    :pswitch_7
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-eqz v5, :cond_0

    .line 190
    .line 191
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 192
    .line 193
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-ne v6, v5, :cond_0

    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :pswitch_8
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-eqz v5, :cond_0

    .line 210
    .line 211
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 212
    .line 213
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-ne v6, v5, :cond_0

    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :pswitch_9
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_0

    .line 230
    .line 231
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 232
    .line 233
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-ne v6, v5, :cond_0

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :pswitch_a
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    if-eqz v5, :cond_0

    .line 250
    .line 251
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 252
    .line 253
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/n0;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-eqz v5, :cond_0

    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :pswitch_b
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_0

    .line 274
    .line 275
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 276
    .line 277
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/n0;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-eqz v5, :cond_0

    .line 290
    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :pswitch_c
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_0

    .line 298
    .line 299
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 300
    .line 301
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/n0;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    if-eqz v5, :cond_0

    .line 314
    .line 315
    goto/16 :goto_1

    .line 316
    .line 317
    :pswitch_d
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-eqz v5, :cond_0

    .line 322
    .line 323
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 324
    .line 325
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getBoolean(Ljava/lang/Object;J)Z

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getBoolean(Ljava/lang/Object;J)Z

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    if-ne v6, v5, :cond_0

    .line 334
    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :pswitch_e
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-eqz v5, :cond_0

    .line 342
    .line 343
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 344
    .line 345
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    if-ne v6, v5, :cond_0

    .line 354
    .line 355
    goto/16 :goto_1

    .line 356
    .line 357
    :pswitch_f
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    if-eqz v5, :cond_0

    .line 362
    .line 363
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 364
    .line 365
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 366
    .line 367
    .line 368
    move-result-wide v9

    .line 369
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 370
    .line 371
    .line 372
    move-result-wide v5

    .line 373
    cmp-long v5, v9, v5

    .line 374
    .line 375
    if-nez v5, :cond_0

    .line 376
    .line 377
    goto/16 :goto_1

    .line 378
    .line 379
    :pswitch_10
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    if-eqz v5, :cond_0

    .line 384
    .line 385
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 386
    .line 387
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    if-ne v6, v5, :cond_0

    .line 396
    .line 397
    goto :goto_1

    .line 398
    :pswitch_11
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    if-eqz v5, :cond_0

    .line 403
    .line 404
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 405
    .line 406
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 407
    .line 408
    .line 409
    move-result-wide v9

    .line 410
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 411
    .line 412
    .line 413
    move-result-wide v5

    .line 414
    cmp-long v5, v9, v5

    .line 415
    .line 416
    if-nez v5, :cond_0

    .line 417
    .line 418
    goto :goto_1

    .line 419
    :pswitch_12
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v5

    .line 423
    if-eqz v5, :cond_0

    .line 424
    .line 425
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 426
    .line 427
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 428
    .line 429
    .line 430
    move-result-wide v9

    .line 431
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 432
    .line 433
    .line 434
    move-result-wide v5

    .line 435
    cmp-long v5, v9, v5

    .line 436
    .line 437
    if-nez v5, :cond_0

    .line 438
    .line 439
    goto :goto_1

    .line 440
    :pswitch_13
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v5

    .line 444
    if-eqz v5, :cond_0

    .line 445
    .line 446
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 447
    .line 448
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getFloat(Ljava/lang/Object;J)F

    .line 449
    .line 450
    .line 451
    move-result v6

    .line 452
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 453
    .line 454
    .line 455
    move-result v6

    .line 456
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getFloat(Ljava/lang/Object;J)F

    .line 457
    .line 458
    .line 459
    move-result v5

    .line 460
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 461
    .line 462
    .line 463
    move-result v5

    .line 464
    if-ne v6, v5, :cond_0

    .line 465
    .line 466
    goto :goto_1

    .line 467
    :pswitch_14
    invoke-virtual {p0, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->a(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v5

    .line 471
    if-eqz v5, :cond_0

    .line 472
    .line 473
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 474
    .line 475
    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getDouble(Ljava/lang/Object;J)D

    .line 476
    .line 477
    .line 478
    move-result-wide v9

    .line 479
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 480
    .line 481
    .line 482
    move-result-wide v9

    .line 483
    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getDouble(Ljava/lang/Object;J)D

    .line 484
    .line 485
    .line 486
    move-result-wide v5

    .line 487
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 488
    .line 489
    .line 490
    move-result-wide v5

    .line 491
    cmp-long v5, v9, v5

    .line 492
    .line 493
    if-nez v5, :cond_0

    .line 494
    .line 495
    :goto_1
    if-nez v4, :cond_1

    .line 496
    .line 497
    goto :goto_2

    .line 498
    :cond_1
    add-int/lit8 v3, v3, 0x3

    .line 499
    .line 500
    goto/16 :goto_0

    .line 501
    .line 502
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->m:Landroidx/datastore/preferences/protobuf/w0;

    .line 503
    .line 504
    check-cast v0, Landroidx/datastore/preferences/protobuf/y0;

    .line 505
    .line 506
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    .line 508
    .line 509
    check-cast p1, Landroidx/datastore/preferences/protobuf/F;

    .line 510
    .line 511
    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    .line 515
    .line 516
    check-cast p2, Landroidx/datastore/preferences/protobuf/F;

    .line 517
    .line 518
    iget-object p2, p2, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 519
    .line 520
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/x0;->equals(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result p1

    .line 524
    if-nez p1, :cond_3

    .line 525
    .line 526
    :goto_2
    return v2

    .line 527
    :cond_3
    return v4

    .line 528
    nop

    .line 529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    sget-object v3, Landroidx/datastore/preferences/protobuf/b0;->p:Lsun/misc/Unsafe;

    .line 7
    .line 8
    const/4 v5, -0x1

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    :goto_0
    iget-object v9, v0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    .line 13
    .line 14
    array-length v10, v9

    .line 15
    if-ge v6, v10, :cond_9

    .line 16
    .line 17
    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/b0;->B(I)I

    .line 18
    .line 19
    .line 20
    move-result v10

    .line 21
    aget v11, v9, v6

    .line 22
    .line 23
    invoke-static {v10}, Landroidx/datastore/preferences/protobuf/b0;->A(I)I

    .line 24
    .line 25
    .line 26
    move-result v12

    .line 27
    const/16 v13, 0x11

    .line 28
    .line 29
    const v14, 0xfffff

    .line 30
    .line 31
    .line 32
    if-gt v12, v13, :cond_0

    .line 33
    .line 34
    add-int/lit8 v13, v6, 0x2

    .line 35
    .line 36
    aget v9, v9, v13

    .line 37
    .line 38
    and-int v13, v9, v14

    .line 39
    .line 40
    ushr-int/lit8 v9, v9, 0x14

    .line 41
    .line 42
    shl-int v9, v2, v9

    .line 43
    .line 44
    move/from16 v16, v14

    .line 45
    .line 46
    if-eq v13, v5, :cond_1

    .line 47
    .line 48
    int-to-long v14, v13

    .line 49
    invoke-virtual {v3, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    move v5, v13

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    move/from16 v16, v14

    .line 56
    .line 57
    const/4 v9, 0x0

    .line 58
    :cond_1
    :goto_1
    and-int v10, v10, v16

    .line 59
    .line 60
    int-to-long v13, v10

    .line 61
    move v15, v5

    .line 62
    const/4 v10, 0x0

    .line 63
    const-wide/16 v4, 0x0

    .line 64
    .line 65
    packed-switch v12, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :pswitch_0
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Landroidx/datastore/preferences/protobuf/a0;

    .line 80
    .line 81
    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-static {v11, v4, v5}, Landroidx/datastore/preferences/protobuf/s;->a(ILandroidx/datastore/preferences/protobuf/a0;Landroidx/datastore/preferences/protobuf/l0;)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    :goto_2
    add-int/2addr v7, v4

    .line 90
    :cond_2
    :goto_3
    const/4 v12, 0x0

    .line 91
    goto/16 :goto_9

    .line 92
    .line 93
    :pswitch_1
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_2

    .line 98
    .line 99
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v4

    .line 103
    invoke-static {v11, v4, v5}, Landroidx/datastore/preferences/protobuf/s;->computeSInt64Size(IJ)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    goto :goto_2

    .line 108
    :pswitch_2
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_2

    .line 113
    .line 114
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/s;->computeSInt32Size(II)I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    goto :goto_2

    .line 123
    :pswitch_3
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-eqz v9, :cond_2

    .line 128
    .line 129
    invoke-static {v11, v4, v5}, Landroidx/datastore/preferences/protobuf/s;->computeSFixed64Size(IJ)I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    goto :goto_2

    .line 134
    :pswitch_4
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_2

    .line 139
    .line 140
    const/4 v10, 0x0

    .line 141
    invoke-static {v11, v10}, Landroidx/datastore/preferences/protobuf/s;->computeSFixed32Size(II)I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    goto :goto_2

    .line 146
    :pswitch_5
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_2

    .line 151
    .line 152
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/s;->computeEnumSize(II)I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    goto :goto_2

    .line 161
    :pswitch_6
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_2

    .line 166
    .line 167
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/s;->computeUInt32Size(II)I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    goto :goto_2

    .line 176
    :pswitch_7
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-eqz v4, :cond_2

    .line 181
    .line 182
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 187
    .line 188
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/s;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    goto :goto_2

    .line 193
    :pswitch_8
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_2

    .line 198
    .line 199
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    sget-object v9, Landroidx/datastore/preferences/protobuf/n0;->a:Ljava/lang/Class;

    .line 208
    .line 209
    check-cast v4, Landroidx/datastore/preferences/protobuf/a0;

    .line 210
    .line 211
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    check-cast v4, Landroidx/datastore/preferences/protobuf/b;

    .line 216
    .line 217
    invoke-virtual {v4, v5}, Landroidx/datastore/preferences/protobuf/b;->a(Landroidx/datastore/preferences/protobuf/l0;)I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    invoke-static {v4, v4, v9, v7}, LA/i;->A(IIII)I

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    goto/16 :goto_3

    .line 226
    .line 227
    :pswitch_9
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_2

    .line 232
    .line 233
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    instance-of v5, v4, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 238
    .line 239
    if-eqz v5, :cond_3

    .line 240
    .line 241
    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 242
    .line 243
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/s;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    :goto_4
    add-int/2addr v4, v7

    .line 248
    move v7, v4

    .line 249
    goto/16 :goto_3

    .line 250
    .line 251
    :cond_3
    check-cast v4, Ljava/lang/String;

    .line 252
    .line 253
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/s;->computeStringSize(ILjava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    goto :goto_4

    .line 258
    :pswitch_a
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    if-eqz v4, :cond_2

    .line 263
    .line 264
    invoke-static {v11, v2}, Landroidx/datastore/preferences/protobuf/s;->computeBoolSize(IZ)I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    goto/16 :goto_2

    .line 269
    .line 270
    :pswitch_b
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_2

    .line 275
    .line 276
    const/4 v10, 0x0

    .line 277
    invoke-static {v11, v10}, Landroidx/datastore/preferences/protobuf/s;->computeFixed32Size(II)I

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    goto/16 :goto_2

    .line 282
    .line 283
    :pswitch_c
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 284
    .line 285
    .line 286
    move-result v9

    .line 287
    if-eqz v9, :cond_2

    .line 288
    .line 289
    invoke-static {v11, v4, v5}, Landroidx/datastore/preferences/protobuf/s;->computeFixed64Size(IJ)I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    goto/16 :goto_2

    .line 294
    .line 295
    :pswitch_d
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    if-eqz v4, :cond_2

    .line 300
    .line 301
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/s;->computeInt32Size(II)I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    goto/16 :goto_2

    .line 310
    .line 311
    :pswitch_e
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    if-eqz v4, :cond_2

    .line 316
    .line 317
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 318
    .line 319
    .line 320
    move-result-wide v4

    .line 321
    invoke-static {v11, v4, v5}, Landroidx/datastore/preferences/protobuf/s;->computeUInt64Size(IJ)I

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    goto/16 :goto_2

    .line 326
    .line 327
    :pswitch_f
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-eqz v4, :cond_2

    .line 332
    .line 333
    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 334
    .line 335
    .line 336
    move-result-wide v4

    .line 337
    invoke-static {v11, v4, v5}, Landroidx/datastore/preferences/protobuf/s;->computeInt64Size(IJ)I

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    goto/16 :goto_2

    .line 342
    .line 343
    :pswitch_10
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 344
    .line 345
    .line 346
    move-result v4

    .line 347
    if-eqz v4, :cond_2

    .line 348
    .line 349
    invoke-static {v11, v10}, Landroidx/datastore/preferences/protobuf/s;->computeFloatSize(IF)I

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    goto/16 :goto_2

    .line 354
    .line 355
    :pswitch_11
    invoke-virtual {v0, v1, v11, v6}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    if-eqz v4, :cond_2

    .line 360
    .line 361
    const-wide/16 v4, 0x0

    .line 362
    .line 363
    invoke-static {v11, v4, v5}, Landroidx/datastore/preferences/protobuf/s;->computeDoubleSize(ID)I

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    goto/16 :goto_2

    .line 368
    .line 369
    :pswitch_12
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/b0;->d(I)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    iget-object v9, v0, Landroidx/datastore/preferences/protobuf/b0;->n:Landroidx/datastore/preferences/protobuf/V;

    .line 378
    .line 379
    invoke-virtual {v9, v11, v4, v5}, Landroidx/datastore/preferences/protobuf/V;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    goto/16 :goto_2

    .line 384
    .line 385
    :pswitch_13
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    check-cast v4, Ljava/util/List;

    .line 390
    .line 391
    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    sget-object v9, Landroidx/datastore/preferences/protobuf/n0;->a:Ljava/lang/Class;

    .line 396
    .line 397
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 398
    .line 399
    .line 400
    move-result v9

    .line 401
    if-nez v9, :cond_4

    .line 402
    .line 403
    :goto_5
    const/4 v10, 0x0

    .line 404
    goto :goto_7

    .line 405
    :cond_4
    const/4 v10, 0x0

    .line 406
    const/4 v12, 0x0

    .line 407
    :goto_6
    if-ge v10, v9, :cond_5

    .line 408
    .line 409
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v13

    .line 413
    check-cast v13, Landroidx/datastore/preferences/protobuf/a0;

    .line 414
    .line 415
    invoke-static {v11, v13, v5}, Landroidx/datastore/preferences/protobuf/s;->a(ILandroidx/datastore/preferences/protobuf/a0;Landroidx/datastore/preferences/protobuf/l0;)I

    .line 416
    .line 417
    .line 418
    move-result v13

    .line 419
    add-int/2addr v12, v13

    .line 420
    add-int/2addr v10, v2

    .line 421
    goto :goto_6

    .line 422
    :cond_5
    move v10, v12

    .line 423
    :goto_7
    add-int/2addr v7, v10

    .line 424
    goto/16 :goto_3

    .line 425
    .line 426
    :pswitch_14
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    check-cast v4, Ljava/util/List;

    .line 431
    .line 432
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/n0;->p(Ljava/util/List;)I

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-lez v4, :cond_2

    .line 437
    .line 438
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    invoke-static {v4, v5, v4, v7}, LA/i;->A(IIII)I

    .line 443
    .line 444
    .line 445
    move-result v7

    .line 446
    goto/16 :goto_3

    .line 447
    .line 448
    :pswitch_15
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    check-cast v4, Ljava/util/List;

    .line 453
    .line 454
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/n0;->n(Ljava/util/List;)I

    .line 455
    .line 456
    .line 457
    move-result v4

    .line 458
    if-lez v4, :cond_2

    .line 459
    .line 460
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 461
    .line 462
    .line 463
    move-result v5

    .line 464
    invoke-static {v4, v5, v4, v7}, LA/i;->A(IIII)I

    .line 465
    .line 466
    .line 467
    move-result v7

    .line 468
    goto/16 :goto_3

    .line 469
    .line 470
    :pswitch_16
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    check-cast v4, Ljava/util/List;

    .line 475
    .line 476
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/n0;->g(Ljava/util/List;)I

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    if-lez v4, :cond_2

    .line 481
    .line 482
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    invoke-static {v4, v5, v4, v7}, LA/i;->A(IIII)I

    .line 487
    .line 488
    .line 489
    move-result v7

    .line 490
    goto/16 :goto_3

    .line 491
    .line 492
    :pswitch_17
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    check-cast v4, Ljava/util/List;

    .line 497
    .line 498
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/n0;->e(Ljava/util/List;)I

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    if-lez v4, :cond_2

    .line 503
    .line 504
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    invoke-static {v4, v5, v4, v7}, LA/i;->A(IIII)I

    .line 509
    .line 510
    .line 511
    move-result v7

    .line 512
    goto/16 :goto_3

    .line 513
    .line 514
    :pswitch_18
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    check-cast v4, Ljava/util/List;

    .line 519
    .line 520
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/n0;->c(Ljava/util/List;)I

    .line 521
    .line 522
    .line 523
    move-result v4

    .line 524
    if-lez v4, :cond_2

    .line 525
    .line 526
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 527
    .line 528
    .line 529
    move-result v5

    .line 530
    invoke-static {v4, v5, v4, v7}, LA/i;->A(IIII)I

    .line 531
    .line 532
    .line 533
    move-result v7

    .line 534
    goto/16 :goto_3

    .line 535
    .line 536
    :pswitch_19
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v4

    .line 540
    check-cast v4, Ljava/util/List;

    .line 541
    .line 542
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/n0;->s(Ljava/util/List;)I

    .line 543
    .line 544
    .line 545
    move-result v4

    .line 546
    if-lez v4, :cond_2

    .line 547
    .line 548
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 549
    .line 550
    .line 551
    move-result v5

    .line 552
    invoke-static {v4, v5, v4, v7}, LA/i;->A(IIII)I

    .line 553
    .line 554
    .line 555
    move-result v7

    .line 556
    goto/16 :goto_3

    .line 557
    .line 558
    :pswitch_1a
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v4

    .line 562
    check-cast v4, Ljava/util/List;

    .line 563
    .line 564
    sget-object v5, Landroidx/datastore/preferences/protobuf/n0;->a:Ljava/lang/Class;

    .line 565
    .line 566
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 567
    .line 568
    .line 569
    move-result v4

    .line 570
    if-lez v4, :cond_2

    .line 571
    .line 572
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 573
    .line 574
    .line 575
    move-result v5

    .line 576
    invoke-static {v4, v5, v4, v7}, LA/i;->A(IIII)I

    .line 577
    .line 578
    .line 579
    move-result v7

    .line 580
    goto/16 :goto_3

    .line 581
    .line 582
    :pswitch_1b
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    check-cast v4, Ljava/util/List;

    .line 587
    .line 588
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/n0;->e(Ljava/util/List;)I

    .line 589
    .line 590
    .line 591
    move-result v4

    .line 592
    if-lez v4, :cond_2

    .line 593
    .line 594
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 595
    .line 596
    .line 597
    move-result v5

    .line 598
    invoke-static {v4, v5, v4, v7}, LA/i;->A(IIII)I

    .line 599
    .line 600
    .line 601
    move-result v7

    .line 602
    goto/16 :goto_3

    .line 603
    .line 604
    :pswitch_1c
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v4

    .line 608
    check-cast v4, Ljava/util/List;

    .line 609
    .line 610
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/n0;->g(Ljava/util/List;)I

    .line 611
    .line 612
    .line 613
    move-result v4

    .line 614
    if-lez v4, :cond_2

    .line 615
    .line 616
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 617
    .line 618
    .line 619
    move-result v5

    .line 620
    invoke-static {v4, v5, v4, v7}, LA/i;->A(IIII)I

    .line 621
    .line 622
    .line 623
    move-result v7

    .line 624
    goto/16 :goto_3

    .line 625
    .line 626
    :pswitch_1d
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v4

    .line 630
    check-cast v4, Ljava/util/List;

    .line 631
    .line 632
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/n0;->i(Ljava/util/List;)I

    .line 633
    .line 634
    .line 635
    move-result v4

    .line 636
    if-lez v4, :cond_2

    .line 637
    .line 638
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 639
    .line 640
    .line 641
    move-result v5

    .line 642
    invoke-static {v4, v5, v4, v7}, LA/i;->A(IIII)I

    .line 643
    .line 644
    .line 645
    move-result v7

    .line 646
    goto/16 :goto_3

    .line 647
    .line 648
    :pswitch_1e
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    check-cast v4, Ljava/util/List;

    .line 653
    .line 654
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/n0;->u(Ljava/util/List;)I

    .line 655
    .line 656
    .line 657
    move-result v4

    .line 658
    if-lez v4, :cond_2

    .line 659
    .line 660
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 661
    .line 662
    .line 663
    move-result v5

    .line 664
    invoke-static {v4, v5, v4, v7}, LA/i;->A(IIII)I

    .line 665
    .line 666
    .line 667
    move-result v7

    .line 668
    goto/16 :goto_3

    .line 669
    .line 670
    :pswitch_1f
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v4

    .line 674
    check-cast v4, Ljava/util/List;

    .line 675
    .line 676
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/n0;->k(Ljava/util/List;)I

    .line 677
    .line 678
    .line 679
    move-result v4

    .line 680
    if-lez v4, :cond_2

    .line 681
    .line 682
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 683
    .line 684
    .line 685
    move-result v5

    .line 686
    invoke-static {v4, v5, v4, v7}, LA/i;->A(IIII)I

    .line 687
    .line 688
    .line 689
    move-result v7

    .line 690
    goto/16 :goto_3

    .line 691
    .line 692
    :pswitch_20
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v4

    .line 696
    check-cast v4, Ljava/util/List;

    .line 697
    .line 698
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/n0;->e(Ljava/util/List;)I

    .line 699
    .line 700
    .line 701
    move-result v4

    .line 702
    if-lez v4, :cond_2

    .line 703
    .line 704
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 705
    .line 706
    .line 707
    move-result v5

    .line 708
    invoke-static {v4, v5, v4, v7}, LA/i;->A(IIII)I

    .line 709
    .line 710
    .line 711
    move-result v7

    .line 712
    goto/16 :goto_3

    .line 713
    .line 714
    :pswitch_21
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    check-cast v4, Ljava/util/List;

    .line 719
    .line 720
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/n0;->g(Ljava/util/List;)I

    .line 721
    .line 722
    .line 723
    move-result v4

    .line 724
    if-lez v4, :cond_2

    .line 725
    .line 726
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 727
    .line 728
    .line 729
    move-result v5

    .line 730
    invoke-static {v4, v5, v4, v7}, LA/i;->A(IIII)I

    .line 731
    .line 732
    .line 733
    move-result v7

    .line 734
    goto/16 :goto_3

    .line 735
    .line 736
    :pswitch_22
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v4

    .line 740
    check-cast v4, Ljava/util/List;

    .line 741
    .line 742
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/n0;->o(ILjava/util/List;)I

    .line 743
    .line 744
    .line 745
    move-result v4

    .line 746
    goto/16 :goto_2

    .line 747
    .line 748
    :pswitch_23
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v4

    .line 752
    check-cast v4, Ljava/util/List;

    .line 753
    .line 754
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/n0;->m(ILjava/util/List;)I

    .line 755
    .line 756
    .line 757
    move-result v4

    .line 758
    goto/16 :goto_2

    .line 759
    .line 760
    :pswitch_24
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v4

    .line 764
    check-cast v4, Ljava/util/List;

    .line 765
    .line 766
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/n0;->f(ILjava/util/List;)I

    .line 767
    .line 768
    .line 769
    move-result v4

    .line 770
    goto/16 :goto_2

    .line 771
    .line 772
    :pswitch_25
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v4

    .line 776
    check-cast v4, Ljava/util/List;

    .line 777
    .line 778
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/n0;->d(ILjava/util/List;)I

    .line 779
    .line 780
    .line 781
    move-result v4

    .line 782
    goto/16 :goto_2

    .line 783
    .line 784
    :pswitch_26
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v4

    .line 788
    check-cast v4, Ljava/util/List;

    .line 789
    .line 790
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/n0;->b(ILjava/util/List;)I

    .line 791
    .line 792
    .line 793
    move-result v4

    .line 794
    goto/16 :goto_2

    .line 795
    .line 796
    :pswitch_27
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v4

    .line 800
    check-cast v4, Ljava/util/List;

    .line 801
    .line 802
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/n0;->r(ILjava/util/List;)I

    .line 803
    .line 804
    .line 805
    move-result v4

    .line 806
    goto/16 :goto_2

    .line 807
    .line 808
    :pswitch_28
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v4

    .line 812
    check-cast v4, Ljava/util/List;

    .line 813
    .line 814
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/n0;->a(ILjava/util/List;)I

    .line 815
    .line 816
    .line 817
    move-result v4

    .line 818
    goto/16 :goto_2

    .line 819
    .line 820
    :pswitch_29
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v4

    .line 824
    check-cast v4, Ljava/util/List;

    .line 825
    .line 826
    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 827
    .line 828
    .line 829
    move-result-object v5

    .line 830
    invoke-static {v11, v4, v5}, Landroidx/datastore/preferences/protobuf/n0;->l(ILjava/util/List;Landroidx/datastore/preferences/protobuf/l0;)I

    .line 831
    .line 832
    .line 833
    move-result v4

    .line 834
    goto/16 :goto_2

    .line 835
    .line 836
    :pswitch_2a
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v4

    .line 840
    check-cast v4, Ljava/util/List;

    .line 841
    .line 842
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/n0;->q(ILjava/util/List;)I

    .line 843
    .line 844
    .line 845
    move-result v4

    .line 846
    goto/16 :goto_2

    .line 847
    .line 848
    :pswitch_2b
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v4

    .line 852
    check-cast v4, Ljava/util/List;

    .line 853
    .line 854
    sget-object v5, Landroidx/datastore/preferences/protobuf/n0;->a:Ljava/lang/Class;

    .line 855
    .line 856
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 857
    .line 858
    .line 859
    move-result v4

    .line 860
    if-nez v4, :cond_6

    .line 861
    .line 862
    goto/16 :goto_5

    .line 863
    .line 864
    :cond_6
    invoke-static {v11, v2}, Landroidx/datastore/preferences/protobuf/s;->computeBoolSize(IZ)I

    .line 865
    .line 866
    .line 867
    move-result v5

    .line 868
    mul-int v10, v5, v4

    .line 869
    .line 870
    goto/16 :goto_7

    .line 871
    .line 872
    :pswitch_2c
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v4

    .line 876
    check-cast v4, Ljava/util/List;

    .line 877
    .line 878
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/n0;->d(ILjava/util/List;)I

    .line 879
    .line 880
    .line 881
    move-result v4

    .line 882
    goto/16 :goto_2

    .line 883
    .line 884
    :pswitch_2d
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    move-result-object v4

    .line 888
    check-cast v4, Ljava/util/List;

    .line 889
    .line 890
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/n0;->f(ILjava/util/List;)I

    .line 891
    .line 892
    .line 893
    move-result v4

    .line 894
    goto/16 :goto_2

    .line 895
    .line 896
    :pswitch_2e
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v4

    .line 900
    check-cast v4, Ljava/util/List;

    .line 901
    .line 902
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/n0;->h(ILjava/util/List;)I

    .line 903
    .line 904
    .line 905
    move-result v4

    .line 906
    goto/16 :goto_2

    .line 907
    .line 908
    :pswitch_2f
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v4

    .line 912
    check-cast v4, Ljava/util/List;

    .line 913
    .line 914
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/n0;->t(ILjava/util/List;)I

    .line 915
    .line 916
    .line 917
    move-result v4

    .line 918
    goto/16 :goto_2

    .line 919
    .line 920
    :pswitch_30
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v4

    .line 924
    check-cast v4, Ljava/util/List;

    .line 925
    .line 926
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/n0;->j(ILjava/util/List;)I

    .line 927
    .line 928
    .line 929
    move-result v4

    .line 930
    goto/16 :goto_2

    .line 931
    .line 932
    :pswitch_31
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v4

    .line 936
    check-cast v4, Ljava/util/List;

    .line 937
    .line 938
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/n0;->d(ILjava/util/List;)I

    .line 939
    .line 940
    .line 941
    move-result v4

    .line 942
    goto/16 :goto_2

    .line 943
    .line 944
    :pswitch_32
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    move-result-object v4

    .line 948
    check-cast v4, Ljava/util/List;

    .line 949
    .line 950
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/n0;->f(ILjava/util/List;)I

    .line 951
    .line 952
    .line 953
    move-result v4

    .line 954
    goto/16 :goto_2

    .line 955
    .line 956
    :pswitch_33
    and-int v4, v8, v9

    .line 957
    .line 958
    if-eqz v4, :cond_2

    .line 959
    .line 960
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 961
    .line 962
    .line 963
    move-result-object v4

    .line 964
    check-cast v4, Landroidx/datastore/preferences/protobuf/a0;

    .line 965
    .line 966
    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 967
    .line 968
    .line 969
    move-result-object v5

    .line 970
    invoke-static {v11, v4, v5}, Landroidx/datastore/preferences/protobuf/s;->a(ILandroidx/datastore/preferences/protobuf/a0;Landroidx/datastore/preferences/protobuf/l0;)I

    .line 971
    .line 972
    .line 973
    move-result v4

    .line 974
    goto/16 :goto_2

    .line 975
    .line 976
    :pswitch_34
    and-int v4, v8, v9

    .line 977
    .line 978
    if-eqz v4, :cond_2

    .line 979
    .line 980
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 981
    .line 982
    .line 983
    move-result-wide v4

    .line 984
    invoke-static {v11, v4, v5}, Landroidx/datastore/preferences/protobuf/s;->computeSInt64Size(IJ)I

    .line 985
    .line 986
    .line 987
    move-result v4

    .line 988
    goto/16 :goto_2

    .line 989
    .line 990
    :pswitch_35
    and-int v4, v8, v9

    .line 991
    .line 992
    if-eqz v4, :cond_2

    .line 993
    .line 994
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 995
    .line 996
    .line 997
    move-result v4

    .line 998
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/s;->computeSInt32Size(II)I

    .line 999
    .line 1000
    .line 1001
    move-result v4

    .line 1002
    goto/16 :goto_2

    .line 1003
    .line 1004
    :pswitch_36
    and-int/2addr v9, v8

    .line 1005
    if-eqz v9, :cond_2

    .line 1006
    .line 1007
    invoke-static {v11, v4, v5}, Landroidx/datastore/preferences/protobuf/s;->computeSFixed64Size(IJ)I

    .line 1008
    .line 1009
    .line 1010
    move-result v4

    .line 1011
    goto/16 :goto_2

    .line 1012
    .line 1013
    :pswitch_37
    and-int v4, v8, v9

    .line 1014
    .line 1015
    if-eqz v4, :cond_2

    .line 1016
    .line 1017
    const/4 v10, 0x0

    .line 1018
    invoke-static {v11, v10}, Landroidx/datastore/preferences/protobuf/s;->computeSFixed32Size(II)I

    .line 1019
    .line 1020
    .line 1021
    move-result v4

    .line 1022
    goto/16 :goto_2

    .line 1023
    .line 1024
    :pswitch_38
    and-int v4, v8, v9

    .line 1025
    .line 1026
    if-eqz v4, :cond_2

    .line 1027
    .line 1028
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1029
    .line 1030
    .line 1031
    move-result v4

    .line 1032
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/s;->computeEnumSize(II)I

    .line 1033
    .line 1034
    .line 1035
    move-result v4

    .line 1036
    goto/16 :goto_2

    .line 1037
    .line 1038
    :pswitch_39
    and-int v4, v8, v9

    .line 1039
    .line 1040
    if-eqz v4, :cond_2

    .line 1041
    .line 1042
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1043
    .line 1044
    .line 1045
    move-result v4

    .line 1046
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/s;->computeUInt32Size(II)I

    .line 1047
    .line 1048
    .line 1049
    move-result v4

    .line 1050
    goto/16 :goto_2

    .line 1051
    .line 1052
    :pswitch_3a
    and-int v4, v8, v9

    .line 1053
    .line 1054
    if-eqz v4, :cond_2

    .line 1055
    .line 1056
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v4

    .line 1060
    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1061
    .line 1062
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/s;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 1063
    .line 1064
    .line 1065
    move-result v4

    .line 1066
    goto/16 :goto_2

    .line 1067
    .line 1068
    :pswitch_3b
    and-int v4, v8, v9

    .line 1069
    .line 1070
    if-eqz v4, :cond_2

    .line 1071
    .line 1072
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v4

    .line 1076
    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v5

    .line 1080
    sget-object v9, Landroidx/datastore/preferences/protobuf/n0;->a:Ljava/lang/Class;

    .line 1081
    .line 1082
    check-cast v4, Landroidx/datastore/preferences/protobuf/a0;

    .line 1083
    .line 1084
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    .line 1085
    .line 1086
    .line 1087
    move-result v9

    .line 1088
    check-cast v4, Landroidx/datastore/preferences/protobuf/b;

    .line 1089
    .line 1090
    invoke-virtual {v4, v5}, Landroidx/datastore/preferences/protobuf/b;->a(Landroidx/datastore/preferences/protobuf/l0;)I

    .line 1091
    .line 1092
    .line 1093
    move-result v4

    .line 1094
    invoke-static {v4, v4, v9, v7}, LA/i;->A(IIII)I

    .line 1095
    .line 1096
    .line 1097
    move-result v7

    .line 1098
    goto/16 :goto_3

    .line 1099
    .line 1100
    :pswitch_3c
    and-int v4, v8, v9

    .line 1101
    .line 1102
    if-eqz v4, :cond_2

    .line 1103
    .line 1104
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v4

    .line 1108
    instance-of v5, v4, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1109
    .line 1110
    if-eqz v5, :cond_7

    .line 1111
    .line 1112
    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1113
    .line 1114
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/s;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    .line 1115
    .line 1116
    .line 1117
    move-result v4

    .line 1118
    goto/16 :goto_4

    .line 1119
    .line 1120
    :cond_7
    check-cast v4, Ljava/lang/String;

    .line 1121
    .line 1122
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/s;->computeStringSize(ILjava/lang/String;)I

    .line 1123
    .line 1124
    .line 1125
    move-result v4

    .line 1126
    goto/16 :goto_4

    .line 1127
    .line 1128
    :pswitch_3d
    and-int v4, v8, v9

    .line 1129
    .line 1130
    if-eqz v4, :cond_2

    .line 1131
    .line 1132
    invoke-static {v11, v2}, Landroidx/datastore/preferences/protobuf/s;->computeBoolSize(IZ)I

    .line 1133
    .line 1134
    .line 1135
    move-result v4

    .line 1136
    goto/16 :goto_2

    .line 1137
    .line 1138
    :pswitch_3e
    and-int v4, v8, v9

    .line 1139
    .line 1140
    if-eqz v4, :cond_2

    .line 1141
    .line 1142
    const/4 v12, 0x0

    .line 1143
    invoke-static {v11, v12}, Landroidx/datastore/preferences/protobuf/s;->computeFixed32Size(II)I

    .line 1144
    .line 1145
    .line 1146
    move-result v4

    .line 1147
    :goto_8
    add-int/2addr v7, v4

    .line 1148
    goto :goto_9

    .line 1149
    :pswitch_3f
    const/4 v12, 0x0

    .line 1150
    and-int/2addr v9, v8

    .line 1151
    if-eqz v9, :cond_8

    .line 1152
    .line 1153
    invoke-static {v11, v4, v5}, Landroidx/datastore/preferences/protobuf/s;->computeFixed64Size(IJ)I

    .line 1154
    .line 1155
    .line 1156
    move-result v4

    .line 1157
    goto :goto_8

    .line 1158
    :pswitch_40
    const/4 v12, 0x0

    .line 1159
    and-int v4, v8, v9

    .line 1160
    .line 1161
    if-eqz v4, :cond_8

    .line 1162
    .line 1163
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1164
    .line 1165
    .line 1166
    move-result v4

    .line 1167
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/s;->computeInt32Size(II)I

    .line 1168
    .line 1169
    .line 1170
    move-result v4

    .line 1171
    goto :goto_8

    .line 1172
    :pswitch_41
    const/4 v12, 0x0

    .line 1173
    and-int v4, v8, v9

    .line 1174
    .line 1175
    if-eqz v4, :cond_8

    .line 1176
    .line 1177
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1178
    .line 1179
    .line 1180
    move-result-wide v4

    .line 1181
    invoke-static {v11, v4, v5}, Landroidx/datastore/preferences/protobuf/s;->computeUInt64Size(IJ)I

    .line 1182
    .line 1183
    .line 1184
    move-result v4

    .line 1185
    goto :goto_8

    .line 1186
    :pswitch_42
    const/4 v12, 0x0

    .line 1187
    and-int v4, v8, v9

    .line 1188
    .line 1189
    if-eqz v4, :cond_8

    .line 1190
    .line 1191
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1192
    .line 1193
    .line 1194
    move-result-wide v4

    .line 1195
    invoke-static {v11, v4, v5}, Landroidx/datastore/preferences/protobuf/s;->computeInt64Size(IJ)I

    .line 1196
    .line 1197
    .line 1198
    move-result v4

    .line 1199
    goto :goto_8

    .line 1200
    :pswitch_43
    const/4 v12, 0x0

    .line 1201
    and-int v4, v8, v9

    .line 1202
    .line 1203
    if-eqz v4, :cond_8

    .line 1204
    .line 1205
    invoke-static {v11, v10}, Landroidx/datastore/preferences/protobuf/s;->computeFloatSize(IF)I

    .line 1206
    .line 1207
    .line 1208
    move-result v4

    .line 1209
    goto :goto_8

    .line 1210
    :pswitch_44
    const/4 v12, 0x0

    .line 1211
    and-int v4, v8, v9

    .line 1212
    .line 1213
    if-eqz v4, :cond_8

    .line 1214
    .line 1215
    const-wide/16 v4, 0x0

    .line 1216
    .line 1217
    invoke-static {v11, v4, v5}, Landroidx/datastore/preferences/protobuf/s;->computeDoubleSize(ID)I

    .line 1218
    .line 1219
    .line 1220
    move-result v4

    .line 1221
    goto :goto_8

    .line 1222
    :cond_8
    :goto_9
    add-int/lit8 v6, v6, 0x3

    .line 1223
    .line 1224
    move v5, v15

    .line 1225
    goto/16 :goto_0

    .line 1226
    .line 1227
    :cond_9
    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/b0;->m:Landroidx/datastore/preferences/protobuf/w0;

    .line 1228
    .line 1229
    check-cast v2, Landroidx/datastore/preferences/protobuf/y0;

    .line 1230
    .line 1231
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1232
    .line 1233
    .line 1234
    check-cast v1, Landroidx/datastore/preferences/protobuf/F;

    .line 1235
    .line 1236
    iget-object v1, v1, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 1237
    .line 1238
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/x0;->getSerializedSize()I

    .line 1239
    .line 1240
    .line 1241
    move-result v1

    .line 1242
    add-int/2addr v1, v7

    .line 1243
    return v1

    .line 1244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;)I
    .locals 14

    const/4 v0, 0x1

    .line 1
    sget-object v1, Landroidx/datastore/preferences/protobuf/b0;->p:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 2
    :goto_0
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    array-length v6, v5

    if-ge v3, v6, :cond_7

    .line 3
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/b0;->B(I)I

    move-result v6

    .line 4
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->A(I)I

    move-result v7

    .line 5
    aget v8, v5, v3

    const v9, 0xfffff

    and-int/2addr v6, v9

    int-to-long v9, v6

    .line 6
    sget-object v6, Landroidx/datastore/preferences/protobuf/FieldType;->e:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 7
    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v6

    if-lt v7, v6, :cond_0

    sget-object v6, Landroidx/datastore/preferences/protobuf/FieldType;->f:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 8
    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    move-result v6

    if-gt v7, v6, :cond_0

    add-int/lit8 v6, v3, 0x2

    aget v5, v5, v6

    :cond_0
    const-wide/16 v5, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_6

    .line 9
    :pswitch_0
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 10
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v5, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 11
    check-cast v5, Landroidx/datastore/preferences/protobuf/a0;

    .line 12
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    move-result-object v6

    .line 13
    invoke-static {v8, v5, v6}, Landroidx/datastore/preferences/protobuf/s;->a(ILandroidx/datastore/preferences/protobuf/a0;Landroidx/datastore/preferences/protobuf/l0;)I

    move-result v5

    :goto_1
    add-int/2addr v4, v5

    goto/16 :goto_6

    .line 14
    :pswitch_1
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 15
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v8, v5, v6}, Landroidx/datastore/preferences/protobuf/s;->computeSInt64Size(IJ)I

    move-result v5

    goto :goto_1

    .line 16
    :pswitch_2
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 17
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/s;->computeSInt32Size(II)I

    move-result v5

    goto :goto_1

    .line 18
    :pswitch_3
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 19
    invoke-static {v8, v12, v13}, Landroidx/datastore/preferences/protobuf/s;->computeSFixed64Size(IJ)I

    move-result v5

    goto :goto_1

    .line 20
    :pswitch_4
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 21
    invoke-static {v8, v2}, Landroidx/datastore/preferences/protobuf/s;->computeSFixed32Size(II)I

    move-result v5

    goto :goto_1

    .line 22
    :pswitch_5
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 23
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/s;->computeEnumSize(II)I

    move-result v5

    goto :goto_1

    .line 24
    :pswitch_6
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 25
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/s;->computeUInt32Size(II)I

    move-result v5

    goto :goto_1

    .line 26
    :pswitch_7
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 27
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v5, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 28
    check-cast v5, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 29
    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/s;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v5

    goto :goto_1

    .line 30
    :pswitch_8
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 31
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v5, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 32
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    move-result-object v6

    sget-object v7, Landroidx/datastore/preferences/protobuf/n0;->a:Ljava/lang/Class;

    .line 33
    check-cast v5, Landroidx/datastore/preferences/protobuf/a0;

    .line 34
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    move-result v7

    .line 35
    check-cast v5, Landroidx/datastore/preferences/protobuf/b;

    invoke-virtual {v5, v6}, Landroidx/datastore/preferences/protobuf/b;->a(Landroidx/datastore/preferences/protobuf/l0;)I

    move-result v5

    .line 36
    invoke-static {v5, v5, v7, v4}, LA/i;->A(IIII)I

    move-result v4

    goto/16 :goto_6

    .line 37
    :pswitch_9
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 38
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v5, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 39
    instance-of v6, v5, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v6, :cond_1

    .line 40
    check-cast v5, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/s;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v5

    :goto_2
    add-int/2addr v5, v4

    move v4, v5

    goto/16 :goto_6

    .line 41
    :cond_1
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/s;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    goto :goto_2

    .line 42
    :pswitch_a
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 43
    invoke-static {v8, v0}, Landroidx/datastore/preferences/protobuf/s;->computeBoolSize(IZ)I

    move-result v5

    goto/16 :goto_1

    .line 44
    :pswitch_b
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 45
    invoke-static {v8, v2}, Landroidx/datastore/preferences/protobuf/s;->computeFixed32Size(II)I

    move-result v5

    goto/16 :goto_1

    .line 46
    :pswitch_c
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 47
    invoke-static {v8, v12, v13}, Landroidx/datastore/preferences/protobuf/s;->computeFixed64Size(IJ)I

    move-result v5

    goto/16 :goto_1

    .line 48
    :pswitch_d
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 49
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/s;->computeInt32Size(II)I

    move-result v5

    goto/16 :goto_1

    .line 50
    :pswitch_e
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 51
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v8, v5, v6}, Landroidx/datastore/preferences/protobuf/s;->computeUInt64Size(IJ)I

    move-result v5

    goto/16 :goto_1

    .line 52
    :pswitch_f
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 53
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v8, v5, v6}, Landroidx/datastore/preferences/protobuf/s;->computeInt64Size(IJ)I

    move-result v5

    goto/16 :goto_1

    .line 54
    :pswitch_10
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 55
    invoke-static {v8, v11}, Landroidx/datastore/preferences/protobuf/s;->computeFloatSize(IF)I

    move-result v5

    goto/16 :goto_1

    .line 56
    :pswitch_11
    invoke-virtual {p0, p1, v8, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 57
    invoke-static {v8, v5, v6}, Landroidx/datastore/preferences/protobuf/s;->computeDoubleSize(ID)I

    move-result v5

    goto/16 :goto_1

    .line 58
    :pswitch_12
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v5, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 59
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/b0;->d(I)Ljava/lang/Object;

    move-result-object v6

    .line 60
    iget-object v7, p0, Landroidx/datastore/preferences/protobuf/b0;->n:Landroidx/datastore/preferences/protobuf/V;

    invoke-virtual {v7, v8, v5, v6}, Landroidx/datastore/preferences/protobuf/V;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    goto/16 :goto_1

    .line 61
    :pswitch_13
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    move-result-object v6

    .line 62
    sget-object v7, Landroidx/datastore/preferences/protobuf/n0;->a:Ljava/lang/Class;

    .line 63
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    move v10, v2

    goto :goto_4

    :cond_2
    move v9, v2

    move v10, v9

    :goto_3
    if-ge v9, v7, :cond_3

    .line 64
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/datastore/preferences/protobuf/a0;

    invoke-static {v8, v11, v6}, Landroidx/datastore/preferences/protobuf/s;->a(ILandroidx/datastore/preferences/protobuf/a0;Landroidx/datastore/preferences/protobuf/l0;)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v9, v0

    goto :goto_3

    :cond_3
    :goto_4
    add-int/2addr v4, v10

    goto/16 :goto_6

    .line 65
    :pswitch_14
    invoke-virtual {v1, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 66
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/n0;->p(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_6

    .line 67
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    move-result v6

    .line 68
    invoke-static {v5, v6, v5, v4}, LA/i;->A(IIII)I

    move-result v4

    goto/16 :goto_6

    .line 69
    :pswitch_15
    invoke-virtual {v1, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 70
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/n0;->n(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_6

    .line 71
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    move-result v6

    .line 72
    invoke-static {v5, v6, v5, v4}, LA/i;->A(IIII)I

    move-result v4

    goto/16 :goto_6

    .line 73
    :pswitch_16
    invoke-virtual {v1, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 74
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/n0;->g(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_6

    .line 75
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    move-result v6

    .line 76
    invoke-static {v5, v6, v5, v4}, LA/i;->A(IIII)I

    move-result v4

    goto/16 :goto_6

    .line 77
    :pswitch_17
    invoke-virtual {v1, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 78
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/n0;->e(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_6

    .line 79
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    move-result v6

    .line 80
    invoke-static {v5, v6, v5, v4}, LA/i;->A(IIII)I

    move-result v4

    goto/16 :goto_6

    .line 81
    :pswitch_18
    invoke-virtual {v1, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 82
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/n0;->c(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_6

    .line 83
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    move-result v6

    .line 84
    invoke-static {v5, v6, v5, v4}, LA/i;->A(IIII)I

    move-result v4

    goto/16 :goto_6

    .line 85
    :pswitch_19
    invoke-virtual {v1, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 86
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/n0;->s(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_6

    .line 87
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    move-result v6

    .line 88
    invoke-static {v5, v6, v5, v4}, LA/i;->A(IIII)I

    move-result v4

    goto/16 :goto_6

    .line 89
    :pswitch_1a
    invoke-virtual {v1, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 90
    sget-object v6, Landroidx/datastore/preferences/protobuf/n0;->a:Ljava/lang/Class;

    .line 91
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 92
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    move-result v6

    .line 93
    invoke-static {v5, v6, v5, v4}, LA/i;->A(IIII)I

    move-result v4

    goto/16 :goto_6

    .line 94
    :pswitch_1b
    invoke-virtual {v1, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 95
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/n0;->e(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_6

    .line 96
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    move-result v6

    .line 97
    invoke-static {v5, v6, v5, v4}, LA/i;->A(IIII)I

    move-result v4

    goto/16 :goto_6

    .line 98
    :pswitch_1c
    invoke-virtual {v1, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 99
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/n0;->g(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_6

    .line 100
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    move-result v6

    .line 101
    invoke-static {v5, v6, v5, v4}, LA/i;->A(IIII)I

    move-result v4

    goto/16 :goto_6

    .line 102
    :pswitch_1d
    invoke-virtual {v1, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 103
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/n0;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_6

    .line 104
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    move-result v6

    .line 105
    invoke-static {v5, v6, v5, v4}, LA/i;->A(IIII)I

    move-result v4

    goto/16 :goto_6

    .line 106
    :pswitch_1e
    invoke-virtual {v1, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 107
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/n0;->u(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_6

    .line 108
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    move-result v6

    .line 109
    invoke-static {v5, v6, v5, v4}, LA/i;->A(IIII)I

    move-result v4

    goto/16 :goto_6

    .line 110
    :pswitch_1f
    invoke-virtual {v1, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 111
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/n0;->k(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_6

    .line 112
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    move-result v6

    .line 113
    invoke-static {v5, v6, v5, v4}, LA/i;->A(IIII)I

    move-result v4

    goto/16 :goto_6

    .line 114
    :pswitch_20
    invoke-virtual {v1, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 115
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/n0;->e(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_6

    .line 116
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    move-result v6

    .line 117
    invoke-static {v5, v6, v5, v4}, LA/i;->A(IIII)I

    move-result v4

    goto/16 :goto_6

    .line 118
    :pswitch_21
    invoke-virtual {v1, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 119
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/n0;->g(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_6

    .line 120
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    move-result v6

    .line 121
    invoke-static {v5, v6, v5, v4}, LA/i;->A(IIII)I

    move-result v4

    goto/16 :goto_6

    .line 122
    :pswitch_22
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/n0;->o(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_1

    .line 123
    :pswitch_23
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 124
    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/n0;->m(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_1

    .line 125
    :pswitch_24
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/n0;->f(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_1

    .line 126
    :pswitch_25
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/n0;->d(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_1

    .line 127
    :pswitch_26
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 128
    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/n0;->b(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_1

    .line 129
    :pswitch_27
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 130
    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/n0;->r(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_1

    .line 131
    :pswitch_28
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 132
    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/n0;->a(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_1

    .line 133
    :pswitch_29
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    move-result-object v6

    .line 134
    invoke-static {v8, v5, v6}, Landroidx/datastore/preferences/protobuf/n0;->l(ILjava/util/List;Landroidx/datastore/preferences/protobuf/l0;)I

    move-result v5

    goto/16 :goto_1

    .line 135
    :pswitch_2a
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/n0;->q(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_1

    .line 136
    :pswitch_2b
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Landroidx/datastore/preferences/protobuf/n0;->a:Ljava/lang/Class;

    .line 137
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    move v6, v2

    goto :goto_5

    .line 138
    :cond_4
    invoke-static {v8, v0}, Landroidx/datastore/preferences/protobuf/s;->computeBoolSize(IZ)I

    move-result v6

    mul-int/2addr v6, v5

    :goto_5
    add-int/2addr v4, v6

    goto/16 :goto_6

    .line 139
    :pswitch_2c
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/n0;->d(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_1

    .line 140
    :pswitch_2d
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/n0;->f(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_1

    .line 141
    :pswitch_2e
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 142
    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/n0;->h(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_1

    .line 143
    :pswitch_2f
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/n0;->t(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_1

    .line 144
    :pswitch_30
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/n0;->j(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_1

    .line 145
    :pswitch_31
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/n0;->d(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_1

    .line 146
    :pswitch_32
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->j(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/n0;->f(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_1

    .line 147
    :pswitch_33
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 148
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v5, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 149
    check-cast v5, Landroidx/datastore/preferences/protobuf/a0;

    .line 150
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    move-result-object v6

    .line 151
    invoke-static {v8, v5, v6}, Landroidx/datastore/preferences/protobuf/s;->a(ILandroidx/datastore/preferences/protobuf/a0;Landroidx/datastore/preferences/protobuf/l0;)I

    move-result v5

    goto/16 :goto_1

    .line 152
    :pswitch_34
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 153
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v5, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 154
    invoke-static {v8, v5, v6}, Landroidx/datastore/preferences/protobuf/s;->computeSInt64Size(IJ)I

    move-result v5

    goto/16 :goto_1

    .line 155
    :pswitch_35
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 156
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v5, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    move-result v5

    .line 157
    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/s;->computeSInt32Size(II)I

    move-result v5

    goto/16 :goto_1

    .line 158
    :pswitch_36
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 159
    invoke-static {v8, v12, v13}, Landroidx/datastore/preferences/protobuf/s;->computeSFixed64Size(IJ)I

    move-result v5

    goto/16 :goto_1

    .line 160
    :pswitch_37
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 161
    invoke-static {v8, v2}, Landroidx/datastore/preferences/protobuf/s;->computeSFixed32Size(II)I

    move-result v5

    goto/16 :goto_1

    .line 162
    :pswitch_38
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 163
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v5, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    move-result v5

    .line 164
    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/s;->computeEnumSize(II)I

    move-result v5

    goto/16 :goto_1

    .line 165
    :pswitch_39
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 166
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v5, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    move-result v5

    .line 167
    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/s;->computeUInt32Size(II)I

    move-result v5

    goto/16 :goto_1

    .line 168
    :pswitch_3a
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 169
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v5, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 170
    check-cast v5, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 171
    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/s;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v5

    goto/16 :goto_1

    .line 172
    :pswitch_3b
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 173
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v5, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 174
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    move-result-object v6

    sget-object v7, Landroidx/datastore/preferences/protobuf/n0;->a:Ljava/lang/Class;

    .line 175
    check-cast v5, Landroidx/datastore/preferences/protobuf/a0;

    .line 176
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/s;->computeTagSize(I)I

    move-result v7

    .line 177
    check-cast v5, Landroidx/datastore/preferences/protobuf/b;

    invoke-virtual {v5, v6}, Landroidx/datastore/preferences/protobuf/b;->a(Landroidx/datastore/preferences/protobuf/l0;)I

    move-result v5

    .line 178
    invoke-static {v5, v5, v7, v4}, LA/i;->A(IIII)I

    move-result v4

    goto/16 :goto_6

    .line 179
    :pswitch_3c
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 180
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v5, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 181
    instance-of v6, v5, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v6, :cond_5

    .line 182
    check-cast v5, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/s;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v5

    goto/16 :goto_2

    .line 183
    :cond_5
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/s;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    goto/16 :goto_2

    .line 184
    :pswitch_3d
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 185
    invoke-static {v8, v0}, Landroidx/datastore/preferences/protobuf/s;->computeBoolSize(IZ)I

    move-result v5

    goto/16 :goto_1

    .line 186
    :pswitch_3e
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 187
    invoke-static {v8, v2}, Landroidx/datastore/preferences/protobuf/s;->computeFixed32Size(II)I

    move-result v5

    goto/16 :goto_1

    .line 188
    :pswitch_3f
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 189
    invoke-static {v8, v12, v13}, Landroidx/datastore/preferences/protobuf/s;->computeFixed64Size(IJ)I

    move-result v5

    goto/16 :goto_1

    .line 190
    :pswitch_40
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 191
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v5, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    move-result v5

    .line 192
    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/s;->computeInt32Size(II)I

    move-result v5

    goto/16 :goto_1

    .line 193
    :pswitch_41
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 194
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v5, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 195
    invoke-static {v8, v5, v6}, Landroidx/datastore/preferences/protobuf/s;->computeUInt64Size(IJ)I

    move-result v5

    goto/16 :goto_1

    .line 196
    :pswitch_42
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 197
    sget-object v5, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v5, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    .line 198
    invoke-static {v8, v5, v6}, Landroidx/datastore/preferences/protobuf/s;->computeInt64Size(IJ)I

    move-result v5

    goto/16 :goto_1

    .line 199
    :pswitch_43
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 200
    invoke-static {v8, v11}, Landroidx/datastore/preferences/protobuf/s;->computeFloatSize(IF)I

    move-result v5

    goto/16 :goto_1

    .line 201
    :pswitch_44
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 202
    invoke-static {v8, v5, v6}, Landroidx/datastore/preferences/protobuf/s;->computeDoubleSize(ID)I

    move-result v5

    goto/16 :goto_1

    :cond_6
    :goto_6
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    .line 203
    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->m:Landroidx/datastore/preferences/protobuf/w0;

    check-cast v0, Landroidx/datastore/preferences/protobuf/y0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    check-cast p1, Landroidx/datastore/preferences/protobuf/F;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 205
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/x0;->getSerializedSize()I

    move-result p1

    add-int/2addr p1, v4

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/b0;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/b0;->g(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/b0;->f(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final h(ILjava/lang/Object;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/b0;->g:Z

    .line 2
    .line 3
    const v1, 0xfffff

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/b0;->B(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    and-int v0, p1, v1

    .line 14
    .line 15
    int-to-long v0, v0

    .line 16
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/b0;->A(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    packed-switch p1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :pswitch_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 32
    .line 33
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :pswitch_1
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 42
    .line 43
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 44
    .line 45
    .line 46
    move-result-wide p1

    .line 47
    cmp-long p1, p1, v3

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :pswitch_2
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 54
    .line 55
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :pswitch_3
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 64
    .line 65
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    cmp-long p1, p1, v3

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :pswitch_4
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 76
    .line 77
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :pswitch_5
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 86
    .line 87
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :pswitch_6
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 96
    .line 97
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :pswitch_7
    sget-object p1, Landroidx/datastore/preferences/protobuf/ByteString;->e:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 106
    .line 107
    sget-object v3, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 108
    .line 109
    invoke-virtual {v3, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    xor-int/2addr p1, v2

    .line 118
    return p1

    .line 119
    :pswitch_8
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 120
    .line 121
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_3

    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :pswitch_9
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 130
    .line 131
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    instance-of p2, p1, Ljava/lang/String;

    .line 136
    .line 137
    if-eqz p2, :cond_0

    .line 138
    .line 139
    check-cast p1, Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    xor-int/2addr p1, v2

    .line 146
    return p1

    .line 147
    :cond_0
    instance-of p2, p1, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 148
    .line 149
    if-eqz p2, :cond_1

    .line 150
    .line 151
    sget-object p2, Landroidx/datastore/preferences/protobuf/ByteString;->e:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 152
    .line 153
    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    xor-int/2addr p1, v2

    .line 158
    return p1

    .line 159
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 160
    .line 161
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :pswitch_a
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 166
    .line 167
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getBoolean(Ljava/lang/Object;J)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    return p1

    .line 172
    :pswitch_b
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 173
    .line 174
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_3

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :pswitch_c
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 182
    .line 183
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 184
    .line 185
    .line 186
    move-result-wide p1

    .line 187
    cmp-long p1, p1, v3

    .line 188
    .line 189
    if-eqz p1, :cond_3

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :pswitch_d
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 193
    .line 194
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-eqz p1, :cond_3

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :pswitch_e
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 202
    .line 203
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 204
    .line 205
    .line 206
    move-result-wide p1

    .line 207
    cmp-long p1, p1, v3

    .line 208
    .line 209
    if-eqz p1, :cond_3

    .line 210
    .line 211
    goto :goto_0

    .line 212
    :pswitch_f
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 213
    .line 214
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 215
    .line 216
    .line 217
    move-result-wide p1

    .line 218
    cmp-long p1, p1, v3

    .line 219
    .line 220
    if-eqz p1, :cond_3

    .line 221
    .line 222
    goto :goto_0

    .line 223
    :pswitch_10
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 224
    .line 225
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getFloat(Ljava/lang/Object;J)F

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    const/4 p2, 0x0

    .line 230
    cmpl-float p1, p1, p2

    .line 231
    .line 232
    if-eqz p1, :cond_3

    .line 233
    .line 234
    goto :goto_0

    .line 235
    :pswitch_11
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 236
    .line 237
    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getDouble(Ljava/lang/Object;J)D

    .line 238
    .line 239
    .line 240
    move-result-wide p1

    .line 241
    const-wide/16 v0, 0x0

    .line 242
    .line 243
    cmpl-double p1, p1, v0

    .line 244
    .line 245
    if-eqz p1, :cond_3

    .line 246
    .line 247
    goto :goto_0

    .line 248
    :cond_2
    add-int/lit8 p1, p1, 0x2

    .line 249
    .line 250
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    .line 251
    .line 252
    aget p1, v0, p1

    .line 253
    .line 254
    ushr-int/lit8 v0, p1, 0x14

    .line 255
    .line 256
    shl-int v0, v2, v0

    .line 257
    .line 258
    and-int/2addr p1, v1

    .line 259
    int-to-long v3, p1

    .line 260
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 261
    .line 262
    invoke-virtual {p1, p2, v3, v4}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    and-int/2addr p1, v0

    .line 267
    if-eqz p1, :cond_3

    .line 268
    .line 269
    :goto_0
    return v2

    .line 270
    :cond_3
    const/4 p1, 0x0

    .line 271
    return p1

    .line 272
    nop

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v2, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/b0;->B(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    aget v5, v0, v2

    .line 13
    .line 14
    const v6, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v6, v4

    .line 18
    int-to-long v6, v6

    .line 19
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/b0;->A(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/16 v8, 0x25

    .line 24
    .line 25
    packed-switch v4, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :pswitch_0
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 37
    .line 38
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    mul-int/lit8 v3, v3, 0x35

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    :goto_1
    add-int/2addr v4, v3

    .line 49
    move v3, v4

    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :pswitch_1
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    mul-int/lit8 v3, v3, 0x35

    .line 59
    .line 60
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/I;->hashLong(J)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    goto :goto_1

    .line 69
    :pswitch_2
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_1

    .line 74
    .line 75
    mul-int/lit8 v3, v3, 0x35

    .line 76
    .line 77
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    goto :goto_1

    .line 82
    :pswitch_3
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_1

    .line 87
    .line 88
    mul-int/lit8 v3, v3, 0x35

    .line 89
    .line 90
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/I;->hashLong(J)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    goto :goto_1

    .line 99
    :pswitch_4
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_1

    .line 104
    .line 105
    mul-int/lit8 v3, v3, 0x35

    .line 106
    .line 107
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    goto :goto_1

    .line 112
    :pswitch_5
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_1

    .line 117
    .line 118
    mul-int/lit8 v3, v3, 0x35

    .line 119
    .line 120
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    goto :goto_1

    .line 125
    :pswitch_6
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_1

    .line 130
    .line 131
    mul-int/lit8 v3, v3, 0x35

    .line 132
    .line 133
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    goto :goto_1

    .line 138
    :pswitch_7
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_1

    .line 143
    .line 144
    mul-int/lit8 v3, v3, 0x35

    .line 145
    .line 146
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 147
    .line 148
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    goto :goto_1

    .line 157
    :pswitch_8
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_1

    .line 162
    .line 163
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 164
    .line 165
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    mul-int/lit8 v3, v3, 0x35

    .line 170
    .line 171
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    goto :goto_1

    .line 176
    :pswitch_9
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-eqz v4, :cond_1

    .line 181
    .line 182
    mul-int/lit8 v3, v3, 0x35

    .line 183
    .line 184
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 185
    .line 186
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    check-cast v4, Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    goto/16 :goto_1

    .line 197
    .line 198
    :pswitch_a
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    if-eqz v4, :cond_1

    .line 203
    .line 204
    mul-int/lit8 v3, v3, 0x35

    .line 205
    .line 206
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 207
    .line 208
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    check-cast v4, Ljava/lang/Boolean;

    .line 213
    .line 214
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/I;->hashBoolean(Z)I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :pswitch_b
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-eqz v4, :cond_1

    .line 229
    .line 230
    mul-int/lit8 v3, v3, 0x35

    .line 231
    .line 232
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    goto/16 :goto_1

    .line 237
    .line 238
    :pswitch_c
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_1

    .line 243
    .line 244
    mul-int/lit8 v3, v3, 0x35

    .line 245
    .line 246
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 247
    .line 248
    .line 249
    move-result-wide v4

    .line 250
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/I;->hashLong(J)I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    goto/16 :goto_1

    .line 255
    .line 256
    :pswitch_d
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    if-eqz v4, :cond_1

    .line 261
    .line 262
    mul-int/lit8 v3, v3, 0x35

    .line 263
    .line 264
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    goto/16 :goto_1

    .line 269
    .line 270
    :pswitch_e
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_1

    .line 275
    .line 276
    mul-int/lit8 v3, v3, 0x35

    .line 277
    .line 278
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 279
    .line 280
    .line 281
    move-result-wide v4

    .line 282
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/I;->hashLong(J)I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    goto/16 :goto_1

    .line 287
    .line 288
    :pswitch_f
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-eqz v4, :cond_1

    .line 293
    .line 294
    mul-int/lit8 v3, v3, 0x35

    .line 295
    .line 296
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 297
    .line 298
    .line 299
    move-result-wide v4

    .line 300
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/I;->hashLong(J)I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :pswitch_10
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-eqz v4, :cond_1

    .line 311
    .line 312
    mul-int/lit8 v3, v3, 0x35

    .line 313
    .line 314
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 315
    .line 316
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    check-cast v4, Ljava/lang/Float;

    .line 321
    .line 322
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    goto/16 :goto_1

    .line 331
    .line 332
    :pswitch_11
    invoke-virtual {p0, p1, v5, v2}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    if-eqz v4, :cond_1

    .line 337
    .line 338
    mul-int/lit8 v3, v3, 0x35

    .line 339
    .line 340
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 341
    .line 342
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    check-cast v4, Ljava/lang/Double;

    .line 347
    .line 348
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 349
    .line 350
    .line 351
    move-result-wide v4

    .line 352
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 353
    .line 354
    .line 355
    move-result-wide v4

    .line 356
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/I;->hashLong(J)I

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    goto/16 :goto_1

    .line 361
    .line 362
    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    .line 363
    .line 364
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 365
    .line 366
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    goto/16 :goto_1

    .line 375
    .line 376
    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    .line 377
    .line 378
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 379
    .line 380
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    goto/16 :goto_1

    .line 389
    .line 390
    :pswitch_14
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 391
    .line 392
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    if-eqz v4, :cond_0

    .line 397
    .line 398
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 399
    .line 400
    .line 401
    move-result v8

    .line 402
    :cond_0
    :goto_2
    mul-int/lit8 v3, v3, 0x35

    .line 403
    .line 404
    add-int/2addr v3, v8

    .line 405
    goto/16 :goto_3

    .line 406
    .line 407
    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    .line 408
    .line 409
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 410
    .line 411
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 412
    .line 413
    .line 414
    move-result-wide v4

    .line 415
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/I;->hashLong(J)I

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    goto/16 :goto_1

    .line 420
    .line 421
    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    .line 422
    .line 423
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 424
    .line 425
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    goto/16 :goto_1

    .line 430
    .line 431
    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    .line 432
    .line 433
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 434
    .line 435
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 436
    .line 437
    .line 438
    move-result-wide v4

    .line 439
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/I;->hashLong(J)I

    .line 440
    .line 441
    .line 442
    move-result v4

    .line 443
    goto/16 :goto_1

    .line 444
    .line 445
    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    .line 446
    .line 447
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 448
    .line 449
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 450
    .line 451
    .line 452
    move-result v4

    .line 453
    goto/16 :goto_1

    .line 454
    .line 455
    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    .line 456
    .line 457
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 458
    .line 459
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    goto/16 :goto_1

    .line 464
    .line 465
    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    .line 466
    .line 467
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 468
    .line 469
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    goto/16 :goto_1

    .line 474
    .line 475
    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    .line 476
    .line 477
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 478
    .line 479
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 484
    .line 485
    .line 486
    move-result v4

    .line 487
    goto/16 :goto_1

    .line 488
    .line 489
    :pswitch_1c
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 490
    .line 491
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    if-eqz v4, :cond_0

    .line 496
    .line 497
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 498
    .line 499
    .line 500
    move-result v8

    .line 501
    goto :goto_2

    .line 502
    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    .line 503
    .line 504
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 505
    .line 506
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v4

    .line 510
    check-cast v4, Ljava/lang/String;

    .line 511
    .line 512
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 513
    .line 514
    .line 515
    move-result v4

    .line 516
    goto/16 :goto_1

    .line 517
    .line 518
    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    .line 519
    .line 520
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 521
    .line 522
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getBoolean(Ljava/lang/Object;J)Z

    .line 523
    .line 524
    .line 525
    move-result v4

    .line 526
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/I;->hashBoolean(Z)I

    .line 527
    .line 528
    .line 529
    move-result v4

    .line 530
    goto/16 :goto_1

    .line 531
    .line 532
    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    .line 533
    .line 534
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 535
    .line 536
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 537
    .line 538
    .line 539
    move-result v4

    .line 540
    goto/16 :goto_1

    .line 541
    .line 542
    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    .line 543
    .line 544
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 545
    .line 546
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 547
    .line 548
    .line 549
    move-result-wide v4

    .line 550
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/I;->hashLong(J)I

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    goto/16 :goto_1

    .line 555
    .line 556
    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    .line 557
    .line 558
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 559
    .line 560
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 561
    .line 562
    .line 563
    move-result v4

    .line 564
    goto/16 :goto_1

    .line 565
    .line 566
    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    .line 567
    .line 568
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 569
    .line 570
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 571
    .line 572
    .line 573
    move-result-wide v4

    .line 574
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/I;->hashLong(J)I

    .line 575
    .line 576
    .line 577
    move-result v4

    .line 578
    goto/16 :goto_1

    .line 579
    .line 580
    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    .line 581
    .line 582
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 583
    .line 584
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 585
    .line 586
    .line 587
    move-result-wide v4

    .line 588
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/I;->hashLong(J)I

    .line 589
    .line 590
    .line 591
    move-result v4

    .line 592
    goto/16 :goto_1

    .line 593
    .line 594
    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    .line 595
    .line 596
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 597
    .line 598
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getFloat(Ljava/lang/Object;J)F

    .line 599
    .line 600
    .line 601
    move-result v4

    .line 602
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 603
    .line 604
    .line 605
    move-result v4

    .line 606
    goto/16 :goto_1

    .line 607
    .line 608
    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    .line 609
    .line 610
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 611
    .line 612
    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getDouble(Ljava/lang/Object;J)D

    .line 613
    .line 614
    .line 615
    move-result-wide v4

    .line 616
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 617
    .line 618
    .line 619
    move-result-wide v4

    .line 620
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/I;->hashLong(J)I

    .line 621
    .line 622
    .line 623
    move-result v4

    .line 624
    goto/16 :goto_1

    .line 625
    .line 626
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x3

    .line 627
    .line 628
    goto/16 :goto_0

    .line 629
    .line 630
    :cond_2
    mul-int/lit8 v3, v3, 0x35

    .line 631
    .line 632
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->m:Landroidx/datastore/preferences/protobuf/w0;

    .line 633
    .line 634
    check-cast v0, Landroidx/datastore/preferences/protobuf/y0;

    .line 635
    .line 636
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 637
    .line 638
    .line 639
    check-cast p1, Landroidx/datastore/preferences/protobuf/F;

    .line 640
    .line 641
    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 642
    .line 643
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/x0;->hashCode()I

    .line 644
    .line 645
    .line 646
    move-result p1

    .line 647
    add-int/2addr p1, v3

    .line 648
    return p1

    .line 649
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    add-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    .line 4
    .line 5
    aget p3, v0, p3

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p3, v0

    .line 11
    int-to-long v0, p3

    .line 12
    sget-object p3, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 13
    .line 14
    invoke-virtual {p3, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-ne p1, p2, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    iget v4, p0, Landroidx/datastore/preferences/protobuf/b0;->i:I

    .line 6
    .line 7
    const/4 v5, 0x1

    .line 8
    if-ge v2, v4, :cond_12

    .line 9
    .line 10
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/b0;->h:[I

    .line 11
    .line 12
    aget v4, v4, v2

    .line 13
    .line 14
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    .line 15
    .line 16
    aget v7, v6, v4

    .line 17
    .line 18
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/b0;->B(I)I

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    const v9, 0xfffff

    .line 23
    .line 24
    .line 25
    iget-boolean v10, p0, Landroidx/datastore/preferences/protobuf/b0;->g:Z

    .line 26
    .line 27
    if-nez v10, :cond_0

    .line 28
    .line 29
    add-int/lit8 v11, v4, 0x2

    .line 30
    .line 31
    aget v6, v6, v11

    .line 32
    .line 33
    and-int v11, v6, v9

    .line 34
    .line 35
    ushr-int/lit8 v6, v6, 0x14

    .line 36
    .line 37
    shl-int v6, v5, v6

    .line 38
    .line 39
    if-eq v11, v0, :cond_1

    .line 40
    .line 41
    sget-object v0, Landroidx/datastore/preferences/protobuf/b0;->p:Lsun/misc/Unsafe;

    .line 42
    .line 43
    int-to-long v12, v11

    .line 44
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    move v0, v11

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    move v6, v1

    .line 51
    :cond_1
    :goto_1
    const/high16 v11, 0x10000000

    .line 52
    .line 53
    and-int/2addr v11, v8

    .line 54
    if-eqz v11, :cond_4

    .line 55
    .line 56
    if-eqz v10, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    and-int v11, v3, v6

    .line 64
    .line 65
    if-eqz v11, :cond_3

    .line 66
    .line 67
    move v11, v5

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move v11, v1

    .line 70
    :goto_2
    if-nez v11, :cond_4

    .line 71
    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :cond_4
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/b0;->A(I)I

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    const/16 v12, 0x9

    .line 79
    .line 80
    if-eq v11, v12, :cond_e

    .line 81
    .line 82
    const/16 v12, 0x11

    .line 83
    .line 84
    if-eq v11, v12, :cond_e

    .line 85
    .line 86
    const/16 v5, 0x1b

    .line 87
    .line 88
    if-eq v11, v5, :cond_b

    .line 89
    .line 90
    const/16 v5, 0x3c

    .line 91
    .line 92
    if-eq v11, v5, :cond_a

    .line 93
    .line 94
    const/16 v5, 0x44

    .line 95
    .line 96
    if-eq v11, v5, :cond_a

    .line 97
    .line 98
    const/16 v5, 0x31

    .line 99
    .line 100
    if-eq v11, v5, :cond_b

    .line 101
    .line 102
    const/16 v5, 0x32

    .line 103
    .line 104
    if-eq v11, v5, :cond_5

    .line 105
    .line 106
    goto/16 :goto_6

    .line 107
    .line 108
    :cond_5
    and-int v5, v8, v9

    .line 109
    .line 110
    int-to-long v5, v5

    .line 111
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 112
    .line 113
    invoke-virtual {v7, p1, v5, v6}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/b0;->n:Landroidx/datastore/preferences/protobuf/V;

    .line 118
    .line 119
    invoke-virtual {v6, v5}, Landroidx/datastore/preferences/protobuf/V;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_6

    .line 128
    .line 129
    goto/16 :goto_6

    .line 130
    .line 131
    :cond_6
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/b0;->d(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v6, v4}, Landroidx/datastore/preferences/protobuf/V;->forMapMetadata(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/T;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    iget-object v4, v4, Landroidx/datastore/preferences/protobuf/T;->c:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 140
    .line 141
    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->getJavaType()Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    sget-object v6, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->s:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    .line 146
    .line 147
    if-eq v4, v6, :cond_7

    .line 148
    .line 149
    goto/16 :goto_6

    .line 150
    .line 151
    :cond_7
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    const/4 v5, 0x0

    .line 160
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_11

    .line 165
    .line 166
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    if-nez v5, :cond_9

    .line 171
    .line 172
    invoke-static {}, Landroidx/datastore/preferences/protobuf/h0;->getInstance()Landroidx/datastore/preferences/protobuf/h0;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-virtual {v5, v7}, Landroidx/datastore/preferences/protobuf/h0;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/l0;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    :cond_9
    invoke-interface {v5, v6}, Landroidx/datastore/preferences/protobuf/l0;->isInitialized(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-nez v6, :cond_8

    .line 189
    .line 190
    goto/16 :goto_5

    .line 191
    .line 192
    :cond_a
    invoke-virtual {p0, p1, v7, v4}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-eqz v5, :cond_11

    .line 197
    .line 198
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    and-int v5, v8, v9

    .line 203
    .line 204
    int-to-long v5, v5

    .line 205
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 206
    .line 207
    invoke-virtual {v7, p1, v5, v6}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-interface {v4, v5}, Landroidx/datastore/preferences/protobuf/l0;->isInitialized(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-nez v4, :cond_11

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_b
    and-int v5, v8, v9

    .line 219
    .line 220
    int-to-long v5, v5

    .line 221
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 222
    .line 223
    invoke-virtual {v7, p1, v5, v6}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    check-cast v5, Ljava/util/List;

    .line 228
    .line 229
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    if-eqz v6, :cond_c

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_c
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    move v6, v1

    .line 241
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    if-ge v6, v7, :cond_11

    .line 246
    .line 247
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-interface {v4, v7}, Landroidx/datastore/preferences/protobuf/l0;->isInitialized(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    if-nez v7, :cond_d

    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_e
    if-eqz v10, :cond_f

    .line 262
    .line 263
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    goto :goto_4

    .line 268
    :cond_f
    and-int/2addr v6, v3

    .line 269
    if-eqz v6, :cond_10

    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_10
    move v5, v1

    .line 273
    :goto_4
    if-eqz v5, :cond_11

    .line 274
    .line 275
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    and-int v5, v8, v9

    .line 280
    .line 281
    int-to-long v5, v5

    .line 282
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 283
    .line 284
    invoke-virtual {v7, p1, v5, v6}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-interface {v4, v5}, Landroidx/datastore/preferences/protobuf/l0;->isInitialized(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-nez v4, :cond_11

    .line 293
    .line 294
    :goto_5
    return v1

    .line 295
    :cond_11
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_12
    return v5
.end method

.method public final k(Landroidx/datastore/preferences/protobuf/w0;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/k0;Landroidx/datastore/preferences/protobuf/w;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    iget-object v9, v1, Landroidx/datastore/preferences/protobuf/b0;->h:[I

    .line 12
    .line 13
    iget v10, v1, Landroidx/datastore/preferences/protobuf/b0;->j:I

    .line 14
    .line 15
    iget v11, v1, Landroidx/datastore/preferences/protobuf/b0;->i:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    move-object v12, v0

    .line 19
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroidx/datastore/preferences/protobuf/k0;->getFieldNumber()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/b0;->s(I)I

    .line 24
    .line 25
    .line 26
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-gez v3, :cond_8

    .line 28
    .line 29
    const v3, 0x7fffffff

    .line 30
    .line 31
    .line 32
    if-ne v0, v3, :cond_3

    .line 33
    .line 34
    :goto_1
    if-ge v11, v10, :cond_0

    .line 35
    .line 36
    aget v0, v9, v11

    .line 37
    .line 38
    invoke-virtual {v1, v0, v2, v12}, Landroidx/datastore/preferences/protobuf/b0;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v11, v11, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    if-eqz v12, :cond_2

    .line 45
    .line 46
    move-object v0, v8

    .line 47
    check-cast v0, Landroidx/datastore/preferences/protobuf/y0;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_2
    move-object v0, v2

    .line 53
    check-cast v0, Landroidx/datastore/preferences/protobuf/F;

    .line 54
    .line 55
    iput-object v12, v0, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 56
    .line 57
    :cond_2
    move-object v6, v1

    .line 58
    goto/16 :goto_e

    .line 59
    .line 60
    :cond_3
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    if-nez v12, :cond_5

    .line 64
    .line 65
    move-object v0, v2

    .line 66
    check-cast v0, Landroidx/datastore/preferences/protobuf/F;

    .line 67
    .line 68
    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 69
    .line 70
    invoke-static {}, Landroidx/datastore/preferences/protobuf/x0;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/x0;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    if-ne v3, v6, :cond_4

    .line 75
    .line 76
    invoke-static {}, Landroidx/datastore/preferences/protobuf/x0;->a()Landroidx/datastore/preferences/protobuf/x0;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iput-object v3, v0, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 81
    .line 82
    :cond_4
    move-object v12, v3

    .line 83
    goto :goto_4

    .line 84
    :goto_3
    move-object v6, v1

    .line 85
    goto/16 :goto_10

    .line 86
    .line 87
    :cond_5
    :goto_4
    invoke-virtual {v8, v12, v4}, Landroidx/datastore/preferences/protobuf/w0;->a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/k0;)Z

    .line 88
    .line 89
    .line 90
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_6
    :goto_5
    if-ge v11, v10, :cond_7

    .line 95
    .line 96
    aget v0, v9, v11

    .line 97
    .line 98
    invoke-virtual {v1, v0, v2, v12}, Landroidx/datastore/preferences/protobuf/b0;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v11, v11, 0x1

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_7
    if-eqz v12, :cond_2

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto :goto_3

    .line 109
    :cond_8
    :try_start_2
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/b0;->B(I)I

    .line 110
    .line 111
    .line 112
    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :try_start_3
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->A(I)I

    .line 114
    .line 115
    .line 116
    move-result v7
    :try_end_3
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    iget-object v13, v1, Landroidx/datastore/preferences/protobuf/b0;->l:Landroidx/datastore/preferences/protobuf/N;

    .line 118
    .line 119
    packed-switch v7, :pswitch_data_0

    .line 120
    .line 121
    .line 122
    if-nez v12, :cond_9

    .line 123
    .line 124
    :try_start_4
    invoke-virtual {v8}, Landroidx/datastore/preferences/protobuf/w0;->b()Landroidx/datastore/preferences/protobuf/x0;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    goto :goto_6

    .line 129
    :catch_0
    move-object v6, v1

    .line 130
    move-object v14, v4

    .line 131
    move-object v15, v5

    .line 132
    goto/16 :goto_c

    .line 133
    .line 134
    :cond_9
    :goto_6
    invoke-virtual {v8, v12, v4}, Landroidx/datastore/preferences/protobuf/w0;->a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/k0;)Z

    .line 135
    .line 136
    .line 137
    move-result v0
    :try_end_4
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    if-nez v0, :cond_a

    .line 139
    .line 140
    :goto_7
    if-ge v11, v10, :cond_1

    .line 141
    .line 142
    aget v0, v9, v11

    .line 143
    .line 144
    invoke-virtual {v1, v0, v2, v12}, Landroidx/datastore/preferences/protobuf/b0;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    add-int/lit8 v11, v11, 0x1

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :pswitch_0
    :try_start_5
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 151
    .line 152
    .line 153
    move-result-wide v6

    .line 154
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 155
    .line 156
    .line 157
    move-result-object v13

    .line 158
    invoke-interface {v4, v13, v5}, Landroidx/datastore/preferences/protobuf/k0;->readGroupBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/l0;Landroidx/datastore/preferences/protobuf/w;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    invoke-static {v2, v6, v7, v13}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 166
    .line 167
    .line 168
    :cond_a
    :goto_8
    move-object v6, v1

    .line 169
    move-object v14, v4

    .line 170
    move-object v15, v5

    .line 171
    goto/16 :goto_f

    .line 172
    .line 173
    :pswitch_1
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 174
    .line 175
    .line 176
    move-result-wide v6

    .line 177
    invoke-interface {v4}, Landroidx/datastore/preferences/protobuf/k0;->readSInt64()J

    .line 178
    .line 179
    .line 180
    move-result-wide v13

    .line 181
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    invoke-static {v2, v6, v7, v13}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 189
    .line 190
    .line 191
    goto :goto_8

    .line 192
    :pswitch_2
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 193
    .line 194
    .line 195
    move-result-wide v6

    .line 196
    invoke-interface {v4}, Landroidx/datastore/preferences/protobuf/k0;->readSInt32()I

    .line 197
    .line 198
    .line 199
    move-result v13

    .line 200
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    invoke-static {v2, v6, v7, v13}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 208
    .line 209
    .line 210
    goto :goto_8

    .line 211
    :pswitch_3
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 212
    .line 213
    .line 214
    move-result-wide v6

    .line 215
    invoke-interface {v4}, Landroidx/datastore/preferences/protobuf/k0;->readSFixed64()J

    .line 216
    .line 217
    .line 218
    move-result-wide v13

    .line 219
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 220
    .line 221
    .line 222
    move-result-object v13

    .line 223
    invoke-static {v2, v6, v7, v13}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 227
    .line 228
    .line 229
    goto :goto_8

    .line 230
    :pswitch_4
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 231
    .line 232
    .line 233
    move-result-wide v6

    .line 234
    invoke-interface {v4}, Landroidx/datastore/preferences/protobuf/k0;->readSFixed32()I

    .line 235
    .line 236
    .line 237
    move-result v13

    .line 238
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v13

    .line 242
    invoke-static {v2, v6, v7, v13}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 246
    .line 247
    .line 248
    goto :goto_8

    .line 249
    :pswitch_5
    invoke-interface {v4}, Landroidx/datastore/preferences/protobuf/k0;->readEnum()I

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/b0;->c(I)V

    .line 254
    .line 255
    .line 256
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 257
    .line 258
    .line 259
    move-result-wide v13

    .line 260
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    invoke-static {v2, v13, v14, v6}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 268
    .line 269
    .line 270
    goto :goto_8

    .line 271
    :pswitch_6
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 272
    .line 273
    .line 274
    move-result-wide v6

    .line 275
    invoke-interface {v4}, Landroidx/datastore/preferences/protobuf/k0;->readUInt32()I

    .line 276
    .line 277
    .line 278
    move-result v13

    .line 279
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v13

    .line 283
    invoke-static {v2, v6, v7, v13}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 287
    .line 288
    .line 289
    goto :goto_8

    .line 290
    :pswitch_7
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 291
    .line 292
    .line 293
    move-result-wide v6

    .line 294
    invoke-interface {v4}, Landroidx/datastore/preferences/protobuf/k0;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    .line 295
    .line 296
    .line 297
    move-result-object v13

    .line 298
    invoke-static {v2, v6, v7, v13}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_8

    .line 305
    .line 306
    :pswitch_8
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    if-eqz v7, :cond_b

    .line 311
    .line 312
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 313
    .line 314
    .line 315
    move-result-wide v13

    .line 316
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 317
    .line 318
    invoke-virtual {v7, v2, v13, v14}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 323
    .line 324
    .line 325
    move-result-object v13

    .line 326
    invoke-interface {v4, v13, v5}, Landroidx/datastore/preferences/protobuf/k0;->readMessageBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/l0;Landroidx/datastore/preferences/protobuf/w;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v13

    .line 330
    invoke-static {v7, v13}, Landroidx/datastore/preferences/protobuf/I;->b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/a0;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 335
    .line 336
    .line 337
    move-result-wide v13

    .line 338
    invoke-static {v2, v13, v14, v7}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    goto :goto_9

    .line 342
    :cond_b
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 343
    .line 344
    .line 345
    move-result-wide v6

    .line 346
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 347
    .line 348
    .line 349
    move-result-object v13

    .line 350
    invoke-interface {v4, v13, v5}, Landroidx/datastore/preferences/protobuf/k0;->readMessageBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/l0;Landroidx/datastore/preferences/protobuf/w;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v13

    .line 354
    invoke-static {v2, v6, v7, v13}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v3, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    :goto_9
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_8

    .line 364
    .line 365
    :pswitch_9
    invoke-virtual {v1, v2, v6, v4}, Landroidx/datastore/preferences/protobuf/b0;->v(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/k0;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_8

    .line 372
    .line 373
    :pswitch_a
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 374
    .line 375
    .line 376
    move-result-wide v6

    .line 377
    invoke-interface {v4}, Landroidx/datastore/preferences/protobuf/k0;->readBool()Z

    .line 378
    .line 379
    .line 380
    move-result v13

    .line 381
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 382
    .line 383
    .line 384
    move-result-object v13

    .line 385
    invoke-static {v2, v6, v7, v13}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_8

    .line 392
    .line 393
    :pswitch_b
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 394
    .line 395
    .line 396
    move-result-wide v6

    .line 397
    invoke-interface {v4}, Landroidx/datastore/preferences/protobuf/k0;->readFixed32()I

    .line 398
    .line 399
    .line 400
    move-result v13

    .line 401
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v13

    .line 405
    invoke-static {v2, v6, v7, v13}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_8

    .line 412
    .line 413
    :pswitch_c
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 414
    .line 415
    .line 416
    move-result-wide v6

    .line 417
    invoke-interface {v4}, Landroidx/datastore/preferences/protobuf/k0;->readFixed64()J

    .line 418
    .line 419
    .line 420
    move-result-wide v13

    .line 421
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 422
    .line 423
    .line 424
    move-result-object v13

    .line 425
    invoke-static {v2, v6, v7, v13}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_8

    .line 432
    .line 433
    :pswitch_d
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 434
    .line 435
    .line 436
    move-result-wide v6

    .line 437
    invoke-interface {v4}, Landroidx/datastore/preferences/protobuf/k0;->readInt32()I

    .line 438
    .line 439
    .line 440
    move-result v13

    .line 441
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 442
    .line 443
    .line 444
    move-result-object v13

    .line 445
    invoke-static {v2, v6, v7, v13}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_8

    .line 452
    .line 453
    :pswitch_e
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 454
    .line 455
    .line 456
    move-result-wide v6

    .line 457
    invoke-interface {v4}, Landroidx/datastore/preferences/protobuf/k0;->readUInt64()J

    .line 458
    .line 459
    .line 460
    move-result-wide v13

    .line 461
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 462
    .line 463
    .line 464
    move-result-object v13

    .line 465
    invoke-static {v2, v6, v7, v13}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 469
    .line 470
    .line 471
    goto/16 :goto_8

    .line 472
    .line 473
    :pswitch_f
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 474
    .line 475
    .line 476
    move-result-wide v6

    .line 477
    invoke-interface {v4}, Landroidx/datastore/preferences/protobuf/k0;->readInt64()J

    .line 478
    .line 479
    .line 480
    move-result-wide v13

    .line 481
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 482
    .line 483
    .line 484
    move-result-object v13

    .line 485
    invoke-static {v2, v6, v7, v13}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 489
    .line 490
    .line 491
    goto/16 :goto_8

    .line 492
    .line 493
    :pswitch_10
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 494
    .line 495
    .line 496
    move-result-wide v6

    .line 497
    invoke-interface {v4}, Landroidx/datastore/preferences/protobuf/k0;->readFloat()F

    .line 498
    .line 499
    .line 500
    move-result v13

    .line 501
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 502
    .line 503
    .line 504
    move-result-object v13

    .line 505
    invoke-static {v2, v6, v7, v13}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 509
    .line 510
    .line 511
    goto/16 :goto_8

    .line 512
    .line 513
    :pswitch_11
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 514
    .line 515
    .line 516
    move-result-wide v6

    .line 517
    invoke-interface {v4}, Landroidx/datastore/preferences/protobuf/k0;->readDouble()D

    .line 518
    .line 519
    .line 520
    move-result-wide v13

    .line 521
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 522
    .line 523
    .line 524
    move-result-object v13

    .line 525
    invoke-static {v2, v6, v7, v13}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1, v2, v0, v3}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V
    :try_end_5
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 529
    .line 530
    .line 531
    goto/16 :goto_8

    .line 532
    .line 533
    :pswitch_12
    :try_start_6
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/b0;->d(I)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v4

    .line 537
    move-object/from16 v6, p3

    .line 538
    .line 539
    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/b0;->l(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/w;Landroidx/datastore/preferences/protobuf/k0;)V

    .line 540
    .line 541
    .line 542
    move-object/from16 v2, p2

    .line 543
    .line 544
    move-object/from16 v14, p3

    .line 545
    .line 546
    move-object/from16 v15, p4

    .line 547
    .line 548
    move-object v6, v1

    .line 549
    goto/16 :goto_f

    .line 550
    .line 551
    :catchall_1
    move-exception v0

    .line 552
    move-object/from16 v2, p2

    .line 553
    .line 554
    goto/16 :goto_3

    .line 555
    .line 556
    :catch_1
    move-object/from16 v2, p2

    .line 557
    .line 558
    move-object/from16 v14, p3

    .line 559
    .line 560
    move-object/from16 v15, p4

    .line 561
    .line 562
    :goto_a
    move-object v6, v1

    .line 563
    goto/16 :goto_c

    .line 564
    .line 565
    :pswitch_13
    move v7, v3

    .line 566
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 567
    .line 568
    .line 569
    move-result-wide v3

    .line 570
    invoke-virtual {v1, v7}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 571
    .line 572
    .line 573
    move-result-object v6
    :try_end_6
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 574
    move-object/from16 v2, p2

    .line 575
    .line 576
    move-object/from16 v5, p3

    .line 577
    .line 578
    move-object/from16 v7, p4

    .line 579
    .line 580
    :try_start_7
    invoke-virtual/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/b0;->t(Ljava/lang/Object;JLandroidx/datastore/preferences/protobuf/k0;Landroidx/datastore/preferences/protobuf/l0;Landroidx/datastore/preferences/protobuf/w;)V
    :try_end_7
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 581
    .line 582
    .line 583
    move-object v4, v5

    .line 584
    :goto_b
    move-object/from16 v15, p4

    .line 585
    .line 586
    move-object v6, v1

    .line 587
    move-object v14, v4

    .line 588
    goto/16 :goto_f

    .line 589
    .line 590
    :catch_2
    move-object/from16 v15, p4

    .line 591
    .line 592
    move-object v6, v1

    .line 593
    move-object v14, v5

    .line 594
    goto/16 :goto_c

    .line 595
    .line 596
    :pswitch_14
    :try_start_8
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 597
    .line 598
    .line 599
    move-result-wide v5

    .line 600
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readSInt64List(Ljava/util/List;)V

    .line 605
    .line 606
    .line 607
    goto :goto_b

    .line 608
    :catch_3
    move-object/from16 v15, p4

    .line 609
    .line 610
    move-object v6, v1

    .line 611
    move-object v14, v4

    .line 612
    goto/16 :goto_c

    .line 613
    .line 614
    :pswitch_15
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 615
    .line 616
    .line 617
    move-result-wide v5

    .line 618
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readSInt32List(Ljava/util/List;)V

    .line 623
    .line 624
    .line 625
    goto :goto_b

    .line 626
    :pswitch_16
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 627
    .line 628
    .line 629
    move-result-wide v5

    .line 630
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readSFixed64List(Ljava/util/List;)V

    .line 635
    .line 636
    .line 637
    goto :goto_b

    .line 638
    :pswitch_17
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 639
    .line 640
    .line 641
    move-result-wide v5

    .line 642
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readSFixed32List(Ljava/util/List;)V

    .line 647
    .line 648
    .line 649
    goto :goto_b

    .line 650
    :pswitch_18
    move v7, v3

    .line 651
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 652
    .line 653
    .line 654
    move-result-wide v5

    .line 655
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 656
    .line 657
    .line 658
    move-result-object v3

    .line 659
    invoke-interface {v4, v3}, Landroidx/datastore/preferences/protobuf/k0;->readEnumList(Ljava/util/List;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v1, v7}, Landroidx/datastore/preferences/protobuf/b0;->c(I)V

    .line 663
    .line 664
    .line 665
    invoke-static {v0, v3, v12, v8}, Landroidx/datastore/preferences/protobuf/n0;->v(ILjava/util/List;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/w0;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    goto :goto_b

    .line 669
    :pswitch_19
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 670
    .line 671
    .line 672
    move-result-wide v5

    .line 673
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readUInt32List(Ljava/util/List;)V

    .line 678
    .line 679
    .line 680
    goto :goto_b

    .line 681
    :pswitch_1a
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 682
    .line 683
    .line 684
    move-result-wide v5

    .line 685
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readBoolList(Ljava/util/List;)V

    .line 690
    .line 691
    .line 692
    goto :goto_b

    .line 693
    :pswitch_1b
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 694
    .line 695
    .line 696
    move-result-wide v5

    .line 697
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readFixed32List(Ljava/util/List;)V

    .line 702
    .line 703
    .line 704
    goto :goto_b

    .line 705
    :pswitch_1c
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 706
    .line 707
    .line 708
    move-result-wide v5

    .line 709
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readFixed64List(Ljava/util/List;)V

    .line 714
    .line 715
    .line 716
    goto/16 :goto_b

    .line 717
    .line 718
    :pswitch_1d
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 719
    .line 720
    .line 721
    move-result-wide v5

    .line 722
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readInt32List(Ljava/util/List;)V

    .line 727
    .line 728
    .line 729
    goto/16 :goto_b

    .line 730
    .line 731
    :pswitch_1e
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 732
    .line 733
    .line 734
    move-result-wide v5

    .line 735
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readUInt64List(Ljava/util/List;)V

    .line 740
    .line 741
    .line 742
    goto/16 :goto_b

    .line 743
    .line 744
    :pswitch_1f
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 745
    .line 746
    .line 747
    move-result-wide v5

    .line 748
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readInt64List(Ljava/util/List;)V

    .line 753
    .line 754
    .line 755
    goto/16 :goto_b

    .line 756
    .line 757
    :pswitch_20
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 758
    .line 759
    .line 760
    move-result-wide v5

    .line 761
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readFloatList(Ljava/util/List;)V

    .line 766
    .line 767
    .line 768
    goto/16 :goto_b

    .line 769
    .line 770
    :pswitch_21
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 771
    .line 772
    .line 773
    move-result-wide v5

    .line 774
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readDoubleList(Ljava/util/List;)V

    .line 779
    .line 780
    .line 781
    goto/16 :goto_b

    .line 782
    .line 783
    :pswitch_22
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 784
    .line 785
    .line 786
    move-result-wide v5

    .line 787
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readSInt64List(Ljava/util/List;)V

    .line 792
    .line 793
    .line 794
    goto/16 :goto_b

    .line 795
    .line 796
    :pswitch_23
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 797
    .line 798
    .line 799
    move-result-wide v5

    .line 800
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readSInt32List(Ljava/util/List;)V

    .line 805
    .line 806
    .line 807
    goto/16 :goto_b

    .line 808
    .line 809
    :pswitch_24
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 810
    .line 811
    .line 812
    move-result-wide v5

    .line 813
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readSFixed64List(Ljava/util/List;)V

    .line 818
    .line 819
    .line 820
    goto/16 :goto_b

    .line 821
    .line 822
    :pswitch_25
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 823
    .line 824
    .line 825
    move-result-wide v5

    .line 826
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readSFixed32List(Ljava/util/List;)V

    .line 831
    .line 832
    .line 833
    goto/16 :goto_b

    .line 834
    .line 835
    :pswitch_26
    move v7, v3

    .line 836
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 837
    .line 838
    .line 839
    move-result-wide v5

    .line 840
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    invoke-interface {v4, v3}, Landroidx/datastore/preferences/protobuf/k0;->readEnumList(Ljava/util/List;)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v1, v7}, Landroidx/datastore/preferences/protobuf/b0;->c(I)V

    .line 848
    .line 849
    .line 850
    invoke-static {v0, v3, v12, v8}, Landroidx/datastore/preferences/protobuf/n0;->v(ILjava/util/List;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/w0;)Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    goto/16 :goto_b

    .line 854
    .line 855
    :pswitch_27
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 856
    .line 857
    .line 858
    move-result-wide v5

    .line 859
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readUInt32List(Ljava/util/List;)V

    .line 864
    .line 865
    .line 866
    goto/16 :goto_b

    .line 867
    .line 868
    :pswitch_28
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 869
    .line 870
    .line 871
    move-result-wide v5

    .line 872
    invoke-virtual {v13, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    invoke-interface {v4, v0}, Landroidx/datastore/preferences/protobuf/k0;->readBytesList(Ljava/util/List;)V

    .line 877
    .line 878
    .line 879
    goto/16 :goto_b

    .line 880
    .line 881
    :pswitch_29
    move v7, v3

    .line 882
    invoke-virtual {v1, v7}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 883
    .line 884
    .line 885
    move-result-object v5
    :try_end_8
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 886
    move v3, v6

    .line 887
    move-object/from16 v6, p4

    .line 888
    .line 889
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/b0;->u(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/k0;Landroidx/datastore/preferences/protobuf/l0;Landroidx/datastore/preferences/protobuf/w;)V
    :try_end_9
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 890
    .line 891
    .line 892
    move-object v14, v4

    .line 893
    move-object v15, v6

    .line 894
    move-object v6, v1

    .line 895
    goto/16 :goto_f

    .line 896
    .line 897
    :catch_4
    move-object v14, v4

    .line 898
    move-object v15, v6

    .line 899
    goto/16 :goto_a

    .line 900
    .line 901
    :pswitch_2a
    move-object v14, v4

    .line 902
    move-object v15, v5

    .line 903
    move v3, v6

    .line 904
    move-object v6, v1

    .line 905
    :try_start_a
    invoke-virtual {v6, v2, v3, v14}, Landroidx/datastore/preferences/protobuf/b0;->w(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/k0;)V

    .line 906
    .line 907
    .line 908
    goto/16 :goto_f

    .line 909
    .line 910
    :pswitch_2b
    move-object v14, v4

    .line 911
    move-object v15, v5

    .line 912
    move v3, v6

    .line 913
    move-object v6, v1

    .line 914
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 915
    .line 916
    .line 917
    move-result-wide v0

    .line 918
    invoke-virtual {v13, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    invoke-interface {v14, v0}, Landroidx/datastore/preferences/protobuf/k0;->readBoolList(Ljava/util/List;)V

    .line 923
    .line 924
    .line 925
    goto/16 :goto_f

    .line 926
    .line 927
    :pswitch_2c
    move-object v14, v4

    .line 928
    move-object v15, v5

    .line 929
    move v3, v6

    .line 930
    move-object v6, v1

    .line 931
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 932
    .line 933
    .line 934
    move-result-wide v0

    .line 935
    invoke-virtual {v13, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    invoke-interface {v14, v0}, Landroidx/datastore/preferences/protobuf/k0;->readFixed32List(Ljava/util/List;)V

    .line 940
    .line 941
    .line 942
    goto/16 :goto_f

    .line 943
    .line 944
    :pswitch_2d
    move-object v14, v4

    .line 945
    move-object v15, v5

    .line 946
    move v3, v6

    .line 947
    move-object v6, v1

    .line 948
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 949
    .line 950
    .line 951
    move-result-wide v0

    .line 952
    invoke-virtual {v13, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 953
    .line 954
    .line 955
    move-result-object v0

    .line 956
    invoke-interface {v14, v0}, Landroidx/datastore/preferences/protobuf/k0;->readFixed64List(Ljava/util/List;)V

    .line 957
    .line 958
    .line 959
    goto/16 :goto_f

    .line 960
    .line 961
    :pswitch_2e
    move-object v14, v4

    .line 962
    move-object v15, v5

    .line 963
    move v3, v6

    .line 964
    move-object v6, v1

    .line 965
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 966
    .line 967
    .line 968
    move-result-wide v0

    .line 969
    invoke-virtual {v13, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    invoke-interface {v14, v0}, Landroidx/datastore/preferences/protobuf/k0;->readInt32List(Ljava/util/List;)V

    .line 974
    .line 975
    .line 976
    goto/16 :goto_f

    .line 977
    .line 978
    :pswitch_2f
    move-object v14, v4

    .line 979
    move-object v15, v5

    .line 980
    move v3, v6

    .line 981
    move-object v6, v1

    .line 982
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 983
    .line 984
    .line 985
    move-result-wide v0

    .line 986
    invoke-virtual {v13, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    invoke-interface {v14, v0}, Landroidx/datastore/preferences/protobuf/k0;->readUInt64List(Ljava/util/List;)V

    .line 991
    .line 992
    .line 993
    goto/16 :goto_f

    .line 994
    .line 995
    :pswitch_30
    move-object v14, v4

    .line 996
    move-object v15, v5

    .line 997
    move v3, v6

    .line 998
    move-object v6, v1

    .line 999
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1000
    .line 1001
    .line 1002
    move-result-wide v0

    .line 1003
    invoke-virtual {v13, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    invoke-interface {v14, v0}, Landroidx/datastore/preferences/protobuf/k0;->readInt64List(Ljava/util/List;)V

    .line 1008
    .line 1009
    .line 1010
    goto/16 :goto_f

    .line 1011
    .line 1012
    :pswitch_31
    move-object v14, v4

    .line 1013
    move-object v15, v5

    .line 1014
    move v3, v6

    .line 1015
    move-object v6, v1

    .line 1016
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1017
    .line 1018
    .line 1019
    move-result-wide v0

    .line 1020
    invoke-virtual {v13, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    invoke-interface {v14, v0}, Landroidx/datastore/preferences/protobuf/k0;->readFloatList(Ljava/util/List;)V

    .line 1025
    .line 1026
    .line 1027
    goto/16 :goto_f

    .line 1028
    .line 1029
    :pswitch_32
    move-object v14, v4

    .line 1030
    move-object v15, v5

    .line 1031
    move v3, v6

    .line 1032
    move-object v6, v1

    .line 1033
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1034
    .line 1035
    .line 1036
    move-result-wide v0

    .line 1037
    invoke-virtual {v13, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    invoke-interface {v14, v0}, Landroidx/datastore/preferences/protobuf/k0;->readDoubleList(Ljava/util/List;)V

    .line 1042
    .line 1043
    .line 1044
    goto/16 :goto_f

    .line 1045
    .line 1046
    :pswitch_33
    move v7, v3

    .line 1047
    move-object v14, v4

    .line 1048
    move-object v15, v5

    .line 1049
    move v3, v6

    .line 1050
    move-object v6, v1

    .line 1051
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v0

    .line 1055
    if-eqz v0, :cond_c

    .line 1056
    .line 1057
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1058
    .line 1059
    .line 1060
    move-result-wide v0

    .line 1061
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1062
    .line 1063
    invoke-virtual {v4, v2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v0

    .line 1067
    invoke-virtual {v6, v7}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v1

    .line 1071
    invoke-interface {v14, v1, v15}, Landroidx/datastore/preferences/protobuf/k0;->readGroupBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/l0;Landroidx/datastore/preferences/protobuf/w;)Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v1

    .line 1075
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/I;->b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/a0;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v0

    .line 1079
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1080
    .line 1081
    .line 1082
    move-result-wide v3

    .line 1083
    invoke-static {v2, v3, v4, v0}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1084
    .line 1085
    .line 1086
    goto/16 :goto_f

    .line 1087
    .line 1088
    :catchall_2
    move-exception v0

    .line 1089
    goto/16 :goto_10

    .line 1090
    .line 1091
    :cond_c
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1092
    .line 1093
    .line 1094
    move-result-wide v0

    .line 1095
    invoke-virtual {v6, v7}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v3

    .line 1099
    invoke-interface {v14, v3, v15}, Landroidx/datastore/preferences/protobuf/k0;->readGroupBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/l0;Landroidx/datastore/preferences/protobuf/w;)Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v3

    .line 1103
    invoke-static {v2, v0, v1, v3}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1107
    .line 1108
    .line 1109
    goto/16 :goto_f

    .line 1110
    .line 1111
    :pswitch_34
    move v7, v3

    .line 1112
    move-object v14, v4

    .line 1113
    move-object v15, v5

    .line 1114
    move v3, v6

    .line 1115
    move-object v6, v1

    .line 1116
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1117
    .line 1118
    .line 1119
    move-result-wide v0

    .line 1120
    invoke-interface {v14}, Landroidx/datastore/preferences/protobuf/k0;->readSInt64()J

    .line 1121
    .line 1122
    .line 1123
    move-result-wide v3

    .line 1124
    invoke-static {v2, v0, v1, v3, v4}, Landroidx/datastore/preferences/protobuf/H0;->n(Ljava/lang/Object;JJ)V

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1128
    .line 1129
    .line 1130
    goto/16 :goto_f

    .line 1131
    .line 1132
    :pswitch_35
    move v7, v3

    .line 1133
    move-object v14, v4

    .line 1134
    move-object v15, v5

    .line 1135
    move v3, v6

    .line 1136
    move-object v6, v1

    .line 1137
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1138
    .line 1139
    .line 1140
    move-result-wide v0

    .line 1141
    invoke-interface {v14}, Landroidx/datastore/preferences/protobuf/k0;->readSInt32()I

    .line 1142
    .line 1143
    .line 1144
    move-result v3

    .line 1145
    invoke-static {v2, v0, v1, v3}, Landroidx/datastore/preferences/protobuf/H0;->m(Ljava/lang/Object;JI)V

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1149
    .line 1150
    .line 1151
    goto/16 :goto_f

    .line 1152
    .line 1153
    :pswitch_36
    move v7, v3

    .line 1154
    move-object v14, v4

    .line 1155
    move-object v15, v5

    .line 1156
    move v3, v6

    .line 1157
    move-object v6, v1

    .line 1158
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1159
    .line 1160
    .line 1161
    move-result-wide v0

    .line 1162
    invoke-interface {v14}, Landroidx/datastore/preferences/protobuf/k0;->readSFixed64()J

    .line 1163
    .line 1164
    .line 1165
    move-result-wide v3

    .line 1166
    invoke-static {v2, v0, v1, v3, v4}, Landroidx/datastore/preferences/protobuf/H0;->n(Ljava/lang/Object;JJ)V

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1170
    .line 1171
    .line 1172
    goto/16 :goto_f

    .line 1173
    .line 1174
    :pswitch_37
    move v7, v3

    .line 1175
    move-object v14, v4

    .line 1176
    move-object v15, v5

    .line 1177
    move v3, v6

    .line 1178
    move-object v6, v1

    .line 1179
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1180
    .line 1181
    .line 1182
    move-result-wide v0

    .line 1183
    invoke-interface {v14}, Landroidx/datastore/preferences/protobuf/k0;->readSFixed32()I

    .line 1184
    .line 1185
    .line 1186
    move-result v3

    .line 1187
    invoke-static {v2, v0, v1, v3}, Landroidx/datastore/preferences/protobuf/H0;->m(Ljava/lang/Object;JI)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1191
    .line 1192
    .line 1193
    goto/16 :goto_f

    .line 1194
    .line 1195
    :pswitch_38
    move v7, v3

    .line 1196
    move-object v14, v4

    .line 1197
    move-object v15, v5

    .line 1198
    move v3, v6

    .line 1199
    move-object v6, v1

    .line 1200
    invoke-interface {v14}, Landroidx/datastore/preferences/protobuf/k0;->readEnum()I

    .line 1201
    .line 1202
    .line 1203
    move-result v0

    .line 1204
    invoke-virtual {v6, v7}, Landroidx/datastore/preferences/protobuf/b0;->c(I)V

    .line 1205
    .line 1206
    .line 1207
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1208
    .line 1209
    .line 1210
    move-result-wide v3

    .line 1211
    invoke-static {v2, v3, v4, v0}, Landroidx/datastore/preferences/protobuf/H0;->m(Ljava/lang/Object;JI)V

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1215
    .line 1216
    .line 1217
    goto/16 :goto_f

    .line 1218
    .line 1219
    :pswitch_39
    move v7, v3

    .line 1220
    move-object v14, v4

    .line 1221
    move-object v15, v5

    .line 1222
    move v3, v6

    .line 1223
    move-object v6, v1

    .line 1224
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1225
    .line 1226
    .line 1227
    move-result-wide v0

    .line 1228
    invoke-interface {v14}, Landroidx/datastore/preferences/protobuf/k0;->readUInt32()I

    .line 1229
    .line 1230
    .line 1231
    move-result v3

    .line 1232
    invoke-static {v2, v0, v1, v3}, Landroidx/datastore/preferences/protobuf/H0;->m(Ljava/lang/Object;JI)V

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1236
    .line 1237
    .line 1238
    goto/16 :goto_f

    .line 1239
    .line 1240
    :pswitch_3a
    move v7, v3

    .line 1241
    move-object v14, v4

    .line 1242
    move-object v15, v5

    .line 1243
    move v3, v6

    .line 1244
    move-object v6, v1

    .line 1245
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1246
    .line 1247
    .line 1248
    move-result-wide v0

    .line 1249
    invoke-interface {v14}, Landroidx/datastore/preferences/protobuf/k0;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v3

    .line 1253
    invoke-static {v2, v0, v1, v3}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1257
    .line 1258
    .line 1259
    goto/16 :goto_f

    .line 1260
    .line 1261
    :pswitch_3b
    move v7, v3

    .line 1262
    move-object v14, v4

    .line 1263
    move-object v15, v5

    .line 1264
    move v3, v6

    .line 1265
    move-object v6, v1

    .line 1266
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1267
    .line 1268
    .line 1269
    move-result v0

    .line 1270
    if-eqz v0, :cond_d

    .line 1271
    .line 1272
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1273
    .line 1274
    .line 1275
    move-result-wide v0

    .line 1276
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1277
    .line 1278
    invoke-virtual {v4, v2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v0

    .line 1282
    invoke-virtual {v6, v7}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v1

    .line 1286
    invoke-interface {v14, v1, v15}, Landroidx/datastore/preferences/protobuf/k0;->readMessageBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/l0;Landroidx/datastore/preferences/protobuf/w;)Ljava/lang/Object;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v1

    .line 1290
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/I;->b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/a0;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v0

    .line 1294
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1295
    .line 1296
    .line 1297
    move-result-wide v3

    .line 1298
    invoke-static {v2, v3, v4, v0}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1299
    .line 1300
    .line 1301
    goto/16 :goto_f

    .line 1302
    .line 1303
    :cond_d
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1304
    .line 1305
    .line 1306
    move-result-wide v0

    .line 1307
    invoke-virtual {v6, v7}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v3

    .line 1311
    invoke-interface {v14, v3, v15}, Landroidx/datastore/preferences/protobuf/k0;->readMessageBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/l0;Landroidx/datastore/preferences/protobuf/w;)Ljava/lang/Object;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v3

    .line 1315
    invoke-static {v2, v0, v1, v3}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1319
    .line 1320
    .line 1321
    goto/16 :goto_f

    .line 1322
    .line 1323
    :pswitch_3c
    move v7, v3

    .line 1324
    move-object v14, v4

    .line 1325
    move-object v15, v5

    .line 1326
    move v3, v6

    .line 1327
    move-object v6, v1

    .line 1328
    invoke-virtual {v6, v2, v3, v14}, Landroidx/datastore/preferences/protobuf/b0;->v(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/k0;)V

    .line 1329
    .line 1330
    .line 1331
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1332
    .line 1333
    .line 1334
    goto/16 :goto_f

    .line 1335
    .line 1336
    :pswitch_3d
    move v7, v3

    .line 1337
    move-object v14, v4

    .line 1338
    move-object v15, v5

    .line 1339
    move v3, v6

    .line 1340
    move-object v6, v1

    .line 1341
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1342
    .line 1343
    .line 1344
    move-result-wide v0

    .line 1345
    invoke-interface {v14}, Landroidx/datastore/preferences/protobuf/k0;->readBool()Z

    .line 1346
    .line 1347
    .line 1348
    move-result v3

    .line 1349
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1350
    .line 1351
    invoke-virtual {v4, v2, v0, v1, v3}, Landroidx/datastore/preferences/protobuf/G0;->putBoolean(Ljava/lang/Object;JZ)V

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1355
    .line 1356
    .line 1357
    goto/16 :goto_f

    .line 1358
    .line 1359
    :pswitch_3e
    move v7, v3

    .line 1360
    move-object v14, v4

    .line 1361
    move-object v15, v5

    .line 1362
    move v3, v6

    .line 1363
    move-object v6, v1

    .line 1364
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1365
    .line 1366
    .line 1367
    move-result-wide v0

    .line 1368
    invoke-interface {v14}, Landroidx/datastore/preferences/protobuf/k0;->readFixed32()I

    .line 1369
    .line 1370
    .line 1371
    move-result v3

    .line 1372
    invoke-static {v2, v0, v1, v3}, Landroidx/datastore/preferences/protobuf/H0;->m(Ljava/lang/Object;JI)V

    .line 1373
    .line 1374
    .line 1375
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1376
    .line 1377
    .line 1378
    goto/16 :goto_f

    .line 1379
    .line 1380
    :pswitch_3f
    move v7, v3

    .line 1381
    move-object v14, v4

    .line 1382
    move-object v15, v5

    .line 1383
    move v3, v6

    .line 1384
    move-object v6, v1

    .line 1385
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1386
    .line 1387
    .line 1388
    move-result-wide v0

    .line 1389
    invoke-interface {v14}, Landroidx/datastore/preferences/protobuf/k0;->readFixed64()J

    .line 1390
    .line 1391
    .line 1392
    move-result-wide v3

    .line 1393
    invoke-static {v2, v0, v1, v3, v4}, Landroidx/datastore/preferences/protobuf/H0;->n(Ljava/lang/Object;JJ)V

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1397
    .line 1398
    .line 1399
    goto/16 :goto_f

    .line 1400
    .line 1401
    :pswitch_40
    move v7, v3

    .line 1402
    move-object v14, v4

    .line 1403
    move-object v15, v5

    .line 1404
    move v3, v6

    .line 1405
    move-object v6, v1

    .line 1406
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1407
    .line 1408
    .line 1409
    move-result-wide v0

    .line 1410
    invoke-interface {v14}, Landroidx/datastore/preferences/protobuf/k0;->readInt32()I

    .line 1411
    .line 1412
    .line 1413
    move-result v3

    .line 1414
    invoke-static {v2, v0, v1, v3}, Landroidx/datastore/preferences/protobuf/H0;->m(Ljava/lang/Object;JI)V

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1418
    .line 1419
    .line 1420
    goto/16 :goto_f

    .line 1421
    .line 1422
    :pswitch_41
    move v7, v3

    .line 1423
    move-object v14, v4

    .line 1424
    move-object v15, v5

    .line 1425
    move v3, v6

    .line 1426
    move-object v6, v1

    .line 1427
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1428
    .line 1429
    .line 1430
    move-result-wide v0

    .line 1431
    invoke-interface {v14}, Landroidx/datastore/preferences/protobuf/k0;->readUInt64()J

    .line 1432
    .line 1433
    .line 1434
    move-result-wide v3

    .line 1435
    invoke-static {v2, v0, v1, v3, v4}, Landroidx/datastore/preferences/protobuf/H0;->n(Ljava/lang/Object;JJ)V

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1439
    .line 1440
    .line 1441
    goto/16 :goto_f

    .line 1442
    .line 1443
    :pswitch_42
    move v7, v3

    .line 1444
    move-object v14, v4

    .line 1445
    move-object v15, v5

    .line 1446
    move v3, v6

    .line 1447
    move-object v6, v1

    .line 1448
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1449
    .line 1450
    .line 1451
    move-result-wide v0

    .line 1452
    invoke-interface {v14}, Landroidx/datastore/preferences/protobuf/k0;->readInt64()J

    .line 1453
    .line 1454
    .line 1455
    move-result-wide v3

    .line 1456
    invoke-static {v2, v0, v1, v3, v4}, Landroidx/datastore/preferences/protobuf/H0;->n(Ljava/lang/Object;JJ)V

    .line 1457
    .line 1458
    .line 1459
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1460
    .line 1461
    .line 1462
    goto/16 :goto_f

    .line 1463
    .line 1464
    :pswitch_43
    move v7, v3

    .line 1465
    move-object v14, v4

    .line 1466
    move-object v15, v5

    .line 1467
    move v3, v6

    .line 1468
    move-object v6, v1

    .line 1469
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1470
    .line 1471
    .line 1472
    move-result-wide v0

    .line 1473
    invoke-interface {v14}, Landroidx/datastore/preferences/protobuf/k0;->readFloat()F

    .line 1474
    .line 1475
    .line 1476
    move-result v3

    .line 1477
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1478
    .line 1479
    invoke-virtual {v4, v2, v0, v1, v3}, Landroidx/datastore/preferences/protobuf/G0;->putFloat(Ljava/lang/Object;JF)V

    .line 1480
    .line 1481
    .line 1482
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 1483
    .line 1484
    .line 1485
    goto :goto_f

    .line 1486
    :pswitch_44
    move v7, v3

    .line 1487
    move-object v14, v4

    .line 1488
    move-object v15, v5

    .line 1489
    move v3, v6

    .line 1490
    move-object v6, v1

    .line 1491
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/b0;->p(I)J

    .line 1492
    .line 1493
    .line 1494
    move-result-wide v0

    .line 1495
    invoke-interface {v14}, Landroidx/datastore/preferences/protobuf/k0;->readDouble()D

    .line 1496
    .line 1497
    .line 1498
    move-result-wide v4
    :try_end_a
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1499
    move-wide v2, v0

    .line 1500
    :try_start_b
    sget-object v0, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;
    :try_end_b
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1501
    .line 1502
    move-object/from16 v1, p2

    .line 1503
    .line 1504
    :try_start_c
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/G0;->putDouble(Ljava/lang/Object;JD)V
    :try_end_c
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1505
    .line 1506
    .line 1507
    move-object v2, v1

    .line 1508
    :try_start_d
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V
    :try_end_d
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1509
    .line 1510
    .line 1511
    goto :goto_f

    .line 1512
    :catchall_3
    move-exception v0

    .line 1513
    move-object v2, v1

    .line 1514
    goto :goto_10

    .line 1515
    :catch_5
    move-object v2, v1

    .line 1516
    goto :goto_c

    .line 1517
    :catchall_4
    move-exception v0

    .line 1518
    move-object/from16 v2, p2

    .line 1519
    .line 1520
    goto :goto_10

    .line 1521
    :catch_6
    move-object/from16 v2, p2

    .line 1522
    .line 1523
    :catch_7
    :goto_c
    :try_start_e
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1524
    .line 1525
    .line 1526
    if-nez v12, :cond_f

    .line 1527
    .line 1528
    move-object v0, v2

    .line 1529
    check-cast v0, Landroidx/datastore/preferences/protobuf/F;

    .line 1530
    .line 1531
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 1532
    .line 1533
    invoke-static {}, Landroidx/datastore/preferences/protobuf/x0;->getDefaultInstance()Landroidx/datastore/preferences/protobuf/x0;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v3

    .line 1537
    if-ne v1, v3, :cond_e

    .line 1538
    .line 1539
    invoke-static {}, Landroidx/datastore/preferences/protobuf/x0;->a()Landroidx/datastore/preferences/protobuf/x0;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v1

    .line 1543
    iput-object v1, v0, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 1544
    .line 1545
    :cond_e
    move-object v12, v1

    .line 1546
    :cond_f
    invoke-virtual {v8, v12, v14}, Landroidx/datastore/preferences/protobuf/w0;->a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/k0;)Z

    .line 1547
    .line 1548
    .line 1549
    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1550
    if-nez v0, :cond_12

    .line 1551
    .line 1552
    :goto_d
    if-ge v11, v10, :cond_10

    .line 1553
    .line 1554
    aget v0, v9, v11

    .line 1555
    .line 1556
    invoke-virtual {v6, v0, v2, v12}, Landroidx/datastore/preferences/protobuf/b0;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1557
    .line 1558
    .line 1559
    add-int/lit8 v11, v11, 0x1

    .line 1560
    .line 1561
    goto :goto_d

    .line 1562
    :cond_10
    if-eqz v12, :cond_11

    .line 1563
    .line 1564
    move-object v0, v2

    .line 1565
    check-cast v0, Landroidx/datastore/preferences/protobuf/F;

    .line 1566
    .line 1567
    iput-object v12, v0, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 1568
    .line 1569
    :cond_11
    :goto_e
    return-void

    .line 1570
    :cond_12
    :goto_f
    move-object v1, v6

    .line 1571
    move-object v4, v14

    .line 1572
    move-object v5, v15

    .line 1573
    goto/16 :goto_0

    .line 1574
    .line 1575
    :goto_10
    if-ge v11, v10, :cond_13

    .line 1576
    .line 1577
    aget v1, v9, v11

    .line 1578
    .line 1579
    invoke-virtual {v6, v1, v2, v12}, Landroidx/datastore/preferences/protobuf/b0;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1580
    .line 1581
    .line 1582
    add-int/lit8 v11, v11, 0x1

    .line 1583
    .line 1584
    goto :goto_10

    .line 1585
    :cond_13
    if-eqz v12, :cond_14

    .line 1586
    .line 1587
    move-object v1, v8

    .line 1588
    check-cast v1, Landroidx/datastore/preferences/protobuf/y0;

    .line 1589
    .line 1590
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1591
    .line 1592
    .line 1593
    move-object v1, v2

    .line 1594
    check-cast v1, Landroidx/datastore/preferences/protobuf/F;

    .line 1595
    .line 1596
    iput-object v12, v1, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 1597
    .line 1598
    :cond_14
    throw v0

    .line 1599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/w;Landroidx/datastore/preferences/protobuf/k0;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/b0;->B(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p2, v0

    .line 9
    int-to-long v0, p2

    .line 10
    sget-object p2, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 11
    .line 12
    invoke-virtual {p2, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/b0;->n:Landroidx/datastore/preferences/protobuf/V;

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2, p3}, Landroidx/datastore/preferences/protobuf/V;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v2, p2}, Landroidx/datastore/preferences/protobuf/V;->isImmutable(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2, p3}, Landroidx/datastore/preferences/protobuf/V;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3, p2}, Landroidx/datastore/preferences/protobuf/V;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0, v1, v3}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object p2, v3

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {v2, p2}, Landroidx/datastore/preferences/protobuf/V;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v2, p3}, Landroidx/datastore/preferences/protobuf/V;->forMapMetadata(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/T;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-interface {p5, p1, p2, p4}, Landroidx/datastore/preferences/protobuf/k0;->readMap(Ljava/util/Map;Landroidx/datastore/preferences/protobuf/T;Landroidx/datastore/preferences/protobuf/w;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final m(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/b0;->B(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    int-to-long v0, v0

    .line 10
    invoke-virtual {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v2, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 18
    .line 19
    invoke-virtual {v2, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, p3, v0, v1}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    invoke-static {v3, p3}, Landroidx/datastore/preferences/protobuf/I;->b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/a0;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-static {p2, v0, v1, p3}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    if-eqz p3, :cond_2

    .line 43
    .line 44
    invoke-static {p2, v0, v1, p3}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/b0;->i:I

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/b0;->h:[I

    .line 4
    .line 5
    iget v2, p0, Landroidx/datastore/preferences/protobuf/b0;->j:I

    .line 6
    .line 7
    if-ge v0, v2, :cond_1

    .line 8
    .line 9
    aget v1, v1, v0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/b0;->B(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const v2, 0xfffff

    .line 16
    .line 17
    .line 18
    and-int/2addr v1, v2

    .line 19
    int-to-long v1, v1

    .line 20
    sget-object v3, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 21
    .line 22
    invoke-virtual {v3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/b0;->n:Landroidx/datastore/preferences/protobuf/V;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Landroidx/datastore/preferences/protobuf/V;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {p1, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    array-length v0, v1

    .line 42
    :goto_2
    if-ge v2, v0, :cond_2

    .line 43
    .line 44
    aget v3, v1, v2

    .line 45
    .line 46
    int-to-long v3, v3

    .line 47
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/b0;->l:Landroidx/datastore/preferences/protobuf/N;

    .line 48
    .line 49
    invoke-virtual {v5, v3, v4, p1}, Landroidx/datastore/preferences/protobuf/N;->a(JLjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->m:Landroidx/datastore/preferences/protobuf/w0;

    .line 56
    .line 57
    check-cast v0, Landroidx/datastore/preferences/protobuf/y0;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    check-cast p1, Landroidx/datastore/preferences/protobuf/F;

    .line 63
    .line 64
    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/x0;->makeImmutable()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/k0;Landroidx/datastore/preferences/protobuf/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroidx/datastore/preferences/protobuf/k0;",
            "Landroidx/datastore/preferences/protobuf/w;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->m:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/b0;->k(Landroidx/datastore/preferences/protobuf/w0;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/k0;Landroidx/datastore/preferences/protobuf/w;)V

    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/b0;->B(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v6, v3

    .line 4
    aget v1, v1, v0

    .line 5
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/b0;->A(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 6
    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->n(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    move-object v5, p1

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-virtual {p0, p2, v1, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    sget-object v2, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v2, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 9
    invoke-static {p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p1, v1, v0}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    goto :goto_1

    .line 11
    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->n(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :pswitch_3
    invoke-virtual {p0, p2, v1, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    sget-object v2, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v2, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 14
    invoke-static {p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 15
    invoke-virtual {p0, p1, v1, v0}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    goto :goto_1

    .line 16
    :pswitch_4
    sget-object v1, Landroidx/datastore/preferences/protobuf/n0;->a:Ljava/lang/Class;

    .line 17
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v1, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 18
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/b0;->n:Landroidx/datastore/preferences/protobuf/V;

    invoke-virtual {v3, v2, v1}, Landroidx/datastore/preferences/protobuf/V;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 19
    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 20
    :pswitch_5
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/b0;->l:Landroidx/datastore/preferences/protobuf/N;

    invoke-virtual {v1, p1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/N;->b(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 21
    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->m(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 22
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 24
    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/H0;->n(Ljava/lang/Object;JJ)V

    .line 25
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    goto :goto_1

    .line 26
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 28
    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/H0;->m(Ljava/lang/Object;JI)V

    .line 29
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    goto :goto_1

    .line 30
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 32
    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/H0;->n(Ljava/lang/Object;JJ)V

    .line 33
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 34
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 36
    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/H0;->m(Ljava/lang/Object;JI)V

    .line 37
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 38
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 40
    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/H0;->m(Ljava/lang/Object;JI)V

    .line 41
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 42
    :pswitch_c
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 44
    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/H0;->m(Ljava/lang/Object;JI)V

    .line 45
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 46
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 48
    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 50
    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->m(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 51
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 53
    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 54
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 55
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getBoolean(Ljava/lang/Object;J)Z

    move-result v2

    .line 57
    invoke-virtual {v1, p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/G0;->putBoolean(Ljava/lang/Object;JZ)V

    .line 58
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 59
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 61
    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/H0;->m(Ljava/lang/Object;JI)V

    .line 62
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 63
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 65
    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/H0;->n(Ljava/lang/Object;JJ)V

    .line 66
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 67
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 69
    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/H0;->m(Ljava/lang/Object;JI)V

    .line 70
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 71
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 73
    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/H0;->n(Ljava/lang/Object;JJ)V

    .line 74
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 75
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 77
    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/H0;->n(Ljava/lang/Object;JJ)V

    .line 78
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 79
    :pswitch_16
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getFloat(Ljava/lang/Object;J)F

    move-result v2

    .line 81
    invoke-virtual {v1, p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/G0;->putFloat(Ljava/lang/Object;JF)V

    .line 82
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 83
    :pswitch_17
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    sget-object v4, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    invoke-virtual {v4, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/G0;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v8

    move-object v5, p1

    .line 85
    invoke-virtual/range {v4 .. v9}, Landroidx/datastore/preferences/protobuf/G0;->putDouble(Ljava/lang/Object;JD)V

    .line 86
    invoke-virtual {p0, v0, v5}, Landroidx/datastore/preferences/protobuf/b0;->y(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x3

    move-object p1, v5

    goto/16 :goto_0

    :cond_1
    move-object v5, p1

    .line 87
    iget-boolean p1, p0, Landroidx/datastore/preferences/protobuf/b0;->g:Z

    if-nez p1, :cond_2

    .line 88
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/b0;->m:Landroidx/datastore/preferences/protobuf/w0;

    invoke-static {p1, v5, p2}, Landroidx/datastore/preferences/protobuf/n0;->x(Landroidx/datastore/preferences/protobuf/w0;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/b0;->B(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    .line 6
    .line 7
    aget v1, v1, p1

    .line 8
    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v0, v2

    .line 13
    int-to-long v2, v0

    .line 14
    invoke-virtual {p0, p3, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 22
    .line 23
    invoke-virtual {v0, p2, v2, v3}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v0, p3, v2, v3}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    invoke-static {v4, p3}, Landroidx/datastore/preferences/protobuf/I;->b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/a0;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-static {p2, v2, v3, p3}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p2, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    if-eqz p3, :cond_2

    .line 47
    .line 48
    invoke-static {p2, v2, v3, p3}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p2, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->z(Ljava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->e:Landroidx/datastore/preferences/protobuf/a0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/b0;->k:Landroidx/datastore/preferences/protobuf/d0;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/d0;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final s(I)I
    .locals 7

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/b0;->c:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-lt p1, v0, :cond_2

    .line 5
    .line 6
    iget v0, p0, Landroidx/datastore/preferences/protobuf/b0;->d:I

    .line 7
    .line 8
    if-gt p1, v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    .line 11
    .line 12
    array-length v2, v0

    .line 13
    div-int/lit8 v2, v2, 0x3

    .line 14
    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-gt v3, v2, :cond_2

    .line 19
    .line 20
    add-int v4, v2, v3

    .line 21
    .line 22
    ushr-int/lit8 v4, v4, 0x1

    .line 23
    .line 24
    mul-int/lit8 v5, v4, 0x3

    .line 25
    .line 26
    aget v6, v0, v5

    .line 27
    .line 28
    if-ne p1, v6, :cond_0

    .line 29
    .line 30
    return v5

    .line 31
    :cond_0
    if-ge p1, v6, :cond_1

    .line 32
    .line 33
    add-int/lit8 v4, v4, -0x1

    .line 34
    .line 35
    move v2, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    move v3, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return v1
.end method

.method public final t(Ljava/lang/Object;JLandroidx/datastore/preferences/protobuf/k0;Landroidx/datastore/preferences/protobuf/l0;Landroidx/datastore/preferences/protobuf/w;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->l:Landroidx/datastore/preferences/protobuf/N;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p3, p1}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p4, p1, p5, p6}, Landroidx/datastore/preferences/protobuf/k0;->readGroupList(Ljava/util/List;Landroidx/datastore/preferences/protobuf/l0;Landroidx/datastore/preferences/protobuf/w;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final u(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/k0;Landroidx/datastore/preferences/protobuf/l0;Landroidx/datastore/preferences/protobuf/w;)V
    .locals 2

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p2, v0

    .line 5
    int-to-long v0, p2

    .line 6
    iget-object p2, p0, Landroidx/datastore/preferences/protobuf/b0;->l:Landroidx/datastore/preferences/protobuf/N;

    .line 7
    .line 8
    invoke-virtual {p2, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p3, p1, p4, p5}, Landroidx/datastore/preferences/protobuf/k0;->readMessageList(Ljava/util/List;Landroidx/datastore/preferences/protobuf/l0;Landroidx/datastore/preferences/protobuf/w;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final v(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/k0;)V
    .locals 2

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr v0, p2

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const v1, 0xfffff

    .line 10
    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    and-int/2addr p2, v1

    .line 15
    int-to-long v0, p2

    .line 16
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/k0;->readStringRequireUtf8()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/b0;->f:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    and-int/2addr p2, v1

    .line 29
    int-to-long v0, p2

    .line 30
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/k0;->readString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    and-int/2addr p2, v1

    .line 39
    int-to-long v0, p2

    .line 40
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/k0;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/H0;->o(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final w(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/k0;)V
    .locals 3

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr v0, p2

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const v1, 0xfffff

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/b0;->l:Landroidx/datastore/preferences/protobuf/N;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    and-int/2addr p2, v1

    .line 17
    int-to-long v0, p2

    .line 18
    invoke-virtual {v2, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p3, p1}, Landroidx/datastore/preferences/protobuf/k0;->readStringListRequireUtf8(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    and-int/2addr p2, v1

    .line 27
    int-to-long v0, p2

    .line 28
    invoke-virtual {v2, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/N;->c(JLjava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p3, p1}, Landroidx/datastore/preferences/protobuf/k0;->readStringList(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public writeTo(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/L0;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroidx/datastore/preferences/protobuf/L0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Landroidx/datastore/preferences/protobuf/t;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/t;->fieldOrder()Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->e:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    .line 10
    .line 11
    const v3, 0xfffff

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/b0;->m:Landroidx/datastore/preferences/protobuf/w0;

    .line 17
    .line 18
    if-ne v0, v1, :cond_2

    .line 19
    .line 20
    check-cast v6, Landroidx/datastore/preferences/protobuf/y0;

    .line 21
    .line 22
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-object v0, p1

    .line 26
    check-cast v0, Landroidx/datastore/preferences/protobuf/F;

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/x0;->writeTo(Landroidx/datastore/preferences/protobuf/L0;)V

    .line 31
    .line 32
    .line 33
    array-length v0, v2

    .line 34
    add-int/lit8 v0, v0, -0x3

    .line 35
    .line 36
    :goto_0
    if-ltz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/b0;->B(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    aget v6, v2, v0

    .line 43
    .line 44
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/b0;->A(I)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    packed-switch v7, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :pswitch_0
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_0

    .line 58
    .line 59
    and-int/2addr v1, v3

    .line 60
    int-to-long v7, v1

    .line 61
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 62
    .line 63
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {p2, v6, v1, v7}, Landroidx/datastore/preferences/protobuf/t;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :pswitch_1
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_0

    .line 81
    .line 82
    and-int/2addr v1, v3

    .line 83
    int-to-long v7, v1

    .line 84
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/t;->writeSInt64(IJ)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :pswitch_2
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_0

    .line 98
    .line 99
    and-int/2addr v1, v3

    .line 100
    int-to-long v7, v1

    .line 101
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeSInt32(II)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :pswitch_3
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-eqz v7, :cond_0

    .line 115
    .line 116
    and-int/2addr v1, v3

    .line 117
    int-to-long v7, v1

    .line 118
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v7

    .line 122
    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/t;->writeSFixed64(IJ)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :pswitch_4
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-eqz v7, :cond_0

    .line 132
    .line 133
    and-int/2addr v1, v3

    .line 134
    int-to-long v7, v1

    .line 135
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeSFixed32(II)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_1

    .line 143
    .line 144
    :pswitch_5
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eqz v7, :cond_0

    .line 149
    .line 150
    and-int/2addr v1, v3

    .line 151
    int-to-long v7, v1

    .line 152
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeEnum(II)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_1

    .line 160
    .line 161
    :pswitch_6
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_0

    .line 166
    .line 167
    and-int/2addr v1, v3

    .line 168
    int-to-long v7, v1

    .line 169
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeUInt32(II)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :pswitch_7
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_0

    .line 183
    .line 184
    and-int/2addr v1, v3

    .line 185
    int-to-long v7, v1

    .line 186
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 187
    .line 188
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 193
    .line 194
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :pswitch_8
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-eqz v7, :cond_0

    .line 204
    .line 205
    and-int/2addr v1, v3

    .line 206
    int-to-long v7, v1

    .line 207
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 208
    .line 209
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    invoke-virtual {p2, v6, v1, v7}, Landroidx/datastore/preferences/protobuf/t;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_1

    .line 221
    .line 222
    :pswitch_9
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    if-eqz v7, :cond_0

    .line 227
    .line 228
    and-int/2addr v1, v3

    .line 229
    int-to-long v7, v1

    .line 230
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 231
    .line 232
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-static {v6, v1, p2}, Landroidx/datastore/preferences/protobuf/b0;->E(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/t;)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :pswitch_a
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    if-eqz v7, :cond_0

    .line 246
    .line 247
    and-int/2addr v1, v3

    .line 248
    int-to-long v7, v1

    .line 249
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 250
    .line 251
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Ljava/lang/Boolean;

    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeBool(IZ)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_1

    .line 265
    .line 266
    :pswitch_b
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    if-eqz v7, :cond_0

    .line 271
    .line 272
    and-int/2addr v1, v3

    .line 273
    int-to-long v7, v1

    .line 274
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeFixed32(II)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_1

    .line 282
    .line 283
    :pswitch_c
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    if-eqz v7, :cond_0

    .line 288
    .line 289
    and-int/2addr v1, v3

    .line 290
    int-to-long v7, v1

    .line 291
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 292
    .line 293
    .line 294
    move-result-wide v7

    .line 295
    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/t;->writeFixed64(IJ)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_1

    .line 299
    .line 300
    :pswitch_d
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    if-eqz v7, :cond_0

    .line 305
    .line 306
    and-int/2addr v1, v3

    .line 307
    int-to-long v7, v1

    .line 308
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeInt32(II)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_1

    .line 316
    .line 317
    :pswitch_e
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 318
    .line 319
    .line 320
    move-result v7

    .line 321
    if-eqz v7, :cond_0

    .line 322
    .line 323
    and-int/2addr v1, v3

    .line 324
    int-to-long v7, v1

    .line 325
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 326
    .line 327
    .line 328
    move-result-wide v7

    .line 329
    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/t;->writeUInt64(IJ)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_1

    .line 333
    .line 334
    :pswitch_f
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    if-eqz v7, :cond_0

    .line 339
    .line 340
    and-int/2addr v1, v3

    .line 341
    int-to-long v7, v1

    .line 342
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 343
    .line 344
    .line 345
    move-result-wide v7

    .line 346
    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/t;->writeInt64(IJ)V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_1

    .line 350
    .line 351
    :pswitch_10
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 352
    .line 353
    .line 354
    move-result v7

    .line 355
    if-eqz v7, :cond_0

    .line 356
    .line 357
    and-int/2addr v1, v3

    .line 358
    int-to-long v7, v1

    .line 359
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 360
    .line 361
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    check-cast v1, Ljava/lang/Float;

    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeFloat(IF)V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_1

    .line 375
    .line 376
    :pswitch_11
    invoke-virtual {p0, p1, v6, v0}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 377
    .line 378
    .line 379
    move-result v7

    .line 380
    if-eqz v7, :cond_0

    .line 381
    .line 382
    and-int/2addr v1, v3

    .line 383
    int-to-long v7, v1

    .line 384
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 385
    .line 386
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    check-cast v1, Ljava/lang/Double;

    .line 391
    .line 392
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 393
    .line 394
    .line 395
    move-result-wide v7

    .line 396
    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/t;->writeDouble(ID)V

    .line 397
    .line 398
    .line 399
    goto/16 :goto_1

    .line 400
    .line 401
    :pswitch_12
    and-int/2addr v1, v3

    .line 402
    int-to-long v7, v1

    .line 403
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 404
    .line 405
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-virtual {p0, p2, v6, v1, v0}, Landroidx/datastore/preferences/protobuf/b0;->D(Landroidx/datastore/preferences/protobuf/t;ILjava/lang/Object;I)V

    .line 410
    .line 411
    .line 412
    goto/16 :goto_1

    .line 413
    .line 414
    :pswitch_13
    aget v6, v2, v0

    .line 415
    .line 416
    and-int/2addr v1, v3

    .line 417
    int-to-long v7, v1

    .line 418
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 419
    .line 420
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    check-cast v1, Ljava/util/List;

    .line 425
    .line 426
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 427
    .line 428
    .line 429
    move-result-object v7

    .line 430
    invoke-static {v6, v1, p2, v7}, Landroidx/datastore/preferences/protobuf/n0;->writeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_1

    .line 434
    .line 435
    :pswitch_14
    aget v6, v2, v0

    .line 436
    .line 437
    and-int/2addr v1, v3

    .line 438
    int-to-long v7, v1

    .line 439
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 440
    .line 441
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    check-cast v1, Ljava/util/List;

    .line 446
    .line 447
    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 448
    .line 449
    .line 450
    goto/16 :goto_1

    .line 451
    .line 452
    :pswitch_15
    aget v6, v2, v0

    .line 453
    .line 454
    and-int/2addr v1, v3

    .line 455
    int-to-long v7, v1

    .line 456
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 457
    .line 458
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    check-cast v1, Ljava/util/List;

    .line 463
    .line 464
    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 465
    .line 466
    .line 467
    goto/16 :goto_1

    .line 468
    .line 469
    :pswitch_16
    aget v6, v2, v0

    .line 470
    .line 471
    and-int/2addr v1, v3

    .line 472
    int-to-long v7, v1

    .line 473
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 474
    .line 475
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    check-cast v1, Ljava/util/List;

    .line 480
    .line 481
    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 482
    .line 483
    .line 484
    goto/16 :goto_1

    .line 485
    .line 486
    :pswitch_17
    aget v6, v2, v0

    .line 487
    .line 488
    and-int/2addr v1, v3

    .line 489
    int-to-long v7, v1

    .line 490
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 491
    .line 492
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    check-cast v1, Ljava/util/List;

    .line 497
    .line 498
    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 499
    .line 500
    .line 501
    goto/16 :goto_1

    .line 502
    .line 503
    :pswitch_18
    aget v6, v2, v0

    .line 504
    .line 505
    and-int/2addr v1, v3

    .line 506
    int-to-long v7, v1

    .line 507
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 508
    .line 509
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    check-cast v1, Ljava/util/List;

    .line 514
    .line 515
    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 516
    .line 517
    .line 518
    goto/16 :goto_1

    .line 519
    .line 520
    :pswitch_19
    aget v6, v2, v0

    .line 521
    .line 522
    and-int/2addr v1, v3

    .line 523
    int-to-long v7, v1

    .line 524
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 525
    .line 526
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    check-cast v1, Ljava/util/List;

    .line 531
    .line 532
    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 533
    .line 534
    .line 535
    goto/16 :goto_1

    .line 536
    .line 537
    :pswitch_1a
    aget v6, v2, v0

    .line 538
    .line 539
    and-int/2addr v1, v3

    .line 540
    int-to-long v7, v1

    .line 541
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 542
    .line 543
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    check-cast v1, Ljava/util/List;

    .line 548
    .line 549
    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_1

    .line 553
    .line 554
    :pswitch_1b
    aget v6, v2, v0

    .line 555
    .line 556
    and-int/2addr v1, v3

    .line 557
    int-to-long v7, v1

    .line 558
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 559
    .line 560
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    check-cast v1, Ljava/util/List;

    .line 565
    .line 566
    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 567
    .line 568
    .line 569
    goto/16 :goto_1

    .line 570
    .line 571
    :pswitch_1c
    aget v6, v2, v0

    .line 572
    .line 573
    and-int/2addr v1, v3

    .line 574
    int-to-long v7, v1

    .line 575
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 576
    .line 577
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    check-cast v1, Ljava/util/List;

    .line 582
    .line 583
    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 584
    .line 585
    .line 586
    goto/16 :goto_1

    .line 587
    .line 588
    :pswitch_1d
    aget v6, v2, v0

    .line 589
    .line 590
    and-int/2addr v1, v3

    .line 591
    int-to-long v7, v1

    .line 592
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 593
    .line 594
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    check-cast v1, Ljava/util/List;

    .line 599
    .line 600
    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 601
    .line 602
    .line 603
    goto/16 :goto_1

    .line 604
    .line 605
    :pswitch_1e
    aget v6, v2, v0

    .line 606
    .line 607
    and-int/2addr v1, v3

    .line 608
    int-to-long v7, v1

    .line 609
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 610
    .line 611
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    check-cast v1, Ljava/util/List;

    .line 616
    .line 617
    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 618
    .line 619
    .line 620
    goto/16 :goto_1

    .line 621
    .line 622
    :pswitch_1f
    aget v6, v2, v0

    .line 623
    .line 624
    and-int/2addr v1, v3

    .line 625
    int-to-long v7, v1

    .line 626
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 627
    .line 628
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    check-cast v1, Ljava/util/List;

    .line 633
    .line 634
    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 635
    .line 636
    .line 637
    goto/16 :goto_1

    .line 638
    .line 639
    :pswitch_20
    aget v6, v2, v0

    .line 640
    .line 641
    and-int/2addr v1, v3

    .line 642
    int-to-long v7, v1

    .line 643
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 644
    .line 645
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v1

    .line 649
    check-cast v1, Ljava/util/List;

    .line 650
    .line 651
    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 652
    .line 653
    .line 654
    goto/16 :goto_1

    .line 655
    .line 656
    :pswitch_21
    aget v6, v2, v0

    .line 657
    .line 658
    and-int/2addr v1, v3

    .line 659
    int-to-long v7, v1

    .line 660
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 661
    .line 662
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    check-cast v1, Ljava/util/List;

    .line 667
    .line 668
    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 669
    .line 670
    .line 671
    goto/16 :goto_1

    .line 672
    .line 673
    :pswitch_22
    aget v6, v2, v0

    .line 674
    .line 675
    and-int/2addr v1, v3

    .line 676
    int-to-long v7, v1

    .line 677
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 678
    .line 679
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    check-cast v1, Ljava/util/List;

    .line 684
    .line 685
    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_1

    .line 689
    .line 690
    :pswitch_23
    aget v6, v2, v0

    .line 691
    .line 692
    and-int/2addr v1, v3

    .line 693
    int-to-long v7, v1

    .line 694
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 695
    .line 696
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v1

    .line 700
    check-cast v1, Ljava/util/List;

    .line 701
    .line 702
    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 703
    .line 704
    .line 705
    goto/16 :goto_1

    .line 706
    .line 707
    :pswitch_24
    aget v6, v2, v0

    .line 708
    .line 709
    and-int/2addr v1, v3

    .line 710
    int-to-long v7, v1

    .line 711
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 712
    .line 713
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    check-cast v1, Ljava/util/List;

    .line 718
    .line 719
    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 720
    .line 721
    .line 722
    goto/16 :goto_1

    .line 723
    .line 724
    :pswitch_25
    aget v6, v2, v0

    .line 725
    .line 726
    and-int/2addr v1, v3

    .line 727
    int-to-long v7, v1

    .line 728
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 729
    .line 730
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    check-cast v1, Ljava/util/List;

    .line 735
    .line 736
    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 737
    .line 738
    .line 739
    goto/16 :goto_1

    .line 740
    .line 741
    :pswitch_26
    aget v6, v2, v0

    .line 742
    .line 743
    and-int/2addr v1, v3

    .line 744
    int-to-long v7, v1

    .line 745
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 746
    .line 747
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v1

    .line 751
    check-cast v1, Ljava/util/List;

    .line 752
    .line 753
    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 754
    .line 755
    .line 756
    goto/16 :goto_1

    .line 757
    .line 758
    :pswitch_27
    aget v6, v2, v0

    .line 759
    .line 760
    and-int/2addr v1, v3

    .line 761
    int-to-long v7, v1

    .line 762
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 763
    .line 764
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v1

    .line 768
    check-cast v1, Ljava/util/List;

    .line 769
    .line 770
    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 771
    .line 772
    .line 773
    goto/16 :goto_1

    .line 774
    .line 775
    :pswitch_28
    aget v6, v2, v0

    .line 776
    .line 777
    and-int/2addr v1, v3

    .line 778
    int-to-long v7, v1

    .line 779
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 780
    .line 781
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    check-cast v1, Ljava/util/List;

    .line 786
    .line 787
    invoke-static {v6, v1, p2}, Landroidx/datastore/preferences/protobuf/n0;->writeBytesList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;)V

    .line 788
    .line 789
    .line 790
    goto/16 :goto_1

    .line 791
    .line 792
    :pswitch_29
    aget v6, v2, v0

    .line 793
    .line 794
    and-int/2addr v1, v3

    .line 795
    int-to-long v7, v1

    .line 796
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 797
    .line 798
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    check-cast v1, Ljava/util/List;

    .line 803
    .line 804
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 805
    .line 806
    .line 807
    move-result-object v7

    .line 808
    invoke-static {v6, v1, p2, v7}, Landroidx/datastore/preferences/protobuf/n0;->writeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 809
    .line 810
    .line 811
    goto/16 :goto_1

    .line 812
    .line 813
    :pswitch_2a
    aget v6, v2, v0

    .line 814
    .line 815
    and-int/2addr v1, v3

    .line 816
    int-to-long v7, v1

    .line 817
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 818
    .line 819
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    check-cast v1, Ljava/util/List;

    .line 824
    .line 825
    invoke-static {v6, v1, p2}, Landroidx/datastore/preferences/protobuf/n0;->writeStringList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;)V

    .line 826
    .line 827
    .line 828
    goto/16 :goto_1

    .line 829
    .line 830
    :pswitch_2b
    aget v6, v2, v0

    .line 831
    .line 832
    and-int/2addr v1, v3

    .line 833
    int-to-long v7, v1

    .line 834
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 835
    .line 836
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    check-cast v1, Ljava/util/List;

    .line 841
    .line 842
    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 843
    .line 844
    .line 845
    goto/16 :goto_1

    .line 846
    .line 847
    :pswitch_2c
    aget v6, v2, v0

    .line 848
    .line 849
    and-int/2addr v1, v3

    .line 850
    int-to-long v7, v1

    .line 851
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 852
    .line 853
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    move-result-object v1

    .line 857
    check-cast v1, Ljava/util/List;

    .line 858
    .line 859
    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 860
    .line 861
    .line 862
    goto/16 :goto_1

    .line 863
    .line 864
    :pswitch_2d
    aget v6, v2, v0

    .line 865
    .line 866
    and-int/2addr v1, v3

    .line 867
    int-to-long v7, v1

    .line 868
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 869
    .line 870
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v1

    .line 874
    check-cast v1, Ljava/util/List;

    .line 875
    .line 876
    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 877
    .line 878
    .line 879
    goto/16 :goto_1

    .line 880
    .line 881
    :pswitch_2e
    aget v6, v2, v0

    .line 882
    .line 883
    and-int/2addr v1, v3

    .line 884
    int-to-long v7, v1

    .line 885
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 886
    .line 887
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    move-result-object v1

    .line 891
    check-cast v1, Ljava/util/List;

    .line 892
    .line 893
    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 894
    .line 895
    .line 896
    goto/16 :goto_1

    .line 897
    .line 898
    :pswitch_2f
    aget v6, v2, v0

    .line 899
    .line 900
    and-int/2addr v1, v3

    .line 901
    int-to-long v7, v1

    .line 902
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 903
    .line 904
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object v1

    .line 908
    check-cast v1, Ljava/util/List;

    .line 909
    .line 910
    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 911
    .line 912
    .line 913
    goto/16 :goto_1

    .line 914
    .line 915
    :pswitch_30
    aget v6, v2, v0

    .line 916
    .line 917
    and-int/2addr v1, v3

    .line 918
    int-to-long v7, v1

    .line 919
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 920
    .line 921
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    check-cast v1, Ljava/util/List;

    .line 926
    .line 927
    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 928
    .line 929
    .line 930
    goto/16 :goto_1

    .line 931
    .line 932
    :pswitch_31
    aget v6, v2, v0

    .line 933
    .line 934
    and-int/2addr v1, v3

    .line 935
    int-to-long v7, v1

    .line 936
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 937
    .line 938
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v1

    .line 942
    check-cast v1, Ljava/util/List;

    .line 943
    .line 944
    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 945
    .line 946
    .line 947
    goto/16 :goto_1

    .line 948
    .line 949
    :pswitch_32
    aget v6, v2, v0

    .line 950
    .line 951
    and-int/2addr v1, v3

    .line 952
    int-to-long v7, v1

    .line 953
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 954
    .line 955
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    move-result-object v1

    .line 959
    check-cast v1, Ljava/util/List;

    .line 960
    .line 961
    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 962
    .line 963
    .line 964
    goto/16 :goto_1

    .line 965
    .line 966
    :pswitch_33
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 967
    .line 968
    .line 969
    move-result v7

    .line 970
    if-eqz v7, :cond_0

    .line 971
    .line 972
    and-int/2addr v1, v3

    .line 973
    int-to-long v7, v1

    .line 974
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 975
    .line 976
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object v1

    .line 980
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 981
    .line 982
    .line 983
    move-result-object v7

    .line 984
    invoke-virtual {p2, v6, v1, v7}, Landroidx/datastore/preferences/protobuf/t;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 985
    .line 986
    .line 987
    goto/16 :goto_1

    .line 988
    .line 989
    :pswitch_34
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 990
    .line 991
    .line 992
    move-result v7

    .line 993
    if-eqz v7, :cond_0

    .line 994
    .line 995
    and-int/2addr v1, v3

    .line 996
    int-to-long v7, v1

    .line 997
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 998
    .line 999
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 1000
    .line 1001
    .line 1002
    move-result-wide v7

    .line 1003
    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/t;->writeSInt64(IJ)V

    .line 1004
    .line 1005
    .line 1006
    goto/16 :goto_1

    .line 1007
    .line 1008
    :pswitch_35
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1009
    .line 1010
    .line 1011
    move-result v7

    .line 1012
    if-eqz v7, :cond_0

    .line 1013
    .line 1014
    and-int/2addr v1, v3

    .line 1015
    int-to-long v7, v1

    .line 1016
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1017
    .line 1018
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 1019
    .line 1020
    .line 1021
    move-result v1

    .line 1022
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeSInt32(II)V

    .line 1023
    .line 1024
    .line 1025
    goto/16 :goto_1

    .line 1026
    .line 1027
    :pswitch_36
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1028
    .line 1029
    .line 1030
    move-result v7

    .line 1031
    if-eqz v7, :cond_0

    .line 1032
    .line 1033
    and-int/2addr v1, v3

    .line 1034
    int-to-long v7, v1

    .line 1035
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1036
    .line 1037
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 1038
    .line 1039
    .line 1040
    move-result-wide v7

    .line 1041
    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/t;->writeSFixed64(IJ)V

    .line 1042
    .line 1043
    .line 1044
    goto/16 :goto_1

    .line 1045
    .line 1046
    :pswitch_37
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1047
    .line 1048
    .line 1049
    move-result v7

    .line 1050
    if-eqz v7, :cond_0

    .line 1051
    .line 1052
    and-int/2addr v1, v3

    .line 1053
    int-to-long v7, v1

    .line 1054
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1055
    .line 1056
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 1057
    .line 1058
    .line 1059
    move-result v1

    .line 1060
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeSFixed32(II)V

    .line 1061
    .line 1062
    .line 1063
    goto/16 :goto_1

    .line 1064
    .line 1065
    :pswitch_38
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v7

    .line 1069
    if-eqz v7, :cond_0

    .line 1070
    .line 1071
    and-int/2addr v1, v3

    .line 1072
    int-to-long v7, v1

    .line 1073
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1074
    .line 1075
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 1076
    .line 1077
    .line 1078
    move-result v1

    .line 1079
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeEnum(II)V

    .line 1080
    .line 1081
    .line 1082
    goto/16 :goto_1

    .line 1083
    .line 1084
    :pswitch_39
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1085
    .line 1086
    .line 1087
    move-result v7

    .line 1088
    if-eqz v7, :cond_0

    .line 1089
    .line 1090
    and-int/2addr v1, v3

    .line 1091
    int-to-long v7, v1

    .line 1092
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1093
    .line 1094
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 1095
    .line 1096
    .line 1097
    move-result v1

    .line 1098
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeUInt32(II)V

    .line 1099
    .line 1100
    .line 1101
    goto/16 :goto_1

    .line 1102
    .line 1103
    :pswitch_3a
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1104
    .line 1105
    .line 1106
    move-result v7

    .line 1107
    if-eqz v7, :cond_0

    .line 1108
    .line 1109
    and-int/2addr v1, v3

    .line 1110
    int-to-long v7, v1

    .line 1111
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1112
    .line 1113
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v1

    .line 1117
    check-cast v1, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1118
    .line 1119
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 1120
    .line 1121
    .line 1122
    goto/16 :goto_1

    .line 1123
    .line 1124
    :pswitch_3b
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1125
    .line 1126
    .line 1127
    move-result v7

    .line 1128
    if-eqz v7, :cond_0

    .line 1129
    .line 1130
    and-int/2addr v1, v3

    .line 1131
    int-to-long v7, v1

    .line 1132
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1133
    .line 1134
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v1

    .line 1138
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v7

    .line 1142
    invoke-virtual {p2, v6, v1, v7}, Landroidx/datastore/preferences/protobuf/t;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 1143
    .line 1144
    .line 1145
    goto/16 :goto_1

    .line 1146
    .line 1147
    :pswitch_3c
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1148
    .line 1149
    .line 1150
    move-result v7

    .line 1151
    if-eqz v7, :cond_0

    .line 1152
    .line 1153
    and-int/2addr v1, v3

    .line 1154
    int-to-long v7, v1

    .line 1155
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1156
    .line 1157
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v1

    .line 1161
    invoke-static {v6, v1, p2}, Landroidx/datastore/preferences/protobuf/b0;->E(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/t;)V

    .line 1162
    .line 1163
    .line 1164
    goto/16 :goto_1

    .line 1165
    .line 1166
    :pswitch_3d
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1167
    .line 1168
    .line 1169
    move-result v7

    .line 1170
    if-eqz v7, :cond_0

    .line 1171
    .line 1172
    and-int/2addr v1, v3

    .line 1173
    int-to-long v7, v1

    .line 1174
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1175
    .line 1176
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getBoolean(Ljava/lang/Object;J)Z

    .line 1177
    .line 1178
    .line 1179
    move-result v1

    .line 1180
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeBool(IZ)V

    .line 1181
    .line 1182
    .line 1183
    goto/16 :goto_1

    .line 1184
    .line 1185
    :pswitch_3e
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1186
    .line 1187
    .line 1188
    move-result v7

    .line 1189
    if-eqz v7, :cond_0

    .line 1190
    .line 1191
    and-int/2addr v1, v3

    .line 1192
    int-to-long v7, v1

    .line 1193
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1194
    .line 1195
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 1196
    .line 1197
    .line 1198
    move-result v1

    .line 1199
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeFixed32(II)V

    .line 1200
    .line 1201
    .line 1202
    goto :goto_1

    .line 1203
    :pswitch_3f
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1204
    .line 1205
    .line 1206
    move-result v7

    .line 1207
    if-eqz v7, :cond_0

    .line 1208
    .line 1209
    and-int/2addr v1, v3

    .line 1210
    int-to-long v7, v1

    .line 1211
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1212
    .line 1213
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 1214
    .line 1215
    .line 1216
    move-result-wide v7

    .line 1217
    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/t;->writeFixed64(IJ)V

    .line 1218
    .line 1219
    .line 1220
    goto :goto_1

    .line 1221
    :pswitch_40
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1222
    .line 1223
    .line 1224
    move-result v7

    .line 1225
    if-eqz v7, :cond_0

    .line 1226
    .line 1227
    and-int/2addr v1, v3

    .line 1228
    int-to-long v7, v1

    .line 1229
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1230
    .line 1231
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 1232
    .line 1233
    .line 1234
    move-result v1

    .line 1235
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeInt32(II)V

    .line 1236
    .line 1237
    .line 1238
    goto :goto_1

    .line 1239
    :pswitch_41
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1240
    .line 1241
    .line 1242
    move-result v7

    .line 1243
    if-eqz v7, :cond_0

    .line 1244
    .line 1245
    and-int/2addr v1, v3

    .line 1246
    int-to-long v7, v1

    .line 1247
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1248
    .line 1249
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 1250
    .line 1251
    .line 1252
    move-result-wide v7

    .line 1253
    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/t;->writeUInt64(IJ)V

    .line 1254
    .line 1255
    .line 1256
    goto :goto_1

    .line 1257
    :pswitch_42
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1258
    .line 1259
    .line 1260
    move-result v7

    .line 1261
    if-eqz v7, :cond_0

    .line 1262
    .line 1263
    and-int/2addr v1, v3

    .line 1264
    int-to-long v7, v1

    .line 1265
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1266
    .line 1267
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 1268
    .line 1269
    .line 1270
    move-result-wide v7

    .line 1271
    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/t;->writeInt64(IJ)V

    .line 1272
    .line 1273
    .line 1274
    goto :goto_1

    .line 1275
    :pswitch_43
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1276
    .line 1277
    .line 1278
    move-result v7

    .line 1279
    if-eqz v7, :cond_0

    .line 1280
    .line 1281
    and-int/2addr v1, v3

    .line 1282
    int-to-long v7, v1

    .line 1283
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1284
    .line 1285
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getFloat(Ljava/lang/Object;J)F

    .line 1286
    .line 1287
    .line 1288
    move-result v1

    .line 1289
    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/t;->writeFloat(IF)V

    .line 1290
    .line 1291
    .line 1292
    goto :goto_1

    .line 1293
    :pswitch_44
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 1294
    .line 1295
    .line 1296
    move-result v7

    .line 1297
    if-eqz v7, :cond_0

    .line 1298
    .line 1299
    and-int/2addr v1, v3

    .line 1300
    int-to-long v7, v1

    .line 1301
    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1302
    .line 1303
    invoke-virtual {v1, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/G0;->getDouble(Ljava/lang/Object;J)D

    .line 1304
    .line 1305
    .line 1306
    move-result-wide v7

    .line 1307
    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/t;->writeDouble(ID)V

    .line 1308
    .line 1309
    .line 1310
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x3

    .line 1311
    .line 1312
    goto/16 :goto_0

    .line 1313
    .line 1314
    :cond_1
    return-void

    .line 1315
    :cond_2
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/b0;->g:Z

    .line 1316
    .line 1317
    if-eqz v0, :cond_5

    .line 1318
    .line 1319
    array-length v0, v2

    .line 1320
    move v1, v5

    .line 1321
    :goto_2
    if-ge v1, v0, :cond_4

    .line 1322
    .line 1323
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/b0;->B(I)I

    .line 1324
    .line 1325
    .line 1326
    move-result v7

    .line 1327
    aget v8, v2, v1

    .line 1328
    .line 1329
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/b0;->A(I)I

    .line 1330
    .line 1331
    .line 1332
    move-result v9

    .line 1333
    packed-switch v9, :pswitch_data_1

    .line 1334
    .line 1335
    .line 1336
    goto/16 :goto_3

    .line 1337
    .line 1338
    :pswitch_45
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1339
    .line 1340
    .line 1341
    move-result v9

    .line 1342
    if-eqz v9, :cond_3

    .line 1343
    .line 1344
    and-int/2addr v7, v3

    .line 1345
    int-to-long v9, v7

    .line 1346
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1347
    .line 1348
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v7

    .line 1352
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v9

    .line 1356
    invoke-virtual {p2, v8, v7, v9}, Landroidx/datastore/preferences/protobuf/t;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 1357
    .line 1358
    .line 1359
    goto/16 :goto_3

    .line 1360
    .line 1361
    :pswitch_46
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1362
    .line 1363
    .line 1364
    move-result v9

    .line 1365
    if-eqz v9, :cond_3

    .line 1366
    .line 1367
    and-int/2addr v7, v3

    .line 1368
    int-to-long v9, v7

    .line 1369
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 1370
    .line 1371
    .line 1372
    move-result-wide v9

    .line 1373
    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/t;->writeSInt64(IJ)V

    .line 1374
    .line 1375
    .line 1376
    goto/16 :goto_3

    .line 1377
    .line 1378
    :pswitch_47
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1379
    .line 1380
    .line 1381
    move-result v9

    .line 1382
    if-eqz v9, :cond_3

    .line 1383
    .line 1384
    and-int/2addr v7, v3

    .line 1385
    int-to-long v9, v7

    .line 1386
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 1387
    .line 1388
    .line 1389
    move-result v7

    .line 1390
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeSInt32(II)V

    .line 1391
    .line 1392
    .line 1393
    goto/16 :goto_3

    .line 1394
    .line 1395
    :pswitch_48
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1396
    .line 1397
    .line 1398
    move-result v9

    .line 1399
    if-eqz v9, :cond_3

    .line 1400
    .line 1401
    and-int/2addr v7, v3

    .line 1402
    int-to-long v9, v7

    .line 1403
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 1404
    .line 1405
    .line 1406
    move-result-wide v9

    .line 1407
    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/t;->writeSFixed64(IJ)V

    .line 1408
    .line 1409
    .line 1410
    goto/16 :goto_3

    .line 1411
    .line 1412
    :pswitch_49
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1413
    .line 1414
    .line 1415
    move-result v9

    .line 1416
    if-eqz v9, :cond_3

    .line 1417
    .line 1418
    and-int/2addr v7, v3

    .line 1419
    int-to-long v9, v7

    .line 1420
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 1421
    .line 1422
    .line 1423
    move-result v7

    .line 1424
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeSFixed32(II)V

    .line 1425
    .line 1426
    .line 1427
    goto/16 :goto_3

    .line 1428
    .line 1429
    :pswitch_4a
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1430
    .line 1431
    .line 1432
    move-result v9

    .line 1433
    if-eqz v9, :cond_3

    .line 1434
    .line 1435
    and-int/2addr v7, v3

    .line 1436
    int-to-long v9, v7

    .line 1437
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 1438
    .line 1439
    .line 1440
    move-result v7

    .line 1441
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeEnum(II)V

    .line 1442
    .line 1443
    .line 1444
    goto/16 :goto_3

    .line 1445
    .line 1446
    :pswitch_4b
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1447
    .line 1448
    .line 1449
    move-result v9

    .line 1450
    if-eqz v9, :cond_3

    .line 1451
    .line 1452
    and-int/2addr v7, v3

    .line 1453
    int-to-long v9, v7

    .line 1454
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 1455
    .line 1456
    .line 1457
    move-result v7

    .line 1458
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeUInt32(II)V

    .line 1459
    .line 1460
    .line 1461
    goto/16 :goto_3

    .line 1462
    .line 1463
    :pswitch_4c
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1464
    .line 1465
    .line 1466
    move-result v9

    .line 1467
    if-eqz v9, :cond_3

    .line 1468
    .line 1469
    and-int/2addr v7, v3

    .line 1470
    int-to-long v9, v7

    .line 1471
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1472
    .line 1473
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v7

    .line 1477
    check-cast v7, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 1478
    .line 1479
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 1480
    .line 1481
    .line 1482
    goto/16 :goto_3

    .line 1483
    .line 1484
    :pswitch_4d
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1485
    .line 1486
    .line 1487
    move-result v9

    .line 1488
    if-eqz v9, :cond_3

    .line 1489
    .line 1490
    and-int/2addr v7, v3

    .line 1491
    int-to-long v9, v7

    .line 1492
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1493
    .line 1494
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v7

    .line 1498
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v9

    .line 1502
    invoke-virtual {p2, v8, v7, v9}, Landroidx/datastore/preferences/protobuf/t;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 1503
    .line 1504
    .line 1505
    goto/16 :goto_3

    .line 1506
    .line 1507
    :pswitch_4e
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1508
    .line 1509
    .line 1510
    move-result v9

    .line 1511
    if-eqz v9, :cond_3

    .line 1512
    .line 1513
    and-int/2addr v7, v3

    .line 1514
    int-to-long v9, v7

    .line 1515
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1516
    .line 1517
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v7

    .line 1521
    invoke-static {v8, v7, p2}, Landroidx/datastore/preferences/protobuf/b0;->E(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/t;)V

    .line 1522
    .line 1523
    .line 1524
    goto/16 :goto_3

    .line 1525
    .line 1526
    :pswitch_4f
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1527
    .line 1528
    .line 1529
    move-result v9

    .line 1530
    if-eqz v9, :cond_3

    .line 1531
    .line 1532
    and-int/2addr v7, v3

    .line 1533
    int-to-long v9, v7

    .line 1534
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1535
    .line 1536
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v7

    .line 1540
    check-cast v7, Ljava/lang/Boolean;

    .line 1541
    .line 1542
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1543
    .line 1544
    .line 1545
    move-result v7

    .line 1546
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeBool(IZ)V

    .line 1547
    .line 1548
    .line 1549
    goto/16 :goto_3

    .line 1550
    .line 1551
    :pswitch_50
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1552
    .line 1553
    .line 1554
    move-result v9

    .line 1555
    if-eqz v9, :cond_3

    .line 1556
    .line 1557
    and-int/2addr v7, v3

    .line 1558
    int-to-long v9, v7

    .line 1559
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 1560
    .line 1561
    .line 1562
    move-result v7

    .line 1563
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeFixed32(II)V

    .line 1564
    .line 1565
    .line 1566
    goto/16 :goto_3

    .line 1567
    .line 1568
    :pswitch_51
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1569
    .line 1570
    .line 1571
    move-result v9

    .line 1572
    if-eqz v9, :cond_3

    .line 1573
    .line 1574
    and-int/2addr v7, v3

    .line 1575
    int-to-long v9, v7

    .line 1576
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 1577
    .line 1578
    .line 1579
    move-result-wide v9

    .line 1580
    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/t;->writeFixed64(IJ)V

    .line 1581
    .line 1582
    .line 1583
    goto/16 :goto_3

    .line 1584
    .line 1585
    :pswitch_52
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1586
    .line 1587
    .line 1588
    move-result v9

    .line 1589
    if-eqz v9, :cond_3

    .line 1590
    .line 1591
    and-int/2addr v7, v3

    .line 1592
    int-to-long v9, v7

    .line 1593
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->q(JLjava/lang/Object;)I

    .line 1594
    .line 1595
    .line 1596
    move-result v7

    .line 1597
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeInt32(II)V

    .line 1598
    .line 1599
    .line 1600
    goto/16 :goto_3

    .line 1601
    .line 1602
    :pswitch_53
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1603
    .line 1604
    .line 1605
    move-result v9

    .line 1606
    if-eqz v9, :cond_3

    .line 1607
    .line 1608
    and-int/2addr v7, v3

    .line 1609
    int-to-long v9, v7

    .line 1610
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 1611
    .line 1612
    .line 1613
    move-result-wide v9

    .line 1614
    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/t;->writeUInt64(IJ)V

    .line 1615
    .line 1616
    .line 1617
    goto/16 :goto_3

    .line 1618
    .line 1619
    :pswitch_54
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1620
    .line 1621
    .line 1622
    move-result v9

    .line 1623
    if-eqz v9, :cond_3

    .line 1624
    .line 1625
    and-int/2addr v7, v3

    .line 1626
    int-to-long v9, v7

    .line 1627
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/b0;->r(JLjava/lang/Object;)J

    .line 1628
    .line 1629
    .line 1630
    move-result-wide v9

    .line 1631
    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/t;->writeInt64(IJ)V

    .line 1632
    .line 1633
    .line 1634
    goto/16 :goto_3

    .line 1635
    .line 1636
    :pswitch_55
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1637
    .line 1638
    .line 1639
    move-result v9

    .line 1640
    if-eqz v9, :cond_3

    .line 1641
    .line 1642
    and-int/2addr v7, v3

    .line 1643
    int-to-long v9, v7

    .line 1644
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1645
    .line 1646
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v7

    .line 1650
    check-cast v7, Ljava/lang/Float;

    .line 1651
    .line 1652
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 1653
    .line 1654
    .line 1655
    move-result v7

    .line 1656
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeFloat(IF)V

    .line 1657
    .line 1658
    .line 1659
    goto/16 :goto_3

    .line 1660
    .line 1661
    :pswitch_56
    invoke-virtual {p0, p1, v8, v1}, Landroidx/datastore/preferences/protobuf/b0;->i(Ljava/lang/Object;II)Z

    .line 1662
    .line 1663
    .line 1664
    move-result v9

    .line 1665
    if-eqz v9, :cond_3

    .line 1666
    .line 1667
    and-int/2addr v7, v3

    .line 1668
    int-to-long v9, v7

    .line 1669
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1670
    .line 1671
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v7

    .line 1675
    check-cast v7, Ljava/lang/Double;

    .line 1676
    .line 1677
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 1678
    .line 1679
    .line 1680
    move-result-wide v9

    .line 1681
    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/t;->writeDouble(ID)V

    .line 1682
    .line 1683
    .line 1684
    goto/16 :goto_3

    .line 1685
    .line 1686
    :pswitch_57
    and-int/2addr v7, v3

    .line 1687
    int-to-long v9, v7

    .line 1688
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1689
    .line 1690
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v7

    .line 1694
    invoke-virtual {p0, p2, v8, v7, v1}, Landroidx/datastore/preferences/protobuf/b0;->D(Landroidx/datastore/preferences/protobuf/t;ILjava/lang/Object;I)V

    .line 1695
    .line 1696
    .line 1697
    goto/16 :goto_3

    .line 1698
    .line 1699
    :pswitch_58
    aget v8, v2, v1

    .line 1700
    .line 1701
    and-int/2addr v7, v3

    .line 1702
    int-to-long v9, v7

    .line 1703
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1704
    .line 1705
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v7

    .line 1709
    check-cast v7, Ljava/util/List;

    .line 1710
    .line 1711
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v9

    .line 1715
    invoke-static {v8, v7, p2, v9}, Landroidx/datastore/preferences/protobuf/n0;->writeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 1716
    .line 1717
    .line 1718
    goto/16 :goto_3

    .line 1719
    .line 1720
    :pswitch_59
    aget v8, v2, v1

    .line 1721
    .line 1722
    and-int/2addr v7, v3

    .line 1723
    int-to-long v9, v7

    .line 1724
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1725
    .line 1726
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v7

    .line 1730
    check-cast v7, Ljava/util/List;

    .line 1731
    .line 1732
    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 1733
    .line 1734
    .line 1735
    goto/16 :goto_3

    .line 1736
    .line 1737
    :pswitch_5a
    aget v8, v2, v1

    .line 1738
    .line 1739
    and-int/2addr v7, v3

    .line 1740
    int-to-long v9, v7

    .line 1741
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1742
    .line 1743
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v7

    .line 1747
    check-cast v7, Ljava/util/List;

    .line 1748
    .line 1749
    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 1750
    .line 1751
    .line 1752
    goto/16 :goto_3

    .line 1753
    .line 1754
    :pswitch_5b
    aget v8, v2, v1

    .line 1755
    .line 1756
    and-int/2addr v7, v3

    .line 1757
    int-to-long v9, v7

    .line 1758
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1759
    .line 1760
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v7

    .line 1764
    check-cast v7, Ljava/util/List;

    .line 1765
    .line 1766
    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 1767
    .line 1768
    .line 1769
    goto/16 :goto_3

    .line 1770
    .line 1771
    :pswitch_5c
    aget v8, v2, v1

    .line 1772
    .line 1773
    and-int/2addr v7, v3

    .line 1774
    int-to-long v9, v7

    .line 1775
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1776
    .line 1777
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v7

    .line 1781
    check-cast v7, Ljava/util/List;

    .line 1782
    .line 1783
    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 1784
    .line 1785
    .line 1786
    goto/16 :goto_3

    .line 1787
    .line 1788
    :pswitch_5d
    aget v8, v2, v1

    .line 1789
    .line 1790
    and-int/2addr v7, v3

    .line 1791
    int-to-long v9, v7

    .line 1792
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1793
    .line 1794
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v7

    .line 1798
    check-cast v7, Ljava/util/List;

    .line 1799
    .line 1800
    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 1801
    .line 1802
    .line 1803
    goto/16 :goto_3

    .line 1804
    .line 1805
    :pswitch_5e
    aget v8, v2, v1

    .line 1806
    .line 1807
    and-int/2addr v7, v3

    .line 1808
    int-to-long v9, v7

    .line 1809
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1810
    .line 1811
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v7

    .line 1815
    check-cast v7, Ljava/util/List;

    .line 1816
    .line 1817
    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 1818
    .line 1819
    .line 1820
    goto/16 :goto_3

    .line 1821
    .line 1822
    :pswitch_5f
    aget v8, v2, v1

    .line 1823
    .line 1824
    and-int/2addr v7, v3

    .line 1825
    int-to-long v9, v7

    .line 1826
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1827
    .line 1828
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v7

    .line 1832
    check-cast v7, Ljava/util/List;

    .line 1833
    .line 1834
    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 1835
    .line 1836
    .line 1837
    goto/16 :goto_3

    .line 1838
    .line 1839
    :pswitch_60
    aget v8, v2, v1

    .line 1840
    .line 1841
    and-int/2addr v7, v3

    .line 1842
    int-to-long v9, v7

    .line 1843
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1844
    .line 1845
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1846
    .line 1847
    .line 1848
    move-result-object v7

    .line 1849
    check-cast v7, Ljava/util/List;

    .line 1850
    .line 1851
    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 1852
    .line 1853
    .line 1854
    goto/16 :goto_3

    .line 1855
    .line 1856
    :pswitch_61
    aget v8, v2, v1

    .line 1857
    .line 1858
    and-int/2addr v7, v3

    .line 1859
    int-to-long v9, v7

    .line 1860
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1861
    .line 1862
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1863
    .line 1864
    .line 1865
    move-result-object v7

    .line 1866
    check-cast v7, Ljava/util/List;

    .line 1867
    .line 1868
    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 1869
    .line 1870
    .line 1871
    goto/16 :goto_3

    .line 1872
    .line 1873
    :pswitch_62
    aget v8, v2, v1

    .line 1874
    .line 1875
    and-int/2addr v7, v3

    .line 1876
    int-to-long v9, v7

    .line 1877
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1878
    .line 1879
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1880
    .line 1881
    .line 1882
    move-result-object v7

    .line 1883
    check-cast v7, Ljava/util/List;

    .line 1884
    .line 1885
    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 1886
    .line 1887
    .line 1888
    goto/16 :goto_3

    .line 1889
    .line 1890
    :pswitch_63
    aget v8, v2, v1

    .line 1891
    .line 1892
    and-int/2addr v7, v3

    .line 1893
    int-to-long v9, v7

    .line 1894
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1895
    .line 1896
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1897
    .line 1898
    .line 1899
    move-result-object v7

    .line 1900
    check-cast v7, Ljava/util/List;

    .line 1901
    .line 1902
    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 1903
    .line 1904
    .line 1905
    goto/16 :goto_3

    .line 1906
    .line 1907
    :pswitch_64
    aget v8, v2, v1

    .line 1908
    .line 1909
    and-int/2addr v7, v3

    .line 1910
    int-to-long v9, v7

    .line 1911
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1912
    .line 1913
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1914
    .line 1915
    .line 1916
    move-result-object v7

    .line 1917
    check-cast v7, Ljava/util/List;

    .line 1918
    .line 1919
    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 1920
    .line 1921
    .line 1922
    goto/16 :goto_3

    .line 1923
    .line 1924
    :pswitch_65
    aget v8, v2, v1

    .line 1925
    .line 1926
    and-int/2addr v7, v3

    .line 1927
    int-to-long v9, v7

    .line 1928
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1929
    .line 1930
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1931
    .line 1932
    .line 1933
    move-result-object v7

    .line 1934
    check-cast v7, Ljava/util/List;

    .line 1935
    .line 1936
    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 1937
    .line 1938
    .line 1939
    goto/16 :goto_3

    .line 1940
    .line 1941
    :pswitch_66
    aget v8, v2, v1

    .line 1942
    .line 1943
    and-int/2addr v7, v3

    .line 1944
    int-to-long v9, v7

    .line 1945
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1946
    .line 1947
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1948
    .line 1949
    .line 1950
    move-result-object v7

    .line 1951
    check-cast v7, Ljava/util/List;

    .line 1952
    .line 1953
    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/n0;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 1954
    .line 1955
    .line 1956
    goto/16 :goto_3

    .line 1957
    .line 1958
    :pswitch_67
    aget v8, v2, v1

    .line 1959
    .line 1960
    and-int/2addr v7, v3

    .line 1961
    int-to-long v9, v7

    .line 1962
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1963
    .line 1964
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1965
    .line 1966
    .line 1967
    move-result-object v7

    .line 1968
    check-cast v7, Ljava/util/List;

    .line 1969
    .line 1970
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 1971
    .line 1972
    .line 1973
    goto/16 :goto_3

    .line 1974
    .line 1975
    :pswitch_68
    aget v8, v2, v1

    .line 1976
    .line 1977
    and-int/2addr v7, v3

    .line 1978
    int-to-long v9, v7

    .line 1979
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1980
    .line 1981
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1982
    .line 1983
    .line 1984
    move-result-object v7

    .line 1985
    check-cast v7, Ljava/util/List;

    .line 1986
    .line 1987
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 1988
    .line 1989
    .line 1990
    goto/16 :goto_3

    .line 1991
    .line 1992
    :pswitch_69
    aget v8, v2, v1

    .line 1993
    .line 1994
    and-int/2addr v7, v3

    .line 1995
    int-to-long v9, v7

    .line 1996
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 1997
    .line 1998
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v7

    .line 2002
    check-cast v7, Ljava/util/List;

    .line 2003
    .line 2004
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 2005
    .line 2006
    .line 2007
    goto/16 :goto_3

    .line 2008
    .line 2009
    :pswitch_6a
    aget v8, v2, v1

    .line 2010
    .line 2011
    and-int/2addr v7, v3

    .line 2012
    int-to-long v9, v7

    .line 2013
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2014
    .line 2015
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v7

    .line 2019
    check-cast v7, Ljava/util/List;

    .line 2020
    .line 2021
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 2022
    .line 2023
    .line 2024
    goto/16 :goto_3

    .line 2025
    .line 2026
    :pswitch_6b
    aget v8, v2, v1

    .line 2027
    .line 2028
    and-int/2addr v7, v3

    .line 2029
    int-to-long v9, v7

    .line 2030
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2031
    .line 2032
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2033
    .line 2034
    .line 2035
    move-result-object v7

    .line 2036
    check-cast v7, Ljava/util/List;

    .line 2037
    .line 2038
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 2039
    .line 2040
    .line 2041
    goto/16 :goto_3

    .line 2042
    .line 2043
    :pswitch_6c
    aget v8, v2, v1

    .line 2044
    .line 2045
    and-int/2addr v7, v3

    .line 2046
    int-to-long v9, v7

    .line 2047
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2048
    .line 2049
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2050
    .line 2051
    .line 2052
    move-result-object v7

    .line 2053
    check-cast v7, Ljava/util/List;

    .line 2054
    .line 2055
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 2056
    .line 2057
    .line 2058
    goto/16 :goto_3

    .line 2059
    .line 2060
    :pswitch_6d
    aget v8, v2, v1

    .line 2061
    .line 2062
    and-int/2addr v7, v3

    .line 2063
    int-to-long v9, v7

    .line 2064
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2065
    .line 2066
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2067
    .line 2068
    .line 2069
    move-result-object v7

    .line 2070
    check-cast v7, Ljava/util/List;

    .line 2071
    .line 2072
    invoke-static {v8, v7, p2}, Landroidx/datastore/preferences/protobuf/n0;->writeBytesList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;)V

    .line 2073
    .line 2074
    .line 2075
    goto/16 :goto_3

    .line 2076
    .line 2077
    :pswitch_6e
    aget v8, v2, v1

    .line 2078
    .line 2079
    and-int/2addr v7, v3

    .line 2080
    int-to-long v9, v7

    .line 2081
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2082
    .line 2083
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2084
    .line 2085
    .line 2086
    move-result-object v7

    .line 2087
    check-cast v7, Ljava/util/List;

    .line 2088
    .line 2089
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 2090
    .line 2091
    .line 2092
    move-result-object v9

    .line 2093
    invoke-static {v8, v7, p2, v9}, Landroidx/datastore/preferences/protobuf/n0;->writeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 2094
    .line 2095
    .line 2096
    goto/16 :goto_3

    .line 2097
    .line 2098
    :pswitch_6f
    aget v8, v2, v1

    .line 2099
    .line 2100
    and-int/2addr v7, v3

    .line 2101
    int-to-long v9, v7

    .line 2102
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2103
    .line 2104
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2105
    .line 2106
    .line 2107
    move-result-object v7

    .line 2108
    check-cast v7, Ljava/util/List;

    .line 2109
    .line 2110
    invoke-static {v8, v7, p2}, Landroidx/datastore/preferences/protobuf/n0;->writeStringList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;)V

    .line 2111
    .line 2112
    .line 2113
    goto/16 :goto_3

    .line 2114
    .line 2115
    :pswitch_70
    aget v8, v2, v1

    .line 2116
    .line 2117
    and-int/2addr v7, v3

    .line 2118
    int-to-long v9, v7

    .line 2119
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2120
    .line 2121
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2122
    .line 2123
    .line 2124
    move-result-object v7

    .line 2125
    check-cast v7, Ljava/util/List;

    .line 2126
    .line 2127
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 2128
    .line 2129
    .line 2130
    goto/16 :goto_3

    .line 2131
    .line 2132
    :pswitch_71
    aget v8, v2, v1

    .line 2133
    .line 2134
    and-int/2addr v7, v3

    .line 2135
    int-to-long v9, v7

    .line 2136
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2137
    .line 2138
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2139
    .line 2140
    .line 2141
    move-result-object v7

    .line 2142
    check-cast v7, Ljava/util/List;

    .line 2143
    .line 2144
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 2145
    .line 2146
    .line 2147
    goto/16 :goto_3

    .line 2148
    .line 2149
    :pswitch_72
    aget v8, v2, v1

    .line 2150
    .line 2151
    and-int/2addr v7, v3

    .line 2152
    int-to-long v9, v7

    .line 2153
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2154
    .line 2155
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2156
    .line 2157
    .line 2158
    move-result-object v7

    .line 2159
    check-cast v7, Ljava/util/List;

    .line 2160
    .line 2161
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 2162
    .line 2163
    .line 2164
    goto/16 :goto_3

    .line 2165
    .line 2166
    :pswitch_73
    aget v8, v2, v1

    .line 2167
    .line 2168
    and-int/2addr v7, v3

    .line 2169
    int-to-long v9, v7

    .line 2170
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2171
    .line 2172
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v7

    .line 2176
    check-cast v7, Ljava/util/List;

    .line 2177
    .line 2178
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 2179
    .line 2180
    .line 2181
    goto/16 :goto_3

    .line 2182
    .line 2183
    :pswitch_74
    aget v8, v2, v1

    .line 2184
    .line 2185
    and-int/2addr v7, v3

    .line 2186
    int-to-long v9, v7

    .line 2187
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2188
    .line 2189
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2190
    .line 2191
    .line 2192
    move-result-object v7

    .line 2193
    check-cast v7, Ljava/util/List;

    .line 2194
    .line 2195
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 2196
    .line 2197
    .line 2198
    goto/16 :goto_3

    .line 2199
    .line 2200
    :pswitch_75
    aget v8, v2, v1

    .line 2201
    .line 2202
    and-int/2addr v7, v3

    .line 2203
    int-to-long v9, v7

    .line 2204
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2205
    .line 2206
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2207
    .line 2208
    .line 2209
    move-result-object v7

    .line 2210
    check-cast v7, Ljava/util/List;

    .line 2211
    .line 2212
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 2213
    .line 2214
    .line 2215
    goto/16 :goto_3

    .line 2216
    .line 2217
    :pswitch_76
    aget v8, v2, v1

    .line 2218
    .line 2219
    and-int/2addr v7, v3

    .line 2220
    int-to-long v9, v7

    .line 2221
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2222
    .line 2223
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2224
    .line 2225
    .line 2226
    move-result-object v7

    .line 2227
    check-cast v7, Ljava/util/List;

    .line 2228
    .line 2229
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 2230
    .line 2231
    .line 2232
    goto/16 :goto_3

    .line 2233
    .line 2234
    :pswitch_77
    aget v8, v2, v1

    .line 2235
    .line 2236
    and-int/2addr v7, v3

    .line 2237
    int-to-long v9, v7

    .line 2238
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2239
    .line 2240
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2241
    .line 2242
    .line 2243
    move-result-object v7

    .line 2244
    check-cast v7, Ljava/util/List;

    .line 2245
    .line 2246
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/n0;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/L0;Z)V

    .line 2247
    .line 2248
    .line 2249
    goto/16 :goto_3

    .line 2250
    .line 2251
    :pswitch_78
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2252
    .line 2253
    .line 2254
    move-result v9

    .line 2255
    if-eqz v9, :cond_3

    .line 2256
    .line 2257
    and-int/2addr v7, v3

    .line 2258
    int-to-long v9, v7

    .line 2259
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2260
    .line 2261
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2262
    .line 2263
    .line 2264
    move-result-object v7

    .line 2265
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 2266
    .line 2267
    .line 2268
    move-result-object v9

    .line 2269
    invoke-virtual {p2, v8, v7, v9}, Landroidx/datastore/preferences/protobuf/t;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 2270
    .line 2271
    .line 2272
    goto/16 :goto_3

    .line 2273
    .line 2274
    :pswitch_79
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2275
    .line 2276
    .line 2277
    move-result v9

    .line 2278
    if-eqz v9, :cond_3

    .line 2279
    .line 2280
    and-int/2addr v7, v3

    .line 2281
    int-to-long v9, v7

    .line 2282
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2283
    .line 2284
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 2285
    .line 2286
    .line 2287
    move-result-wide v9

    .line 2288
    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/t;->writeSInt64(IJ)V

    .line 2289
    .line 2290
    .line 2291
    goto/16 :goto_3

    .line 2292
    .line 2293
    :pswitch_7a
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2294
    .line 2295
    .line 2296
    move-result v9

    .line 2297
    if-eqz v9, :cond_3

    .line 2298
    .line 2299
    and-int/2addr v7, v3

    .line 2300
    int-to-long v9, v7

    .line 2301
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2302
    .line 2303
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 2304
    .line 2305
    .line 2306
    move-result v7

    .line 2307
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeSInt32(II)V

    .line 2308
    .line 2309
    .line 2310
    goto/16 :goto_3

    .line 2311
    .line 2312
    :pswitch_7b
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2313
    .line 2314
    .line 2315
    move-result v9

    .line 2316
    if-eqz v9, :cond_3

    .line 2317
    .line 2318
    and-int/2addr v7, v3

    .line 2319
    int-to-long v9, v7

    .line 2320
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2321
    .line 2322
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 2323
    .line 2324
    .line 2325
    move-result-wide v9

    .line 2326
    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/t;->writeSFixed64(IJ)V

    .line 2327
    .line 2328
    .line 2329
    goto/16 :goto_3

    .line 2330
    .line 2331
    :pswitch_7c
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2332
    .line 2333
    .line 2334
    move-result v9

    .line 2335
    if-eqz v9, :cond_3

    .line 2336
    .line 2337
    and-int/2addr v7, v3

    .line 2338
    int-to-long v9, v7

    .line 2339
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2340
    .line 2341
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 2342
    .line 2343
    .line 2344
    move-result v7

    .line 2345
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeSFixed32(II)V

    .line 2346
    .line 2347
    .line 2348
    goto/16 :goto_3

    .line 2349
    .line 2350
    :pswitch_7d
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2351
    .line 2352
    .line 2353
    move-result v9

    .line 2354
    if-eqz v9, :cond_3

    .line 2355
    .line 2356
    and-int/2addr v7, v3

    .line 2357
    int-to-long v9, v7

    .line 2358
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2359
    .line 2360
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 2361
    .line 2362
    .line 2363
    move-result v7

    .line 2364
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeEnum(II)V

    .line 2365
    .line 2366
    .line 2367
    goto/16 :goto_3

    .line 2368
    .line 2369
    :pswitch_7e
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2370
    .line 2371
    .line 2372
    move-result v9

    .line 2373
    if-eqz v9, :cond_3

    .line 2374
    .line 2375
    and-int/2addr v7, v3

    .line 2376
    int-to-long v9, v7

    .line 2377
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2378
    .line 2379
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 2380
    .line 2381
    .line 2382
    move-result v7

    .line 2383
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeUInt32(II)V

    .line 2384
    .line 2385
    .line 2386
    goto/16 :goto_3

    .line 2387
    .line 2388
    :pswitch_7f
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2389
    .line 2390
    .line 2391
    move-result v9

    .line 2392
    if-eqz v9, :cond_3

    .line 2393
    .line 2394
    and-int/2addr v7, v3

    .line 2395
    int-to-long v9, v7

    .line 2396
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2397
    .line 2398
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2399
    .line 2400
    .line 2401
    move-result-object v7

    .line 2402
    check-cast v7, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 2403
    .line 2404
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 2405
    .line 2406
    .line 2407
    goto/16 :goto_3

    .line 2408
    .line 2409
    :pswitch_80
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2410
    .line 2411
    .line 2412
    move-result v9

    .line 2413
    if-eqz v9, :cond_3

    .line 2414
    .line 2415
    and-int/2addr v7, v3

    .line 2416
    int-to-long v9, v7

    .line 2417
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2418
    .line 2419
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2420
    .line 2421
    .line 2422
    move-result-object v7

    .line 2423
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/b0;->e(I)Landroidx/datastore/preferences/protobuf/l0;

    .line 2424
    .line 2425
    .line 2426
    move-result-object v9

    .line 2427
    invoke-virtual {p2, v8, v7, v9}, Landroidx/datastore/preferences/protobuf/t;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/l0;)V

    .line 2428
    .line 2429
    .line 2430
    goto/16 :goto_3

    .line 2431
    .line 2432
    :pswitch_81
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2433
    .line 2434
    .line 2435
    move-result v9

    .line 2436
    if-eqz v9, :cond_3

    .line 2437
    .line 2438
    and-int/2addr v7, v3

    .line 2439
    int-to-long v9, v7

    .line 2440
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2441
    .line 2442
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2443
    .line 2444
    .line 2445
    move-result-object v7

    .line 2446
    invoke-static {v8, v7, p2}, Landroidx/datastore/preferences/protobuf/b0;->E(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/t;)V

    .line 2447
    .line 2448
    .line 2449
    goto/16 :goto_3

    .line 2450
    .line 2451
    :pswitch_82
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2452
    .line 2453
    .line 2454
    move-result v9

    .line 2455
    if-eqz v9, :cond_3

    .line 2456
    .line 2457
    and-int/2addr v7, v3

    .line 2458
    int-to-long v9, v7

    .line 2459
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2460
    .line 2461
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getBoolean(Ljava/lang/Object;J)Z

    .line 2462
    .line 2463
    .line 2464
    move-result v7

    .line 2465
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeBool(IZ)V

    .line 2466
    .line 2467
    .line 2468
    goto/16 :goto_3

    .line 2469
    .line 2470
    :pswitch_83
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2471
    .line 2472
    .line 2473
    move-result v9

    .line 2474
    if-eqz v9, :cond_3

    .line 2475
    .line 2476
    and-int/2addr v7, v3

    .line 2477
    int-to-long v9, v7

    .line 2478
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2479
    .line 2480
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 2481
    .line 2482
    .line 2483
    move-result v7

    .line 2484
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeFixed32(II)V

    .line 2485
    .line 2486
    .line 2487
    goto :goto_3

    .line 2488
    :pswitch_84
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2489
    .line 2490
    .line 2491
    move-result v9

    .line 2492
    if-eqz v9, :cond_3

    .line 2493
    .line 2494
    and-int/2addr v7, v3

    .line 2495
    int-to-long v9, v7

    .line 2496
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2497
    .line 2498
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 2499
    .line 2500
    .line 2501
    move-result-wide v9

    .line 2502
    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/t;->writeFixed64(IJ)V

    .line 2503
    .line 2504
    .line 2505
    goto :goto_3

    .line 2506
    :pswitch_85
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2507
    .line 2508
    .line 2509
    move-result v9

    .line 2510
    if-eqz v9, :cond_3

    .line 2511
    .line 2512
    and-int/2addr v7, v3

    .line 2513
    int-to-long v9, v7

    .line 2514
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2515
    .line 2516
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 2517
    .line 2518
    .line 2519
    move-result v7

    .line 2520
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeInt32(II)V

    .line 2521
    .line 2522
    .line 2523
    goto :goto_3

    .line 2524
    :pswitch_86
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2525
    .line 2526
    .line 2527
    move-result v9

    .line 2528
    if-eqz v9, :cond_3

    .line 2529
    .line 2530
    and-int/2addr v7, v3

    .line 2531
    int-to-long v9, v7

    .line 2532
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2533
    .line 2534
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 2535
    .line 2536
    .line 2537
    move-result-wide v9

    .line 2538
    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/t;->writeUInt64(IJ)V

    .line 2539
    .line 2540
    .line 2541
    goto :goto_3

    .line 2542
    :pswitch_87
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2543
    .line 2544
    .line 2545
    move-result v9

    .line 2546
    if-eqz v9, :cond_3

    .line 2547
    .line 2548
    and-int/2addr v7, v3

    .line 2549
    int-to-long v9, v7

    .line 2550
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2551
    .line 2552
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getLong(Ljava/lang/Object;J)J

    .line 2553
    .line 2554
    .line 2555
    move-result-wide v9

    .line 2556
    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/t;->writeInt64(IJ)V

    .line 2557
    .line 2558
    .line 2559
    goto :goto_3

    .line 2560
    :pswitch_88
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2561
    .line 2562
    .line 2563
    move-result v9

    .line 2564
    if-eqz v9, :cond_3

    .line 2565
    .line 2566
    and-int/2addr v7, v3

    .line 2567
    int-to-long v9, v7

    .line 2568
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2569
    .line 2570
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getFloat(Ljava/lang/Object;J)F

    .line 2571
    .line 2572
    .line 2573
    move-result v7

    .line 2574
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/t;->writeFloat(IF)V

    .line 2575
    .line 2576
    .line 2577
    goto :goto_3

    .line 2578
    :pswitch_89
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/b0;->h(ILjava/lang/Object;)Z

    .line 2579
    .line 2580
    .line 2581
    move-result v9

    .line 2582
    if-eqz v9, :cond_3

    .line 2583
    .line 2584
    and-int/2addr v7, v3

    .line 2585
    int-to-long v9, v7

    .line 2586
    sget-object v7, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 2587
    .line 2588
    invoke-virtual {v7, p1, v9, v10}, Landroidx/datastore/preferences/protobuf/G0;->getDouble(Ljava/lang/Object;J)D

    .line 2589
    .line 2590
    .line 2591
    move-result-wide v9

    .line 2592
    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/t;->writeDouble(ID)V

    .line 2593
    .line 2594
    .line 2595
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x3

    .line 2596
    .line 2597
    goto/16 :goto_2

    .line 2598
    .line 2599
    :cond_4
    check-cast v6, Landroidx/datastore/preferences/protobuf/y0;

    .line 2600
    .line 2601
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2602
    .line 2603
    .line 2604
    check-cast p1, Landroidx/datastore/preferences/protobuf/F;

    .line 2605
    .line 2606
    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/F;->unknownFields:Landroidx/datastore/preferences/protobuf/x0;

    .line 2607
    .line 2608
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/x0;->writeTo(Landroidx/datastore/preferences/protobuf/L0;)V

    .line 2609
    .line 2610
    .line 2611
    return-void

    .line 2612
    :cond_5
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->C(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/t;)V

    .line 2613
    .line 2614
    .line 2615
    return-void

    .line 2616
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final y(ILjava/lang/Object;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/b0;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    .line 9
    .line 10
    aget p1, v0, p1

    .line 11
    .line 12
    ushr-int/lit8 v0, p1, 0x14

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    shl-int v0, v1, v0

    .line 16
    .line 17
    const v1, 0xfffff

    .line 18
    .line 19
    .line 20
    and-int/2addr p1, v1

    .line 21
    int-to-long v1, p1

    .line 22
    sget-object p1, Landroidx/datastore/preferences/protobuf/H0;->d:Landroidx/datastore/preferences/protobuf/G0;

    .line 23
    .line 24
    invoke-virtual {p1, p2, v1, v2}, Landroidx/datastore/preferences/protobuf/G0;->getInt(Ljava/lang/Object;J)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    or-int/2addr p1, v0

    .line 29
    invoke-static {p2, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/H0;->m(Ljava/lang/Object;JI)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final z(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    add-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/b0;->a:[I

    .line 4
    .line 5
    aget p3, v0, p3

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p3, v0

    .line 11
    int-to-long v0, p3

    .line 12
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/H0;->m(Ljava/lang/Object;JI)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
