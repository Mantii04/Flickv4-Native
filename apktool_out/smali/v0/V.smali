.class public final Lv0/V;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:F

.field public final m:I

.field public final n:Ljava/lang/String;

.field public final o:Ls0/s;


# direct methods
.method public constructor <init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Ls0/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv0/V;->a:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, Lv0/V;->b:I

    .line 7
    .line 8
    iput p3, p0, Lv0/V;->c:I

    .line 9
    .line 10
    iput p4, p0, Lv0/V;->d:I

    .line 11
    .line 12
    iput p5, p0, Lv0/V;->e:I

    .line 13
    .line 14
    iput p6, p0, Lv0/V;->f:I

    .line 15
    .line 16
    iput p7, p0, Lv0/V;->g:I

    .line 17
    .line 18
    iput p8, p0, Lv0/V;->h:I

    .line 19
    .line 20
    iput p9, p0, Lv0/V;->i:I

    .line 21
    .line 22
    iput p10, p0, Lv0/V;->j:I

    .line 23
    .line 24
    iput p11, p0, Lv0/V;->k:I

    .line 25
    .line 26
    iput p12, p0, Lv0/V;->l:F

    .line 27
    .line 28
    iput p13, p0, Lv0/V;->m:I

    .line 29
    .line 30
    iput-object p14, p0, Lv0/V;->n:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p15, p0, Lv0/V;->o:Ls0/s;

    .line 33
    .line 34
    return-void
.end method

