.class public final Lc1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/j;


# static fields
.field public static final x:[B


# instance fields
.field public final a:Z

.field public final b:Landroidx/media3/common/util/ParsableBitArray;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lv0/r0;

.field public i:Lv0/r0;

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:J

.field public t:I

.field public u:J

.field public v:Lv0/r0;

.field public w:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lc1/f;->x:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1, p2}, Lc1/f;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lc1/f;->b:Landroidx/media3/common/util/ParsableBitArray;

    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v1, Lc1/f;->x:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lc1/f;->c:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lc1/f;->o:I

    .line 6
    iput v0, p0, Lc1/f;->p:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lc1/f;->s:J

    .line 8
    iput-wide v0, p0, Lc1/f;->u:J

    .line 9
    iput-boolean p1, p0, Lc1/f;->a:Z

    .line 10
    iput-object p2, p0, Lc1/f;->d:Ljava/lang/String;

    .line 11
    iput p3, p0, Lc1/f;->e:I

    .line 12
    iput-object p4, p0, Lc1/f;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lc1/f;->j:I

    .line 14
    iput p1, p0, Lc1/f;->k:I

    const/16 p1, 0x100

    .line 15
    iput p1, p0, Lc1/f;->l:I

    return-void
.end method

.method public static isAdtsSyncWord(I)Z
    .locals 1

    .line 1
    const v0, 0xfff6

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    const v0, 0xfff0

    .line 6
    .line 7
    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lc1/f;->h:Lv0/r0;

    .line 6
    .line 7
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lc1/f;->v:Lv0/r0;

    .line 11
    .line 12
    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object v2, v0, Lc1/f;->i:Lv0/r0;

    .line 16
    .line 17
    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-lez v2, :cond_27

    .line 25
    .line 26
    iget v2, v0, Lc1/f;->j:I

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    const/4 v5, -0x1

    .line 30
    const/16 v6, 0x100

    .line 31
    .line 32
    const/4 v7, 0x4

    .line 33
    const/4 v8, 0x3

    .line 34
    const/4 v9, 0x1

    .line 35
    const/4 v10, 0x0

    .line 36
    const/16 v11, 0xd

    .line 37
    .line 38
    iget-object v12, v0, Lc1/f;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 39
    .line 40
    iget-object v13, v0, Lc1/f;->b:Landroidx/media3/common/util/ParsableBitArray;

    .line 41
    .line 42
    if-eqz v2, :cond_d

    .line 43
    .line 44
    if-eq v2, v9, :cond_9

    .line 45
    .line 46
    const/16 v5, 0xa

    .line 47
    .line 48
    if-eq v2, v3, :cond_8

    .line 49
    .line 50
    if-eq v2, v8, :cond_3

    .line 51
    .line 52
    if-ne v2, v7, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iget v3, v0, Lc1/f;->t:I

    .line 59
    .line 60
    iget v4, v0, Lc1/f;->k:I

    .line 61
    .line 62
    sub-int/2addr v3, v4

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iget-object v3, v0, Lc1/f;->v:Lv0/r0;

    .line 68
    .line 69
    invoke-interface {v3, v1, v2}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 70
    .line 71
    .line 72
    iget v3, v0, Lc1/f;->k:I

    .line 73
    .line 74
    add-int/2addr v3, v2

    .line 75
    iput v3, v0, Lc1/f;->k:I

    .line 76
    .line 77
    iget v2, v0, Lc1/f;->t:I

    .line 78
    .line 79
    if-ne v3, v2, :cond_0

    .line 80
    .line 81
    iget-wide v2, v0, Lc1/f;->u:J

    .line 82
    .line 83
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    cmp-long v2, v2, v4

    .line 89
    .line 90
    if-eqz v2, :cond_1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    move v9, v10

    .line 94
    :goto_1
    invoke-static {v9}, LP3/v;->checkState(Z)V

    .line 95
    .line 96
    .line 97
    iget-object v11, v0, Lc1/f;->v:Lv0/r0;

    .line 98
    .line 99
    iget-wide v12, v0, Lc1/f;->u:J

    .line 100
    .line 101
    iget v15, v0, Lc1/f;->t:I

    .line 102
    .line 103
    const/4 v14, 0x1

    .line 104
    const/16 v16, 0x0

    .line 105
    .line 106
    const/16 v17, 0x0

    .line 107
    .line 108
    invoke-interface/range {v11 .. v17}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 109
    .line 110
    .line 111
    iget-wide v2, v0, Lc1/f;->u:J

    .line 112
    .line 113
    iget-wide v4, v0, Lc1/f;->w:J

    .line 114
    .line 115
    add-long/2addr v2, v4

    .line 116
    iput-wide v2, v0, Lc1/f;->u:J

    .line 117
    .line 118
    iput v10, v0, Lc1/f;->j:I

    .line 119
    .line 120
    iput v10, v0, Lc1/f;->k:I

    .line 121
    .line 122
    iput v6, v0, Lc1/f;->l:I

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 128
    .line 129
    .line 130
    throw v1

    .line 131
    :cond_3
    iget-boolean v2, v0, Lc1/f;->m:Z

    .line 132
    .line 133
    const/4 v6, 0x5

    .line 134
    if-eqz v2, :cond_4

    .line 135
    .line 136
    const/4 v4, 0x7

    .line 137
    goto :goto_2

    .line 138
    :cond_4
    move v4, v6

    .line 139
    :goto_2
    iget-object v2, v13, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 140
    .line 141
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    iget v14, v0, Lc1/f;->k:I

    .line 146
    .line 147
    sub-int v14, v4, v14

    .line 148
    .line 149
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    iget v14, v0, Lc1/f;->k:I

    .line 154
    .line 155
    invoke-virtual {v1, v2, v14, v12}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 156
    .line 157
    .line 158
    iget v2, v0, Lc1/f;->k:I

    .line 159
    .line 160
    add-int/2addr v2, v12

    .line 161
    iput v2, v0, Lc1/f;->k:I

    .line 162
    .line 163
    if-ne v2, v4, :cond_0

    .line 164
    .line 165
    invoke-virtual {v13, v10}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 166
    .line 167
    .line 168
    iget-boolean v2, v0, Lc1/f;->r:Z

    .line 169
    .line 170
    if-nez v2, :cond_6

    .line 171
    .line 172
    invoke-virtual {v13, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    add-int/2addr v2, v9

    .line 177
    if-eq v2, v3, :cond_5

    .line 178
    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v5, "Detected audio object type: "

    .line 182
    .line 183
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v2, ", but assuming AAC LC."

    .line 190
    .line 191
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    const-string v4, "AdtsReader"

    .line 199
    .line 200
    invoke-static {v4, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_5
    move v3, v2

    .line 205
    :goto_3
    invoke-virtual {v13, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v13, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    iget v4, v0, Lc1/f;->p:I

    .line 213
    .line 214
    invoke-static {v3, v4, v2}, Lv0/b;->buildAudioSpecificConfig(III)[B

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-static {v2}, Lv0/b;->parseAudioSpecificConfig([B)Lv0/a;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    new-instance v4, Landroidx/media3/common/Format$Builder;

    .line 223
    .line 224
    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-object v5, v0, Lc1/f;->g:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    iget-object v5, v0, Lc1/f;->f:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    const-string v5, "audio/mp4a-latm"

    .line 240
    .line 241
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    iget-object v5, v3, Lv0/a;->c:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    iget v5, v3, Lv0/a;->b:I

    .line 252
    .line 253
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    iget v3, v3, Lv0/a;->a:I

    .line 258
    .line 259
    invoke-virtual {v4, v3}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    iget-object v3, v0, Lc1/f;->d:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    iget v3, v0, Lc1/f;->e:I

    .line 278
    .line 279
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    iget v3, v2, Landroidx/media3/common/Format;->sampleRate:I

    .line 288
    .line 289
    int-to-long v3, v3

    .line 290
    const-wide/32 v5, 0x3d090000

    .line 291
    .line 292
    .line 293
    div-long/2addr v5, v3

    .line 294
    iput-wide v5, v0, Lc1/f;->s:J

    .line 295
    .line 296
    iget-object v3, v0, Lc1/f;->h:Lv0/r0;

    .line 297
    .line 298
    invoke-interface {v3, v2}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 299
    .line 300
    .line 301
    iput-boolean v9, v0, Lc1/f;->r:Z

    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_6
    invoke-virtual {v13, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 305
    .line 306
    .line 307
    :goto_4
    invoke-virtual {v13, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v13, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    add-int/lit8 v3, v2, -0x7

    .line 315
    .line 316
    iget-boolean v4, v0, Lc1/f;->m:Z

    .line 317
    .line 318
    if-eqz v4, :cond_7

    .line 319
    .line 320
    add-int/lit8 v3, v2, -0x9

    .line 321
    .line 322
    :cond_7
    iget-object v2, v0, Lc1/f;->h:Lv0/r0;

    .line 323
    .line 324
    iget-wide v4, v0, Lc1/f;->s:J

    .line 325
    .line 326
    iput v7, v0, Lc1/f;->j:I

    .line 327
    .line 328
    iput v10, v0, Lc1/f;->k:I

    .line 329
    .line 330
    iput-object v2, v0, Lc1/f;->v:Lv0/r0;

    .line 331
    .line 332
    iput-wide v4, v0, Lc1/f;->w:J

    .line 333
    .line 334
    iput v3, v0, Lc1/f;->t:I

    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :cond_8
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    iget v4, v0, Lc1/f;->k:I

    .line 347
    .line 348
    rsub-int/lit8 v4, v4, 0xa

    .line 349
    .line 350
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    iget v4, v0, Lc1/f;->k:I

    .line 355
    .line 356
    invoke-virtual {v1, v2, v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 357
    .line 358
    .line 359
    iget v2, v0, Lc1/f;->k:I

    .line 360
    .line 361
    add-int/2addr v2, v3

    .line 362
    iput v2, v0, Lc1/f;->k:I

    .line 363
    .line 364
    if-ne v2, v5, :cond_0

    .line 365
    .line 366
    iget-object v2, v0, Lc1/f;->i:Lv0/r0;

    .line 367
    .line 368
    invoke-interface {v2, v12, v5}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 369
    .line 370
    .line 371
    const/4 v2, 0x6

    .line 372
    invoke-virtual {v12, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 373
    .line 374
    .line 375
    iget-object v2, v0, Lc1/f;->i:Lv0/r0;

    .line 376
    .line 377
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    add-int/2addr v3, v5

    .line 382
    iput v7, v0, Lc1/f;->j:I

    .line 383
    .line 384
    iput v5, v0, Lc1/f;->k:I

    .line 385
    .line 386
    iput-object v2, v0, Lc1/f;->v:Lv0/r0;

    .line 387
    .line 388
    const-wide/16 v4, 0x0

    .line 389
    .line 390
    iput-wide v4, v0, Lc1/f;->w:J

    .line 391
    .line 392
    iput v3, v0, Lc1/f;->t:I

    .line 393
    .line 394
    goto/16 :goto_0

    .line 395
    .line 396
    :cond_9
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    if-nez v2, :cond_a

    .line 401
    .line 402
    goto/16 :goto_0

    .line 403
    .line 404
    :cond_a
    iget-object v2, v13, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 405
    .line 406
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 411
    .line 412
    .line 413
    move-result v11

    .line 414
    aget-byte v4, v4, v11

    .line 415
    .line 416
    aput-byte v4, v2, v10

    .line 417
    .line 418
    invoke-virtual {v13, v3}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v13, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    iget v3, v0, Lc1/f;->p:I

    .line 426
    .line 427
    if-eq v3, v5, :cond_b

    .line 428
    .line 429
    if-eq v2, v3, :cond_b

    .line 430
    .line 431
    iput-boolean v10, v0, Lc1/f;->n:Z

    .line 432
    .line 433
    iput v10, v0, Lc1/f;->j:I

    .line 434
    .line 435
    iput v10, v0, Lc1/f;->k:I

    .line 436
    .line 437
    iput v6, v0, Lc1/f;->l:I

    .line 438
    .line 439
    goto/16 :goto_0

    .line 440
    .line 441
    :cond_b
    iget-boolean v3, v0, Lc1/f;->n:Z

    .line 442
    .line 443
    if-nez v3, :cond_c

    .line 444
    .line 445
    iput-boolean v9, v0, Lc1/f;->n:Z

    .line 446
    .line 447
    iget v3, v0, Lc1/f;->q:I

    .line 448
    .line 449
    iput v3, v0, Lc1/f;->o:I

    .line 450
    .line 451
    iput v2, v0, Lc1/f;->p:I

    .line 452
    .line 453
    :cond_c
    iput v8, v0, Lc1/f;->j:I

    .line 454
    .line 455
    iput v10, v0, Lc1/f;->k:I

    .line 456
    .line 457
    goto/16 :goto_0

    .line 458
    .line 459
    :cond_d
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 464
    .line 465
    .line 466
    move-result v14

    .line 467
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 468
    .line 469
    .line 470
    move-result v15

    .line 471
    :goto_5
    if-ge v14, v15, :cond_26

    .line 472
    .line 473
    add-int/lit8 v6, v14, 0x1

    .line 474
    .line 475
    move/from16 v17, v8

    .line 476
    .line 477
    aget-byte v8, v2, v14

    .line 478
    .line 479
    and-int/lit16 v4, v8, 0xff

    .line 480
    .line 481
    iget v11, v0, Lc1/f;->l:I

    .line 482
    .line 483
    const/16 v3, 0x200

    .line 484
    .line 485
    if-ne v11, v3, :cond_20

    .line 486
    .line 487
    int-to-byte v11, v4

    .line 488
    and-int/lit16 v11, v11, 0xff

    .line 489
    .line 490
    const v19, 0xff00

    .line 491
    .line 492
    .line 493
    or-int v11, v19, v11

    .line 494
    .line 495
    invoke-static {v11}, Lc1/f;->isAdtsSyncWord(I)Z

    .line 496
    .line 497
    .line 498
    move-result v11

    .line 499
    if-eqz v11, :cond_20

    .line 500
    .line 501
    iget-boolean v11, v0, Lc1/f;->n:Z

    .line 502
    .line 503
    if-nez v11, :cond_1d

    .line 504
    .line 505
    add-int/lit8 v11, v14, -0x1

    .line 506
    .line 507
    invoke-virtual {v1, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 508
    .line 509
    .line 510
    iget-object v3, v13, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 511
    .line 512
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 513
    .line 514
    .line 515
    move-result v5

    .line 516
    if-ge v5, v9, :cond_e

    .line 517
    .line 518
    :goto_6
    const/4 v7, -0x1

    .line 519
    goto/16 :goto_8

    .line 520
    .line 521
    :cond_e
    invoke-virtual {v1, v3, v10, v9}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v13, v7}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v13, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    iget v5, v0, Lc1/f;->o:I

    .line 532
    .line 533
    const/4 v7, -0x1

    .line 534
    if-eq v5, v7, :cond_f

    .line 535
    .line 536
    if-eq v3, v5, :cond_f

    .line 537
    .line 538
    goto/16 :goto_8

    .line 539
    .line 540
    :cond_f
    iget v5, v0, Lc1/f;->p:I

    .line 541
    .line 542
    if-eq v5, v7, :cond_12

    .line 543
    .line 544
    iget-object v5, v13, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 545
    .line 546
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 547
    .line 548
    .line 549
    move-result v7

    .line 550
    if-ge v7, v9, :cond_10

    .line 551
    .line 552
    goto/16 :goto_9

    .line 553
    .line 554
    :cond_10
    invoke-virtual {v1, v5, v10, v9}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 555
    .line 556
    .line 557
    const/4 v5, 0x2

    .line 558
    invoke-virtual {v13, v5}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 559
    .line 560
    .line 561
    const/4 v5, 0x4

    .line 562
    invoke-virtual {v13, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 563
    .line 564
    .line 565
    move-result v7

    .line 566
    iget v9, v0, Lc1/f;->p:I

    .line 567
    .line 568
    if-eq v7, v9, :cond_11

    .line 569
    .line 570
    goto :goto_6

    .line 571
    :cond_11
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 572
    .line 573
    .line 574
    goto :goto_7

    .line 575
    :cond_12
    const/4 v5, 0x4

    .line 576
    :goto_7
    iget-object v7, v13, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 577
    .line 578
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 579
    .line 580
    .line 581
    move-result v9

    .line 582
    if-ge v9, v5, :cond_13

    .line 583
    .line 584
    goto :goto_9

    .line 585
    :cond_13
    invoke-virtual {v1, v7, v10, v5}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 586
    .line 587
    .line 588
    const/16 v7, 0xe

    .line 589
    .line 590
    invoke-virtual {v13, v7}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 591
    .line 592
    .line 593
    const/16 v7, 0xd

    .line 594
    .line 595
    invoke-virtual {v13, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 596
    .line 597
    .line 598
    move-result v9

    .line 599
    const/4 v5, 0x7

    .line 600
    if-ge v9, v5, :cond_14

    .line 601
    .line 602
    goto :goto_6

    .line 603
    :cond_14
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 604
    .line 605
    .line 606
    move-result-object v18

    .line 607
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 608
    .line 609
    .line 610
    move-result v5

    .line 611
    add-int/2addr v11, v9

    .line 612
    if-lt v11, v5, :cond_15

    .line 613
    .line 614
    goto :goto_9

    .line 615
    :cond_15
    aget-byte v9, v18, v11

    .line 616
    .line 617
    const/4 v7, -0x1

    .line 618
    if-ne v9, v7, :cond_17

    .line 619
    .line 620
    add-int/lit8 v11, v11, 0x1

    .line 621
    .line 622
    if-ne v11, v5, :cond_16

    .line 623
    .line 624
    goto :goto_9

    .line 625
    :cond_16
    aget-byte v5, v18, v11

    .line 626
    .line 627
    and-int/lit16 v5, v5, 0xff

    .line 628
    .line 629
    or-int v5, v19, v5

    .line 630
    .line 631
    invoke-static {v5}, Lc1/f;->isAdtsSyncWord(I)Z

    .line 632
    .line 633
    .line 634
    move-result v5

    .line 635
    if-eqz v5, :cond_1c

    .line 636
    .line 637
    aget-byte v5, v18, v11

    .line 638
    .line 639
    and-int/lit8 v5, v5, 0x8

    .line 640
    .line 641
    shr-int/lit8 v5, v5, 0x3

    .line 642
    .line 643
    if-ne v5, v3, :cond_1c

    .line 644
    .line 645
    goto :goto_9

    .line 646
    :cond_17
    const/16 v3, 0x49

    .line 647
    .line 648
    if-eq v9, v3, :cond_18

    .line 649
    .line 650
    goto :goto_8

    .line 651
    :cond_18
    add-int/lit8 v3, v11, 0x1

    .line 652
    .line 653
    if-ne v3, v5, :cond_19

    .line 654
    .line 655
    goto :goto_9

    .line 656
    :cond_19
    aget-byte v3, v18, v3

    .line 657
    .line 658
    const/16 v9, 0x44

    .line 659
    .line 660
    if-eq v3, v9, :cond_1a

    .line 661
    .line 662
    goto :goto_8

    .line 663
    :cond_1a
    add-int/lit8 v11, v11, 0x2

    .line 664
    .line 665
    if-ne v11, v5, :cond_1b

    .line 666
    .line 667
    goto :goto_9

    .line 668
    :cond_1b
    aget-byte v3, v18, v11

    .line 669
    .line 670
    const/16 v5, 0x33

    .line 671
    .line 672
    if-ne v3, v5, :cond_1c

    .line 673
    .line 674
    goto :goto_9

    .line 675
    :cond_1c
    :goto_8
    const/4 v3, 0x1

    .line 676
    goto :goto_c

    .line 677
    :cond_1d
    :goto_9
    and-int/lit8 v2, v8, 0x8

    .line 678
    .line 679
    shr-int/lit8 v2, v2, 0x3

    .line 680
    .line 681
    iput v2, v0, Lc1/f;->q:I

    .line 682
    .line 683
    and-int/lit8 v2, v8, 0x1

    .line 684
    .line 685
    if-nez v2, :cond_1e

    .line 686
    .line 687
    const/4 v2, 0x1

    .line 688
    goto :goto_a

    .line 689
    :cond_1e
    move v2, v10

    .line 690
    :goto_a
    iput-boolean v2, v0, Lc1/f;->m:Z

    .line 691
    .line 692
    iget-boolean v2, v0, Lc1/f;->n:Z

    .line 693
    .line 694
    if-nez v2, :cond_1f

    .line 695
    .line 696
    const/4 v3, 0x1

    .line 697
    iput v3, v0, Lc1/f;->j:I

    .line 698
    .line 699
    iput v10, v0, Lc1/f;->k:I

    .line 700
    .line 701
    goto :goto_b

    .line 702
    :cond_1f
    move/from16 v2, v17

    .line 703
    .line 704
    iput v2, v0, Lc1/f;->j:I

    .line 705
    .line 706
    iput v10, v0, Lc1/f;->k:I

    .line 707
    .line 708
    :goto_b
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 709
    .line 710
    .line 711
    goto/16 :goto_0

    .line 712
    .line 713
    :cond_20
    move v7, v5

    .line 714
    move v3, v9

    .line 715
    :goto_c
    iget v5, v0, Lc1/f;->l:I

    .line 716
    .line 717
    or-int/2addr v4, v5

    .line 718
    const/16 v8, 0x149

    .line 719
    .line 720
    if-eq v4, v8, :cond_25

    .line 721
    .line 722
    const/16 v8, 0x1ff

    .line 723
    .line 724
    if-eq v4, v8, :cond_24

    .line 725
    .line 726
    const/16 v8, 0x344

    .line 727
    .line 728
    if-eq v4, v8, :cond_23

    .line 729
    .line 730
    const/16 v8, 0x433

    .line 731
    .line 732
    if-eq v4, v8, :cond_22

    .line 733
    .line 734
    const/16 v4, 0x100

    .line 735
    .line 736
    if-eq v5, v4, :cond_21

    .line 737
    .line 738
    iput v4, v0, Lc1/f;->l:I

    .line 739
    .line 740
    const/4 v5, 0x2

    .line 741
    const/4 v8, 0x3

    .line 742
    goto :goto_e

    .line 743
    :cond_21
    const/4 v5, 0x2

    .line 744
    const/4 v8, 0x3

    .line 745
    goto :goto_d

    .line 746
    :cond_22
    const/4 v5, 0x2

    .line 747
    iput v5, v0, Lc1/f;->j:I

    .line 748
    .line 749
    const/4 v8, 0x3

    .line 750
    iput v8, v0, Lc1/f;->k:I

    .line 751
    .line 752
    iput v10, v0, Lc1/f;->t:I

    .line 753
    .line 754
    invoke-virtual {v12, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 758
    .line 759
    .line 760
    goto/16 :goto_0

    .line 761
    .line 762
    :cond_23
    const/16 v4, 0x100

    .line 763
    .line 764
    const/4 v5, 0x2

    .line 765
    const/4 v8, 0x3

    .line 766
    const/16 v9, 0x400

    .line 767
    .line 768
    iput v9, v0, Lc1/f;->l:I

    .line 769
    .line 770
    goto :goto_d

    .line 771
    :cond_24
    const/16 v4, 0x100

    .line 772
    .line 773
    const/4 v5, 0x2

    .line 774
    const/4 v8, 0x3

    .line 775
    const/16 v9, 0x200

    .line 776
    .line 777
    iput v9, v0, Lc1/f;->l:I

    .line 778
    .line 779
    goto :goto_d

    .line 780
    :cond_25
    const/16 v4, 0x100

    .line 781
    .line 782
    const/4 v5, 0x2

    .line 783
    const/4 v8, 0x3

    .line 784
    const/16 v9, 0x300

    .line 785
    .line 786
    iput v9, v0, Lc1/f;->l:I

    .line 787
    .line 788
    :goto_d
    move v14, v6

    .line 789
    :goto_e
    move v9, v3

    .line 790
    move v6, v4

    .line 791
    move v3, v5

    .line 792
    move v5, v7

    .line 793
    const/4 v7, 0x4

    .line 794
    const/16 v11, 0xd

    .line 795
    .line 796
    goto/16 :goto_5

    .line 797
    .line 798
    :cond_26
    invoke-virtual {v1, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 799
    .line 800
    .line 801
    goto/16 :goto_0

    .line 802
    .line 803
    :cond_27
    return-void
.end method

.method public createTracks(Lv0/F;Lc1/W;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lc1/W;->generateNewId()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lc1/W;->getFormatId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lc1/f;->g:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lc1/W;->getTrackId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-interface {p1, v0, v1}, Lv0/F;->track(II)Lv0/r0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lc1/f;->h:Lv0/r0;

    .line 20
    .line 21
    iput-object v0, p0, Lc1/f;->v:Lv0/r0;

    .line 22
    .line 23
    iget-boolean v0, p0, Lc1/f;->a:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2}, Lc1/W;->generateNewId()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lc1/W;->getTrackId()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x5

    .line 35
    invoke-interface {p1, v0, v1}, Lv0/F;->track(II)Lv0/r0;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lc1/f;->i:Lv0/r0;

    .line 40
    .line 41
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 42
    .line 43
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lc1/W;->getFormatId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {v0, p2}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget-object v0, p0, Lc1/f;->f:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p2, v0}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    const-string v0, "application/id3"

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-interface {p1, p2}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_0
    new-instance p1, Lv0/y;

    .line 75
    .line 76
    invoke-direct {p1}, Lv0/y;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lc1/f;->i:Lv0/r0;

    .line 80
    .line 81
    return-void
.end method

.method public getSampleDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc1/f;->s:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public packetFinished(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public packetStarted(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc1/f;->u:J

    .line 2
    .line 3
    return-void
.end method

.method public seek()V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Lc1/f;->u:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lc1/f;->n:Z

    .line 10
    .line 11
    iput v0, p0, Lc1/f;->j:I

    .line 12
    .line 13
    iput v0, p0, Lc1/f;->k:I

    .line 14
    .line 15
    const/16 v0, 0x100

    .line 16
    .line 17
    iput v0, p0, Lc1/f;->l:I

    .line 18
    .line 19
    return-void
.end method