.method public static a(Landroidx/media3/common/util/ParsableByteArray;ZLs0/s;)Lv0/V;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    goto/16 :goto_9

    .line 12
    .line 13
    :cond_0
    const/16 v2, 0x15

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    and-int/lit8 v2, v2, 0x3

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x0

    .line 33
    move v6, v5

    .line 34
    move v7, v6

    .line 35
    :goto_1
    const/4 v8, 0x1

    .line 36
    if-ge v6, v3, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    move v9, v5

    .line 46
    :goto_2
    if-ge v9, v8, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    add-int/lit8 v11, v10, 0x4

    .line 53
    .line 54
    add-int/2addr v7, v11

    .line 55
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v9, v9, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 65
    .line 66
    .line 67
    new-array v4, v7, [B

    .line 68
    .line 69
    const/4 v6, -0x1

    .line 70
    const/high16 v9, 0x3f800000    # 1.0f

    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    move-object/from16 v26, p2

    .line 74
    .line 75
    move v14, v6

    .line 76
    move v15, v14

    .line 77
    move/from16 v16, v15

    .line 78
    .line 79
    move/from16 v17, v16

    .line 80
    .line 81
    move/from16 v18, v17

    .line 82
    .line 83
    move/from16 v19, v18

    .line 84
    .line 85
    move/from16 v20, v19

    .line 86
    .line 87
    move/from16 v21, v20

    .line 88
    .line 89
    move/from16 v22, v21

    .line 90
    .line 91
    move/from16 v24, v22

    .line 92
    .line 93
    move/from16 v23, v9

    .line 94
    .line 95
    move-object/from16 v25, v10

    .line 96
    .line 97
    move v6, v5

    .line 98
    move v9, v6

    .line 99
    :goto_3
    if-ge v6, v3, :cond_9

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    and-int/lit8 v10, v10, 0x3f

    .line 106
    .line 107
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    move v13, v5

    .line 112
    move-object/from16 v12, v26

    .line 113
    .line 114
    :goto_4
    if-ge v13, v11, :cond_8

    .line 115
    .line 116
    move/from16 v27, v8

    .line 117
    .line 118
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    move/from16 v28, v2

    .line 123
    .line 124
    sget-object v2, Ls0/v;->a:[B

    .line 125
    .line 126
    invoke-static {v2, v5, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v9, v9, 0x4

    .line 130
    .line 131
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-static {v2, v1, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    .line 141
    .line 142
    const/16 v1, 0x20

    .line 143
    .line 144
    if-ne v10, v1, :cond_3

    .line 145
    .line 146
    if-nez v13, :cond_3

    .line 147
    .line 148
    add-int v1, v9, v8

    .line 149
    .line 150
    invoke-static {v4, v9, v1}, Ls0/v;->parseH265VpsNalUnit([BII)Ls0/s;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    goto/16 :goto_6

    .line 155
    .line 156
    :cond_3
    const/16 v1, 0x21

    .line 157
    .line 158
    if-ne v10, v1, :cond_6

    .line 159
    .line 160
    if-nez v13, :cond_6

    .line 161
    .line 162
    add-int v1, v9, v8

    .line 163
    .line 164
    invoke-static {v4, v9, v1, v12}, Ls0/v;->parseH265SpsNalUnit([BIILs0/s;)Ls0/p;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iget v2, v1, Ls0/p;->a:I

    .line 169
    .line 170
    add-int/lit8 v14, v2, 0x1

    .line 171
    .line 172
    iget v15, v1, Ls0/p;->g:I

    .line 173
    .line 174
    iget v2, v1, Ls0/p;->h:I

    .line 175
    .line 176
    iget v5, v1, Ls0/p;->c:I

    .line 177
    .line 178
    add-int/lit8 v17, v5, 0x8

    .line 179
    .line 180
    iget v5, v1, Ls0/p;->d:I

    .line 181
    .line 182
    add-int/lit8 v18, v5, 0x8

    .line 183
    .line 184
    iget v5, v1, Ls0/p;->k:I

    .line 185
    .line 186
    move/from16 v16, v2

    .line 187
    .line 188
    iget v2, v1, Ls0/p;->l:I

    .line 189
    .line 190
    move/from16 v19, v2

    .line 191
    .line 192
    iget v2, v1, Ls0/p;->m:I

    .line 193
    .line 194
    move/from16 v20, v2

    .line 195
    .line 196
    iget v2, v1, Ls0/p;->i:F

    .line 197
    .line 198
    move/from16 v21, v2

    .line 199
    .line 200
    iget v2, v1, Ls0/p;->j:I

    .line 201
    .line 202
    iget-object v1, v1, Ls0/p;->b:Ls0/k;

    .line 203
    .line 204
    if-eqz v1, :cond_4

    .line 205
    .line 206
    move/from16 v23, v2

    .line 207
    .line 208
    iget v2, v1, Ls0/k;->a:I

    .line 209
    .line 210
    move/from16 v29, v2

    .line 211
    .line 212
    iget-boolean v2, v1, Ls0/k;->b:Z

    .line 213
    .line 214
    move/from16 v30, v2

    .line 215
    .line 216
    iget v2, v1, Ls0/k;->c:I

    .line 217
    .line 218
    move/from16 v31, v2

    .line 219
    .line 220
    iget v2, v1, Ls0/k;->d:I

    .line 221
    .line 222
    move/from16 v32, v2

    .line 223
    .line 224
    iget-object v2, v1, Ls0/k;->e:[I

    .line 225
    .line 226
    iget v1, v1, Ls0/k;->f:I

    .line 227
    .line 228
    move/from16 v34, v1

    .line 229
    .line 230
    move-object/from16 v33, v2

    .line 231
    .line 232
    invoke-static/range {v29 .. v34}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v25

    .line 236
    goto :goto_5

    .line 237
    :cond_4
    move/from16 v23, v2

    .line 238
    .line 239
    :goto_5
    move/from16 v24, v23

    .line 240
    .line 241
    move/from16 v23, v21

    .line 242
    .line 243
    move/from16 v21, v20

    .line 244
    .line 245
    move/from16 v20, v19

    .line 246
    .line 247
    move/from16 v19, v5

    .line 248
    .line 249
    :cond_5
    const/4 v5, 0x0

    .line 250
    goto :goto_6

    .line 251
    :cond_6
    const/16 v1, 0x27

    .line 252
    .line 253
    if-ne v10, v1, :cond_5

    .line 254
    .line 255
    if-nez v13, :cond_5

    .line 256
    .line 257
    add-int v1, v9, v8

    .line 258
    .line 259
    invoke-static {v4, v9, v1}, Ls0/v;->parseH265Sei3dRefDisplayInfo([BII)Ls0/o;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    if-eqz v1, :cond_5

    .line 264
    .line 265
    if-eqz v12, :cond_5

    .line 266
    .line 267
    iget v1, v1, Ls0/o;->a:I

    .line 268
    .line 269
    iget-object v2, v12, Ls0/s;->a:Lcom/google/common/collect/ImmutableList;

    .line 270
    .line 271
    const/4 v5, 0x0

    .line 272
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    check-cast v2, Ls0/i;

    .line 277
    .line 278
    iget v2, v2, Ls0/i;->b:I

    .line 279
    .line 280
    if-ne v1, v2, :cond_7

    .line 281
    .line 282
    const/16 v22, 0x4

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_7
    const/4 v1, 0x5

    .line 286
    move/from16 v22, v1

    .line 287
    .line 288
    :goto_6
    add-int/2addr v9, v8

    .line 289
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 290
    .line 291
    .line 292
    add-int/lit8 v13, v13, 0x1

    .line 293
    .line 294
    move/from16 v8, v27

    .line 295
    .line 296
    move/from16 v2, v28

    .line 297
    .line 298
    const/4 v1, 0x4

    .line 299
    goto/16 :goto_4

    .line 300
    .line 301
    :cond_8
    move/from16 v28, v2

    .line 302
    .line 303
    move/from16 v27, v8

    .line 304
    .line 305
    add-int/lit8 v6, v6, 0x1

    .line 306
    .line 307
    move-object/from16 v26, v12

    .line 308
    .line 309
    const/4 v1, 0x4

    .line 310
    goto/16 :goto_3

    .line 311
    .line 312
    :cond_9
    move/from16 v28, v2

    .line 313
    .line 314
    move/from16 v27, v8

    .line 315
    .line 316
    if-nez v7, :cond_a

    .line 317
    .line 318
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 319
    .line 320
    :goto_7
    move-object v12, v0

    .line 321
    goto :goto_8

    .line 322
    :cond_a
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    goto :goto_7

    .line 327
    :goto_8
    new-instance v11, Lv0/V;

    .line 328
    .line 329
    add-int/lit8 v13, v28, 0x1

    .line 330
    .line 331
    invoke-direct/range {v11 .. v26}, Lv0/V;-><init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Ls0/s;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .line 333
    .line 334
    return-object v11

    .line 335
    :goto_9
    if-eqz p1, :cond_b

    .line 336
    .line 337
    const-string v1, "L-HEVC config"

    .line 338
    .line 339
    goto :goto_a

    .line 340
    :cond_b
    const-string v1, "HEVC config"

    .line 341
    .line 342
    :goto_a
    const-string v2, "Error parsing"

    .line 343
    .line 344
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    throw v0
.end method

.method public static parse(Landroidx/media3/common/util/ParsableByteArray;)Lv0/V;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lv0/V;->a(Landroidx/media3/common/util/ParsableByteArray;ZLs0/s;)Lv0/V;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static parseLayered(Landroidx/media3/common/util/ParsableByteArray;Ls0/s;)Lv0/V;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, p1}, Lv0/V;->a(Landroidx/media3/common/util/ParsableByteArray;ZLs0/s;)Lv0/V;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method
