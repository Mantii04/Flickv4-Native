.class public final LP0/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# instance fields
.field public A:J

.field public B:Lv0/F;

.field public C:[LP0/A;

.field public D:[[J

.field public E:I

.field public F:LE0/c;

.field public final a:LS0/q;

.field public final b:I

.field public final c:Z

.field public final d:Landroidx/media3/common/util/ParsableByteArray;

.field public final e:Landroidx/media3/common/util/ParsableByteArray;

.field public final f:Landroidx/media3/common/util/ParsableByteArray;

.field public final g:Landroidx/media3/common/util/ParsableByteArray;

.field public final h:Ljava/util/ArrayDeque;

.field public final i:LP0/G;

.field public final j:Ljava/util/ArrayList;

.field public k:Lcom/google/common/collect/ImmutableList;

.field public l:I

.field public m:I

.field public n:J

.field public o:I

.field public p:Landroidx/media3/common/util/ParsableByteArray;

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:J

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(LS0/q;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LP0/B;->a:LS0/q;

    .line 5
    .line 6
    iput p2, p0, LP0/B;->b:I

    .line 7
    .line 8
    and-int/lit16 p1, p2, 0x100

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v0

    .line 16
    :goto_0
    iput-boolean p1, p0, LP0/B;->c:Z

    .line 17
    .line 18
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, LP0/B;->k:Lcom/google/common/collect/ImmutableList;

    .line 23
    .line 24
    and-int/lit8 p1, p2, 0x4

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x3

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move p1, v0

    .line 31
    :goto_1
    iput p1, p0, LP0/B;->l:I

    .line 32
    .line 33
    new-instance p1, LP0/G;

    .line 34
    .line 35
    invoke-direct {p1}, LP0/G;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, LP0/B;->i:LP0/G;

    .line 39
    .line 40
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, LP0/B;->j:Ljava/util/ArrayList;

    .line 46
    .line 47
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 48
    .line 49
    const/16 p2, 0x10

    .line 50
    .line 51
    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, LP0/B;->g:Landroidx/media3/common/util/ParsableByteArray;

    .line 55
    .line 56
    new-instance p1, Ljava/util/ArrayDeque;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, LP0/B;->h:Ljava/util/ArrayDeque;

    .line 62
    .line 63
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 64
    .line 65
    sget-object p2, Ls0/v;->a:[B

    .line 66
    .line 67
    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, LP0/B;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 71
    .line 72
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 73
    .line 74
    const/4 p2, 0x6

    .line 75
    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, LP0/B;->e:Landroidx/media3/common/util/ParsableByteArray;

    .line 79
    .line 80
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 81
    .line 82
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, LP0/B;->f:Landroidx/media3/common/util/ParsableByteArray;

    .line 86
    .line 87
    const/4 p1, -0x1

    .line 88
    iput p1, p0, LP0/B;->q:I

    .line 89
    .line 90
    sget-object p1, Lv0/F;->d:Lv0/E;

    .line 91
    .line 92
    iput-object p1, p0, LP0/B;->B:Lv0/F;

    .line 93
    .line 94
    new-array p1, v0, [LP0/A;

    .line 95
    .line 96
    iput-object p1, p0, LP0/B;->C:[LP0/A;

    .line 97
    .line 98
    return-void
.end method

.method public static codecsToParseWithinGopSampleDependenciesAsFlags(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    and-int/lit8 p0, p0, 0x2

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    or-int/lit16 p0, v0, 0x80

    .line 14
    .line 15
    return p0

    .line 16
    :cond_1
    return v0
.end method


# virtual methods
.method public final a(J)V
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x1

    .line 7
    :goto_0
    iget-object v6, v0, LP0/B;->h:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v7

    .line 13
    if-nez v7, :cond_2d

    .line 14
    .line 15
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    check-cast v7, Ls0/d;

    .line 20
    .line 21
    iget-wide v7, v7, Ls0/d;->b:J

    .line 22
    .line 23
    cmp-long v7, v7, p1

    .line 24
    .line 25
    if-nez v7, :cond_2d

    .line 26
    .line 27
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    move-object v8, v7

    .line 32
    check-cast v8, Ls0/d;

    .line 33
    .line 34
    iget v7, v8, Ls0/f;->a:I

    .line 35
    .line 36
    const v9, 0x6d6f6f76

    .line 37
    .line 38
    .line 39
    if-ne v7, v9, :cond_2b

    .line 40
    .line 41
    const v7, 0x6d657461

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v7}, Ls0/d;->getContainerBoxOfType(I)Ls0/d;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    new-instance v9, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-boolean v10, v0, LP0/B;->c:Z

    .line 54
    .line 55
    const-wide/16 v17, 0x0

    .line 56
    .line 57
    iget v11, v0, LP0/B;->b:I

    .line 58
    .line 59
    const/16 v19, 0x0

    .line 60
    .line 61
    if-eqz v7, :cond_a

    .line 62
    .line 63
    invoke-static {v7}, LP0/n;->parseMdtaFromMeta(Ls0/d;)Landroidx/media3/common/Metadata;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    iget-boolean v12, v0, LP0/B;->y:Z

    .line 68
    .line 69
    const-class v13, Ls0/b;

    .line 70
    .line 71
    if-eqz v12, :cond_6

    .line 72
    .line 73
    invoke-static {v7}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    new-instance v9, LO0/d;

    .line 77
    .line 78
    invoke-direct {v9, v5}, LO0/d;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v13, v9}, Landroidx/media3/common/Metadata;->getFirstMatchingEntry(Ljava/lang/Class;LP3/w;)Landroidx/media3/common/Metadata$Entry;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    check-cast v9, Ls0/b;

    .line 86
    .line 87
    if-eqz v9, :cond_0

    .line 88
    .line 89
    iget-object v9, v9, Ls0/b;->b:[B

    .line 90
    .line 91
    aget-byte v9, v9, v4

    .line 92
    .line 93
    if-nez v9, :cond_0

    .line 94
    .line 95
    iget-wide v14, v0, LP0/B;->x:J

    .line 96
    .line 97
    const-wide/16 v20, 0x10

    .line 98
    .line 99
    add-long v14, v14, v20

    .line 100
    .line 101
    iput-wide v14, v0, LP0/B;->A:J

    .line 102
    .line 103
    :cond_0
    new-instance v9, LO0/d;

    .line 104
    .line 105
    invoke-direct {v9, v2}, LO0/d;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v13, v9}, Landroidx/media3/common/Metadata;->getFirstMatchingEntry(Ljava/lang/Class;LP3/w;)Landroidx/media3/common/Metadata$Entry;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    check-cast v9, Ls0/b;

    .line 113
    .line 114
    invoke-static {v9}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    check-cast v9, Ls0/b;

    .line 119
    .line 120
    invoke-virtual {v9}, Ls0/b;->getAuxiliaryTrackTypesFromMap()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    new-instance v12, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v13

    .line 130
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .line 132
    .line 133
    move v13, v4

    .line 134
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v14

    .line 138
    if-ge v13, v14, :cond_5

    .line 139
    .line 140
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v14

    .line 144
    check-cast v14, Ljava/lang/Integer;

    .line 145
    .line 146
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v14

    .line 150
    if-eqz v14, :cond_4

    .line 151
    .line 152
    if-eq v14, v5, :cond_3

    .line 153
    .line 154
    if-eq v14, v3, :cond_2

    .line 155
    .line 156
    if-eq v14, v2, :cond_1

    .line 157
    .line 158
    move v14, v4

    .line 159
    goto :goto_2

    .line 160
    :cond_1
    const/4 v14, 0x4

    .line 161
    goto :goto_2

    .line 162
    :cond_2
    move v14, v2

    .line 163
    goto :goto_2

    .line 164
    :cond_3
    move v14, v3

    .line 165
    goto :goto_2

    .line 166
    :cond_4
    move v14, v5

    .line 167
    :goto_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    add-int/2addr v13, v5

    .line 175
    goto :goto_1

    .line 176
    :cond_5
    move-object v9, v12

    .line 177
    goto :goto_3

    .line 178
    :cond_6
    if-eqz v7, :cond_b

    .line 179
    .line 180
    and-int/lit8 v12, v11, 0x40

    .line 181
    .line 182
    if-nez v12, :cond_7

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_7
    new-instance v12, LO0/d;

    .line 186
    .line 187
    invoke-direct {v12, v3}, LO0/d;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7, v13, v12}, Landroidx/media3/common/Metadata;->getFirstMatchingEntry(Ljava/lang/Class;LP3/w;)Landroidx/media3/common/Metadata$Entry;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    check-cast v12, Ls0/b;

    .line 195
    .line 196
    if-nez v12, :cond_8

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_8
    new-instance v13, Landroidx/media3/common/util/ParsableByteArray;

    .line 200
    .line 201
    iget-object v12, v12, Ls0/b;->b:[B

    .line 202
    .line 203
    invoke-direct {v13, v12}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    .line 207
    .line 208
    .line 209
    move-result-wide v12

    .line 210
    cmp-long v14, v12, v17

    .line 211
    .line 212
    if-gtz v14, :cond_9

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_9
    iput-wide v12, v0, LP0/B;->x:J

    .line 216
    .line 217
    iput-boolean v5, v0, LP0/B;->w:Z

    .line 218
    .line 219
    move/from16 v21, v2

    .line 220
    .line 221
    move-object/from16 v30, v6

    .line 222
    .line 223
    move/from16 v23, v10

    .line 224
    .line 225
    goto/16 :goto_22

    .line 226
    .line 227
    :cond_a
    move-object/from16 v7, v19

    .line 228
    .line 229
    :cond_b
    :goto_3
    new-instance v12, Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .line 233
    .line 234
    iget v13, v0, LP0/B;->E:I

    .line 235
    .line 236
    if-ne v13, v5, :cond_c

    .line 237
    .line 238
    move v14, v5

    .line 239
    :goto_4
    move-object v13, v9

    .line 240
    goto :goto_5

    .line 241
    :cond_c
    move v14, v4

    .line 242
    goto :goto_4

    .line 243
    :goto_5
    new-instance v9, Lv0/U;

    .line 244
    .line 245
    invoke-direct {v9}, Lv0/U;-><init>()V

    .line 246
    .line 247
    .line 248
    const v15, 0x75647461

    .line 249
    .line 250
    .line 251
    invoke-virtual {v8, v15}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    .line 252
    .line 253
    .line 254
    move-result-object v15

    .line 255
    if-eqz v15, :cond_d

    .line 256
    .line 257
    invoke-static {v15}, LP0/n;->parseUdta(Ls0/e;)Landroidx/media3/common/Metadata;

    .line 258
    .line 259
    .line 260
    move-result-object v15

    .line 261
    invoke-virtual {v9, v15}, Lv0/U;->setFromMetadata(Landroidx/media3/common/Metadata;)Z

    .line 262
    .line 263
    .line 264
    move-object/from16 v20, v15

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_d
    move-object/from16 v20, v19

    .line 268
    .line 269
    :goto_6
    new-instance v15, Landroidx/media3/common/Metadata;

    .line 270
    .line 271
    move/from16 v21, v2

    .line 272
    .line 273
    const v2, 0x6d766864

    .line 274
    .line 275
    .line 276
    invoke-virtual {v8, v2}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    check-cast v2, Ls0/e;

    .line 285
    .line 286
    iget-object v2, v2, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 287
    .line 288
    invoke-static {v2}, LP0/n;->parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Ls0/h;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    new-array v1, v5, [Landroidx/media3/common/Metadata$Entry;

    .line 293
    .line 294
    aput-object v2, v1, v4

    .line 295
    .line 296
    invoke-direct {v15, v1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 297
    .line 298
    .line 299
    and-int/lit8 v1, v11, 0x1

    .line 300
    .line 301
    if-eqz v1, :cond_e

    .line 302
    .line 303
    move-object v1, v13

    .line 304
    move v13, v5

    .line 305
    :goto_7
    move-object v2, v15

    .line 306
    goto :goto_8

    .line 307
    :cond_e
    move-object v1, v13

    .line 308
    move v13, v4

    .line 309
    goto :goto_7

    .line 310
    :goto_8
    new-instance v15, LP0/y;

    .line 311
    .line 312
    invoke-direct {v15, v4}, LP0/y;-><init>(I)V

    .line 313
    .line 314
    .line 315
    move-object/from16 v16, v12

    .line 316
    .line 317
    iget-boolean v12, v0, LP0/B;->c:Z

    .line 318
    .line 319
    move/from16 v23, v10

    .line 320
    .line 321
    move/from16 v24, v11

    .line 322
    .line 323
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    move-object/from16 v22, v2

    .line 329
    .line 330
    move-object/from16 v2, v16

    .line 331
    .line 332
    move/from16 v16, v12

    .line 333
    .line 334
    const/4 v12, 0x0

    .line 335
    invoke-static/range {v8 .. v16}, LP0/n;->parseTraks(Ls0/d;Lv0/U;JLandroidx/media3/common/DrmInitData;ZZLP3/p;Z)Ljava/util/List;

    .line 336
    .line 337
    .line 338
    move-result-object v8

    .line 339
    iget-boolean v10, v0, LP0/B;->y:Z

    .line 340
    .line 341
    if-eqz v10, :cond_10

    .line 342
    .line 343
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 344
    .line 345
    .line 346
    move-result v10

    .line 347
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 348
    .line 349
    .line 350
    move-result v11

    .line 351
    if-ne v10, v11, :cond_f

    .line 352
    .line 353
    move v10, v5

    .line 354
    goto :goto_9

    .line 355
    :cond_f
    move v10, v4

    .line 356
    :goto_9
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 357
    .line 358
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 359
    .line 360
    .line 361
    move-result v11

    .line 362
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 363
    .line 364
    .line 365
    move-result v12

    .line 366
    new-instance v13, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    const-string v14, "The number of auxiliary track types from metadata ("

    .line 369
    .line 370
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v11, ") is not same as the number of auxiliary tracks ("

    .line 377
    .line 378
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v11, ")"

    .line 385
    .line 386
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v11

    .line 393
    invoke-static {v10, v11}, LP3/v;->checkState(ZLjava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    :cond_10
    invoke-static {v8}, LP0/x;->getContainerMimeType(Ljava/util/List;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v10

    .line 400
    move v14, v4

    .line 401
    move v15, v14

    .line 402
    move/from16 v16, v15

    .line 403
    .line 404
    move/from16 v27, v5

    .line 405
    .line 406
    const/4 v4, -0x1

    .line 407
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    :goto_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    if-ge v14, v5, :cond_24

    .line 422
    .line 423
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    check-cast v5, LP0/M;

    .line 428
    .line 429
    iget v13, v5, LP0/M;->b:I

    .line 430
    .line 431
    if-nez v13, :cond_11

    .line 432
    .line 433
    move-object/from16 v36, v1

    .line 434
    .line 435
    move-object/from16 v30, v6

    .line 436
    .line 437
    move-object/from16 v31, v8

    .line 438
    .line 439
    move/from16 v38, v14

    .line 440
    .line 441
    const/4 v1, -0x1

    .line 442
    move-object v8, v2

    .line 443
    const/4 v2, 0x4

    .line 444
    goto/16 :goto_1d

    .line 445
    .line 446
    :cond_11
    new-instance v13, LP0/A;

    .line 447
    .line 448
    iget-object v3, v0, LP0/B;->B:Lv0/F;

    .line 449
    .line 450
    add-int/lit8 v29, v15, 0x1

    .line 451
    .line 452
    move-object/from16 v30, v6

    .line 453
    .line 454
    iget-object v6, v5, LP0/M;->a:LP0/J;

    .line 455
    .line 456
    move-object/from16 v31, v8

    .line 457
    .line 458
    iget v8, v6, LP0/J;->b:I

    .line 459
    .line 460
    invoke-interface {v3, v15, v8}, Lv0/F;->track(II)Lv0/r0;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    invoke-direct {v13, v6, v5, v3}, LP0/A;-><init>(LP0/J;LP0/M;Lv0/r0;)V

    .line 465
    .line 466
    .line 467
    move-object v8, v2

    .line 468
    iget-wide v2, v6, LP0/J;->e:J

    .line 469
    .line 470
    cmp-long v15, v2, v25

    .line 471
    .line 472
    if-eqz v15, :cond_12

    .line 473
    .line 474
    goto :goto_b

    .line 475
    :cond_12
    iget-wide v2, v5, LP0/M;->i:J

    .line 476
    .line 477
    :goto_b
    iget-object v15, v13, LP0/A;->c:Lv0/r0;

    .line 478
    .line 479
    invoke-interface {v15, v2, v3}, Lv0/r0;->durationUs(J)V

    .line 480
    .line 481
    .line 482
    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 483
    .line 484
    .line 485
    move-result-wide v11

    .line 486
    move-object/from16 v32, v8

    .line 487
    .line 488
    iget-object v8, v6, LP0/J;->g:Landroidx/media3/common/Format;

    .line 489
    .line 490
    move-wide/from16 v33, v11

    .line 491
    .line 492
    iget-object v11, v8, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 493
    .line 494
    const-string v12, "audio/true-hd"

    .line 495
    .line 496
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-result v11

    .line 500
    iget v12, v5, LP0/M;->e:I

    .line 501
    .line 502
    if-eqz v11, :cond_13

    .line 503
    .line 504
    mul-int/lit8 v12, v12, 0x10

    .line 505
    .line 506
    goto :goto_c

    .line 507
    :cond_13
    add-int/lit8 v12, v12, 0x1e

    .line 508
    .line 509
    :goto_c
    invoke-virtual {v8}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 510
    .line 511
    .line 512
    move-result-object v11

    .line 513
    invoke-virtual {v11, v12}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    .line 514
    .line 515
    .line 516
    iget v6, v6, LP0/J;->b:I

    .line 517
    .line 518
    const/4 v12, 0x2

    .line 519
    if-ne v6, v12, :cond_17

    .line 520
    .line 521
    iget v12, v8, Landroidx/media3/common/Format;->roleFlags:I

    .line 522
    .line 523
    and-int/lit8 v35, v24, 0x8

    .line 524
    .line 525
    if-eqz v35, :cond_15

    .line 526
    .line 527
    move/from16 v35, v12

    .line 528
    .line 529
    const/4 v12, -0x1

    .line 530
    if-ne v4, v12, :cond_14

    .line 531
    .line 532
    move/from16 v12, v27

    .line 533
    .line 534
    goto :goto_d

    .line 535
    :cond_14
    const/4 v12, 0x2

    .line 536
    :goto_d
    or-int v12, v35, v12

    .line 537
    .line 538
    :cond_15
    move/from16 v35, v12

    .line 539
    .line 540
    iget-boolean v12, v0, LP0/B;->y:Z

    .line 541
    .line 542
    if-eqz v12, :cond_16

    .line 543
    .line 544
    const v12, 0x8000

    .line 545
    .line 546
    .line 547
    or-int v12, v35, v12

    .line 548
    .line 549
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v35

    .line 553
    check-cast v35, Ljava/lang/Integer;

    .line 554
    .line 555
    move-object/from16 v36, v1

    .line 556
    .line 557
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    invoke-virtual {v11, v1}, Landroidx/media3/common/Format$Builder;->setAuxiliaryTrackType(I)Landroidx/media3/common/Format$Builder;

    .line 562
    .line 563
    .line 564
    goto :goto_e

    .line 565
    :cond_16
    move-object/from16 v36, v1

    .line 566
    .line 567
    move/from16 v12, v35

    .line 568
    .line 569
    :goto_e
    invoke-virtual {v11, v12}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    .line 570
    .line 571
    .line 572
    goto :goto_f

    .line 573
    :cond_17
    move-object/from16 v36, v1

    .line 574
    .line 575
    :goto_f
    iget-object v1, v8, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 576
    .line 577
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    .line 578
    .line 579
    .line 580
    move-result v1

    .line 581
    if-nez v1, :cond_18

    .line 582
    .line 583
    move/from16 v38, v14

    .line 584
    .line 585
    move-object/from16 v39, v15

    .line 586
    .line 587
    :goto_10
    move-wide/from16 v1, v25

    .line 588
    .line 589
    goto/16 :goto_17

    .line 590
    .line 591
    :cond_18
    iget-object v1, v5, LP0/M;->h:[I

    .line 592
    .line 593
    iget-boolean v12, v5, LP0/M;->j:Z

    .line 594
    .line 595
    if-eqz v12, :cond_19

    .line 596
    .line 597
    move/from16 v35, v12

    .line 598
    .line 599
    iget v12, v5, LP0/M;->b:I

    .line 600
    .line 601
    :goto_11
    move-object/from16 v37, v1

    .line 602
    .line 603
    goto :goto_12

    .line 604
    :cond_19
    move/from16 v35, v12

    .line 605
    .line 606
    array-length v12, v1

    .line 607
    goto :goto_11

    .line 608
    :goto_12
    const/16 v1, 0x14

    .line 609
    .line 610
    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    .line 611
    .line 612
    .line 613
    move-result v1

    .line 614
    cmp-long v12, v2, v25

    .line 615
    .line 616
    if-eqz v12, :cond_1a

    .line 617
    .line 618
    move/from16 v12, v27

    .line 619
    .line 620
    goto :goto_13

    .line 621
    :cond_1a
    move/from16 v12, v16

    .line 622
    .line 623
    :goto_13
    invoke-static {v12}, LP3/v;->checkState(Z)V

    .line 624
    .line 625
    .line 626
    move/from16 v38, v14

    .line 627
    .line 628
    move-object/from16 v39, v15

    .line 629
    .line 630
    const-wide/32 v14, 0x989680

    .line 631
    .line 632
    .line 633
    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 634
    .line 635
    .line 636
    move-result-wide v2

    .line 637
    move-wide/from16 v40, v2

    .line 638
    .line 639
    move/from16 v14, v16

    .line 640
    .line 641
    move v15, v14

    .line 642
    const/4 v12, -0x1

    .line 643
    :goto_14
    iget-object v2, v5, LP0/M;->f:[J

    .line 644
    .line 645
    if-ge v14, v1, :cond_1c

    .line 646
    .line 647
    if-eqz v35, :cond_1b

    .line 648
    .line 649
    move v3, v14

    .line 650
    goto :goto_15

    .line 651
    :cond_1b
    aget v3, v37, v14

    .line 652
    .line 653
    :goto_15
    aget-wide v42, v2, v3

    .line 654
    .line 655
    cmp-long v44, v42, v40

    .line 656
    .line 657
    if-lez v44, :cond_1d

    .line 658
    .line 659
    :cond_1c
    const/4 v1, -0x1

    .line 660
    goto :goto_16

    .line 661
    :cond_1d
    cmp-long v2, v42, v17

    .line 662
    .line 663
    if-ltz v2, :cond_1e

    .line 664
    .line 665
    iget-object v2, v5, LP0/M;->d:[I

    .line 666
    .line 667
    aget v2, v2, v3

    .line 668
    .line 669
    if-le v2, v15, :cond_1e

    .line 670
    .line 671
    move v15, v2

    .line 672
    move v12, v3

    .line 673
    :cond_1e
    add-int/lit8 v14, v14, 0x1

    .line 674
    .line 675
    goto :goto_14

    .line 676
    :goto_16
    if-ne v12, v1, :cond_1f

    .line 677
    .line 678
    goto :goto_10

    .line 679
    :cond_1f
    aget-wide v1, v2, v12

    .line 680
    .line 681
    :goto_17
    cmp-long v3, v1, v25

    .line 682
    .line 683
    if-eqz v3, :cond_20

    .line 684
    .line 685
    new-instance v3, Landroidx/media3/common/Metadata;

    .line 686
    .line 687
    new-instance v5, LE0/e;

    .line 688
    .line 689
    invoke-direct {v5, v1, v2}, LE0/e;-><init>(J)V

    .line 690
    .line 691
    .line 692
    move/from16 v1, v27

    .line 693
    .line 694
    new-array v2, v1, [Landroidx/media3/common/Metadata$Entry;

    .line 695
    .line 696
    aput-object v5, v2, v16

    .line 697
    .line 698
    invoke-direct {v3, v2}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 699
    .line 700
    .line 701
    goto :goto_18

    .line 702
    :cond_20
    move-object/from16 v3, v19

    .line 703
    .line 704
    :goto_18
    invoke-static {v6, v9, v11}, LP0/w;->setFormatGaplessInfo(ILv0/U;Landroidx/media3/common/Format$Builder;)V

    .line 705
    .line 706
    .line 707
    iget-object v1, v8, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 708
    .line 709
    iget-object v2, v0, LP0/B;->j:Ljava/util/ArrayList;

    .line 710
    .line 711
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 712
    .line 713
    .line 714
    move-result v5

    .line 715
    if-eqz v5, :cond_21

    .line 716
    .line 717
    move-object/from16 v5, v19

    .line 718
    .line 719
    :goto_19
    const/4 v2, 0x4

    .line 720
    goto :goto_1a

    .line 721
    :cond_21
    new-instance v5, Landroidx/media3/common/Metadata;

    .line 722
    .line 723
    invoke-direct {v5, v2}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 724
    .line 725
    .line 726
    goto :goto_19

    .line 727
    :goto_1a
    new-array v12, v2, [Landroidx/media3/common/Metadata;

    .line 728
    .line 729
    aput-object v5, v12, v16

    .line 730
    .line 731
    const/16 v27, 0x1

    .line 732
    .line 733
    aput-object v20, v12, v27

    .line 734
    .line 735
    const/16 v28, 0x2

    .line 736
    .line 737
    aput-object v22, v12, v28

    .line 738
    .line 739
    aput-object v3, v12, v21

    .line 740
    .line 741
    invoke-static {v6, v7, v11, v1, v12}, LP0/w;->setFormatMetadata(ILandroidx/media3/common/Metadata;Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Metadata;[Landroidx/media3/common/Metadata;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v11, v10}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 745
    .line 746
    .line 747
    iget-object v1, v8, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 748
    .line 749
    const-string v3, "audio/mpeg"

    .line 750
    .line 751
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    move-result v1

    .line 755
    if-eqz v1, :cond_22

    .line 756
    .line 757
    invoke-virtual {v11}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    iput-object v1, v13, LP0/A;->f:Landroidx/media3/common/Format;

    .line 762
    .line 763
    :goto_1b
    const/4 v12, 0x2

    .line 764
    goto :goto_1c

    .line 765
    :cond_22
    invoke-virtual {v11}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    move-object/from16 v3, v39

    .line 770
    .line 771
    invoke-interface {v3, v1}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 772
    .line 773
    .line 774
    goto :goto_1b

    .line 775
    :goto_1c
    const/4 v1, -0x1

    .line 776
    if-ne v6, v12, :cond_23

    .line 777
    .line 778
    if-ne v4, v1, :cond_23

    .line 779
    .line 780
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    .line 781
    .line 782
    .line 783
    move-result v4

    .line 784
    :cond_23
    move-object/from16 v8, v32

    .line 785
    .line 786
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    .line 788
    .line 789
    move/from16 v15, v29

    .line 790
    .line 791
    move-wide/from16 v11, v33

    .line 792
    .line 793
    const/16 v27, 0x1

    .line 794
    .line 795
    :goto_1d
    add-int/lit8 v14, v38, 0x1

    .line 796
    .line 797
    move-object v2, v8

    .line 798
    move-object/from16 v6, v30

    .line 799
    .line 800
    move-object/from16 v8, v31

    .line 801
    .line 802
    move-object/from16 v1, v36

    .line 803
    .line 804
    const/4 v3, 0x2

    .line 805
    const/16 v27, 0x1

    .line 806
    .line 807
    goto/16 :goto_a

    .line 808
    .line 809
    :cond_24
    move-object v8, v2

    .line 810
    move-object/from16 v30, v6

    .line 811
    .line 812
    move/from16 v3, v16

    .line 813
    .line 814
    const/4 v1, -0x1

    .line 815
    const/4 v2, 0x4

    .line 816
    new-array v5, v3, [LP0/A;

    .line 817
    .line 818
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v3

    .line 822
    check-cast v3, [LP0/A;

    .line 823
    .line 824
    iput-object v3, v0, LP0/B;->C:[LP0/A;

    .line 825
    .line 826
    if-nez v23, :cond_29

    .line 827
    .line 828
    array-length v5, v3

    .line 829
    new-array v5, v5, [[J

    .line 830
    .line 831
    array-length v6, v3

    .line 832
    new-array v6, v6, [I

    .line 833
    .line 834
    array-length v7, v3

    .line 835
    new-array v7, v7, [J

    .line 836
    .line 837
    array-length v8, v3

    .line 838
    new-array v8, v8, [Z

    .line 839
    .line 840
    const/4 v9, 0x0

    .line 841
    :goto_1e
    array-length v10, v3

    .line 842
    if-ge v9, v10, :cond_25

    .line 843
    .line 844
    aget-object v10, v3, v9

    .line 845
    .line 846
    iget-object v10, v10, LP0/A;->b:LP0/M;

    .line 847
    .line 848
    iget v10, v10, LP0/M;->b:I

    .line 849
    .line 850
    new-array v10, v10, [J

    .line 851
    .line 852
    aput-object v10, v5, v9

    .line 853
    .line 854
    aget-object v10, v3, v9

    .line 855
    .line 856
    iget-object v10, v10, LP0/A;->b:LP0/M;

    .line 857
    .line 858
    iget-object v10, v10, LP0/M;->f:[J

    .line 859
    .line 860
    const/16 v16, 0x0

    .line 861
    .line 862
    aget-wide v13, v10, v16

    .line 863
    .line 864
    aput-wide v13, v7, v9

    .line 865
    .line 866
    const/16 v27, 0x1

    .line 867
    .line 868
    add-int/lit8 v9, v9, 0x1

    .line 869
    .line 870
    goto :goto_1e

    .line 871
    :cond_25
    const/4 v9, 0x0

    .line 872
    :goto_1f
    array-length v10, v3

    .line 873
    if-ge v9, v10, :cond_2a

    .line 874
    .line 875
    const-wide v13, 0x7fffffffffffffffL

    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    move-wide v14, v13

    .line 881
    const/4 v10, 0x0

    .line 882
    move v13, v1

    .line 883
    :goto_20
    array-length v1, v3

    .line 884
    if-ge v10, v1, :cond_27

    .line 885
    .line 886
    aget-boolean v1, v8, v10

    .line 887
    .line 888
    if-nez v1, :cond_26

    .line 889
    .line 890
    aget-wide v19, v7, v10

    .line 891
    .line 892
    cmp-long v1, v19, v14

    .line 893
    .line 894
    if-gtz v1, :cond_26

    .line 895
    .line 896
    move v13, v10

    .line 897
    move-wide/from16 v14, v19

    .line 898
    .line 899
    :cond_26
    const/16 v27, 0x1

    .line 900
    .line 901
    add-int/lit8 v10, v10, 0x1

    .line 902
    .line 903
    goto :goto_20

    .line 904
    :cond_27
    const/16 v27, 0x1

    .line 905
    .line 906
    aget v1, v6, v13

    .line 907
    .line 908
    aget-object v10, v5, v13

    .line 909
    .line 910
    aput-wide v17, v10, v1

    .line 911
    .line 912
    aget-object v14, v3, v13

    .line 913
    .line 914
    iget-object v14, v14, LP0/A;->b:LP0/M;

    .line 915
    .line 916
    iget-object v15, v14, LP0/M;->d:[I

    .line 917
    .line 918
    aget v15, v15, v1

    .line 919
    .line 920
    move-object/from16 v20, v3

    .line 921
    .line 922
    int-to-long v2, v15

    .line 923
    add-long v17, v17, v2

    .line 924
    .line 925
    add-int/lit8 v1, v1, 0x1

    .line 926
    .line 927
    aput v1, v6, v13

    .line 928
    .line 929
    array-length v2, v10

    .line 930
    if-ge v1, v2, :cond_28

    .line 931
    .line 932
    iget-object v2, v14, LP0/M;->f:[J

    .line 933
    .line 934
    aget-wide v1, v2, v1

    .line 935
    .line 936
    aput-wide v1, v7, v13

    .line 937
    .line 938
    goto :goto_21

    .line 939
    :cond_28
    aput-boolean v27, v8, v13

    .line 940
    .line 941
    add-int/lit8 v9, v9, 0x1

    .line 942
    .line 943
    :goto_21
    move-object/from16 v3, v20

    .line 944
    .line 945
    const/4 v1, -0x1

    .line 946
    const/4 v2, 0x4

    .line 947
    goto :goto_1f

    .line 948
    :cond_29
    move-object/from16 v5, v19

    .line 949
    .line 950
    :cond_2a
    iput-object v5, v0, LP0/B;->D:[[J

    .line 951
    .line 952
    iget-object v1, v0, LP0/B;->B:Lv0/F;

    .line 953
    .line 954
    invoke-interface {v1}, Lv0/F;->endTracks()V

    .line 955
    .line 956
    .line 957
    iget-object v1, v0, LP0/B;->B:Lv0/F;

    .line 958
    .line 959
    new-instance v2, LP0/z;

    .line 960
    .line 961
    iget-object v3, v0, LP0/B;->C:[LP0/A;

    .line 962
    .line 963
    invoke-direct {v2, v11, v12, v3, v4}, LP0/z;-><init>(J[LP0/A;I)V

    .line 964
    .line 965
    .line 966
    invoke-interface {v1, v2}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 967
    .line 968
    .line 969
    :goto_22
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayDeque;->clear()V

    .line 970
    .line 971
    .line 972
    const/4 v1, 0x1

    .line 973
    iput-boolean v1, v0, LP0/B;->z:Z

    .line 974
    .line 975
    iget-boolean v2, v0, LP0/B;->w:Z

    .line 976
    .line 977
    if-nez v2, :cond_2c

    .line 978
    .line 979
    if-nez v23, :cond_2c

    .line 980
    .line 981
    const/4 v12, 0x2

    .line 982
    iput v12, v0, LP0/B;->l:I

    .line 983
    .line 984
    goto :goto_23

    .line 985
    :cond_2b
    move/from16 v21, v2

    .line 986
    .line 987
    move v1, v5

    .line 988
    move-object/from16 v30, v6

    .line 989
    .line 990
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 991
    .line 992
    .line 993
    move-result v2

    .line 994
    if-nez v2, :cond_2c

    .line 995
    .line 996
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-result-object v2

    .line 1000
    check-cast v2, Ls0/d;

    .line 1001
    .line 1002
    invoke-virtual {v2, v8}, Ls0/d;->add(Ls0/d;)V

    .line 1003
    .line 1004
    .line 1005
    :cond_2c
    :goto_23
    move v5, v1

    .line 1006
    move/from16 v2, v21

    .line 1007
    .line 1008
    const/4 v3, 0x2

    .line 1009
    const/4 v4, 0x0

    .line 1010
    goto/16 :goto_0

    .line 1011
    .line 1012
    :cond_2d
    iget v1, v0, LP0/B;->l:I

    .line 1013
    .line 1014
    const/4 v12, 0x2

    .line 1015
    if-eq v1, v12, :cond_2e

    .line 1016
    .line 1017
    const/4 v3, 0x0

    .line 1018
    iput v3, v0, LP0/B;->l:I

    .line 1019
    .line 1020
    iput v3, v0, LP0/B;->o:I

    .line 1021
    .line 1022
    :cond_2e
    return-void
.end method

.method public getSniffFailureDetails()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lv0/k0;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LP0/B;->k:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getSniffFailureDetails()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, LP0/B;->getSniffFailureDetails()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getUnderlyingImplementation()Lv0/C;
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/B;->b(Lv0/C;)Lv0/C;

    move-result-object v0

    return-object v0
.end method

.method public init(Lv0/F;)V
    .locals 2

    .line 1
    iget v0, p0, LP0/B;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, LS0/t;

    .line 8
    .line 9
    iget-object v1, p0, LP0/B;->a:LS0/q;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, LS0/t;-><init>(Lv0/F;LS0/q;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :cond_0
    iput-object p1, p0, LP0/B;->B:Lv0/F;

    .line 16
    .line 17
    return-void
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v7, 0x1

    .line 10
    iget-boolean v8, v0, LP0/B;->c:Z

    .line 11
    .line 12
    const/4 v9, -0x1

    .line 13
    if-eqz v8, :cond_0

    .line 14
    .line 15
    iget-boolean v8, v0, LP0/B;->z:Z

    .line 16
    .line 17
    if-eqz v8, :cond_0

    .line 18
    .line 19
    :goto_0
    move v14, v9

    .line 20
    goto/16 :goto_23

    .line 21
    .line 22
    :cond_0
    :goto_1
    iget v8, v0, LP0/B;->l:I

    .line 23
    .line 24
    iget-object v10, v0, LP0/B;->h:Ljava/util/ArrayDeque;

    .line 25
    .line 26
    const/16 v11, 0x8

    .line 27
    .line 28
    const v12, 0x66747970

    .line 29
    .line 30
    .line 31
    iget-object v13, v0, LP0/B;->f:Landroidx/media3/common/util/ParsableByteArray;

    .line 32
    .line 33
    iget v15, v0, LP0/B;->b:I

    .line 34
    .line 35
    const-wide/16 v16, 0x0

    .line 36
    .line 37
    if-eqz v8, :cond_34

    .line 38
    .line 39
    const-wide/32 v18, 0x40000

    .line 40
    .line 41
    .line 42
    if-eq v8, v7, :cond_24

    .line 43
    .line 44
    if-eq v8, v5, :cond_3

    .line 45
    .line 46
    const/4 v3, 0x3

    .line 47
    if-ne v8, v3, :cond_2

    .line 48
    .line 49
    iget-object v3, v0, LP0/B;->j:Ljava/util/ArrayList;

    .line 50
    .line 51
    iget-object v5, v0, LP0/B;->i:LP0/G;

    .line 52
    .line 53
    invoke-virtual {v5, v1, v2, v3}, LP0/G;->read(Lv0/D;Lv0/c0;Ljava/util/List;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-ne v1, v7, :cond_1

    .line 58
    .line 59
    iget-wide v2, v2, Lv0/c0;->a:J

    .line 60
    .line 61
    cmp-long v2, v2, v16

    .line 62
    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    iput v4, v0, LP0/B;->l:I

    .line 66
    .line 67
    iput v4, v0, LP0/B;->o:I

    .line 68
    .line 69
    :cond_1
    return v1

    .line 70
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_3
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 77
    .line 78
    .line 79
    move-result-wide v10

    .line 80
    iget v8, v0, LP0/B;->q:I

    .line 81
    .line 82
    if-ne v8, v9, :cond_e

    .line 83
    .line 84
    const-wide v20, 0x7fffffffffffffffL

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    move v8, v4

    .line 90
    move/from16 v28, v5

    .line 91
    .line 92
    move v5, v7

    .line 93
    move v12, v5

    .line 94
    move/from16 v26, v9

    .line 95
    .line 96
    move/from16 v27, v26

    .line 97
    .line 98
    move-wide/from16 v22, v20

    .line 99
    .line 100
    move-wide/from16 v24, v22

    .line 101
    .line 102
    move-wide/from16 v29, v24

    .line 103
    .line 104
    :goto_2
    iget-object v3, v0, LP0/B;->C:[LP0/A;

    .line 105
    .line 106
    array-length v14, v3

    .line 107
    if-ge v8, v14, :cond_b

    .line 108
    .line 109
    aget-object v3, v3, v8

    .line 110
    .line 111
    iget v14, v3, LP0/A;->e:I

    .line 112
    .line 113
    iget-object v3, v3, LP0/A;->b:LP0/M;

    .line 114
    .line 115
    const/16 v31, 0x4

    .line 116
    .line 117
    iget v6, v3, LP0/M;->b:I

    .line 118
    .line 119
    if-ne v14, v6, :cond_4

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_4
    iget-object v3, v3, LP0/M;->c:[J

    .line 123
    .line 124
    aget-wide v32, v3, v14

    .line 125
    .line 126
    iget-object v3, v0, LP0/B;->D:[[J

    .line 127
    .line 128
    invoke-static {v3}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    check-cast v3, [[J

    .line 133
    .line 134
    aget-object v3, v3, v8

    .line 135
    .line 136
    aget-wide v34, v3, v14

    .line 137
    .line 138
    sub-long v32, v32, v10

    .line 139
    .line 140
    cmp-long v3, v32, v16

    .line 141
    .line 142
    if-ltz v3, :cond_6

    .line 143
    .line 144
    cmp-long v3, v32, v18

    .line 145
    .line 146
    if-ltz v3, :cond_5

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_5
    move v3, v4

    .line 150
    goto :goto_4

    .line 151
    :cond_6
    :goto_3
    move v3, v7

    .line 152
    :goto_4
    if-nez v3, :cond_7

    .line 153
    .line 154
    if-nez v5, :cond_8

    .line 155
    .line 156
    :cond_7
    if-ne v3, v5, :cond_9

    .line 157
    .line 158
    cmp-long v6, v32, v29

    .line 159
    .line 160
    if-gez v6, :cond_9

    .line 161
    .line 162
    :cond_8
    move v5, v3

    .line 163
    move/from16 v27, v8

    .line 164
    .line 165
    move-wide/from16 v29, v32

    .line 166
    .line 167
    move-wide/from16 v24, v34

    .line 168
    .line 169
    :cond_9
    cmp-long v6, v34, v22

    .line 170
    .line 171
    if-gez v6, :cond_a

    .line 172
    .line 173
    move v12, v3

    .line 174
    move/from16 v26, v8

    .line 175
    .line 176
    move-wide/from16 v22, v34

    .line 177
    .line 178
    :cond_a
    :goto_5
    add-int/2addr v8, v7

    .line 179
    goto :goto_2

    .line 180
    :cond_b
    const/16 v31, 0x4

    .line 181
    .line 182
    cmp-long v3, v22, v20

    .line 183
    .line 184
    if-eqz v3, :cond_d

    .line 185
    .line 186
    if-eqz v12, :cond_d

    .line 187
    .line 188
    const-wide/32 v5, 0xa00000

    .line 189
    .line 190
    .line 191
    add-long v22, v22, v5

    .line 192
    .line 193
    cmp-long v3, v24, v22

    .line 194
    .line 195
    if-gez v3, :cond_c

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_c
    move/from16 v3, v26

    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_d
    :goto_6
    move/from16 v3, v27

    .line 202
    .line 203
    :goto_7
    iput v3, v0, LP0/B;->q:I

    .line 204
    .line 205
    if-ne v3, v9, :cond_f

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_e
    move/from16 v28, v5

    .line 210
    .line 211
    const/16 v31, 0x4

    .line 212
    .line 213
    :cond_f
    iget-object v3, v0, LP0/B;->C:[LP0/A;

    .line 214
    .line 215
    iget v5, v0, LP0/B;->q:I

    .line 216
    .line 217
    aget-object v3, v3, v5

    .line 218
    .line 219
    iget-object v5, v3, LP0/A;->c:Lv0/r0;

    .line 220
    .line 221
    iget v6, v3, LP0/A;->e:I

    .line 222
    .line 223
    iget-object v8, v3, LP0/A;->b:LP0/M;

    .line 224
    .line 225
    iget-object v12, v8, LP0/M;->c:[J

    .line 226
    .line 227
    aget-wide v20, v12, v6

    .line 228
    .line 229
    move-wide/from16 v22, v10

    .line 230
    .line 231
    iget-wide v9, v0, LP0/B;->A:J

    .line 232
    .line 233
    add-long v9, v20, v9

    .line 234
    .line 235
    iget-object v11, v8, LP0/M;->d:[I

    .line 236
    .line 237
    aget v12, v11, v6

    .line 238
    .line 239
    sub-long v20, v9, v22

    .line 240
    .line 241
    iget v14, v0, LP0/B;->r:I

    .line 242
    .line 243
    move/from16 v30, v4

    .line 244
    .line 245
    move-object/from16 v22, v5

    .line 246
    .line 247
    int-to-long v4, v14

    .line 248
    add-long v20, v20, v4

    .line 249
    .line 250
    cmp-long v4, v20, v16

    .line 251
    .line 252
    if-ltz v4, :cond_10

    .line 253
    .line 254
    cmp-long v4, v20, v18

    .line 255
    .line 256
    if-ltz v4, :cond_11

    .line 257
    .line 258
    :cond_10
    move/from16 v32, v7

    .line 259
    .line 260
    goto/16 :goto_10

    .line 261
    .line 262
    :cond_11
    iget-object v2, v3, LP0/A;->a:LP0/J;

    .line 263
    .line 264
    iget v4, v2, LP0/J;->h:I

    .line 265
    .line 266
    if-ne v4, v7, :cond_12

    .line 267
    .line 268
    const-wide/16 v4, 0x8

    .line 269
    .line 270
    add-long v20, v20, v4

    .line 271
    .line 272
    add-int/lit8 v12, v12, -0x8

    .line 273
    .line 274
    :cond_12
    move-wide/from16 v4, v20

    .line 275
    .line 276
    long-to-int v4, v4

    .line 277
    invoke-interface {v1, v4}, Lv0/D;->skipFully(I)V

    .line 278
    .line 279
    .line 280
    iget-object v4, v2, LP0/J;->g:Landroidx/media3/common/Format;

    .line 281
    .line 282
    iget-object v5, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 283
    .line 284
    const-string v9, "video/avc"

    .line 285
    .line 286
    invoke-static {v5, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    if-eqz v5, :cond_13

    .line 291
    .line 292
    and-int/lit8 v5, v15, 0x20

    .line 293
    .line 294
    if-eqz v5, :cond_14

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_13
    iget-object v5, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 298
    .line 299
    const-string v9, "video/hevc"

    .line 300
    .line 301
    invoke-static {v5, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    if-eqz v5, :cond_14

    .line 306
    .line 307
    and-int/lit16 v5, v15, 0x80

    .line 308
    .line 309
    if-eqz v5, :cond_14

    .line 310
    .line 311
    goto :goto_8

    .line 312
    :cond_14
    iput-boolean v7, v0, LP0/B;->u:Z

    .line 313
    .line 314
    :goto_8
    iget v2, v2, LP0/J;->k:I

    .line 315
    .line 316
    iget-object v5, v3, LP0/A;->d:Lv0/s0;

    .line 317
    .line 318
    if-eqz v2, :cond_1b

    .line 319
    .line 320
    iget-object v9, v0, LP0/B;->e:Landroidx/media3/common/util/ParsableByteArray;

    .line 321
    .line 322
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 323
    .line 324
    .line 325
    move-result-object v10

    .line 326
    aput-byte v30, v10, v30

    .line 327
    .line 328
    aput-byte v30, v10, v7

    .line 329
    .line 330
    aput-byte v30, v10, v28

    .line 331
    .line 332
    rsub-int/lit8 v13, v2, 0x4

    .line 333
    .line 334
    add-int/2addr v12, v13

    .line 335
    :goto_9
    iget v14, v0, LP0/B;->s:I

    .line 336
    .line 337
    if-ge v14, v12, :cond_19

    .line 338
    .line 339
    iget v14, v0, LP0/B;->t:I

    .line 340
    .line 341
    if-nez v14, :cond_18

    .line 342
    .line 343
    iget-boolean v14, v0, LP0/B;->u:Z

    .line 344
    .line 345
    if-nez v14, :cond_15

    .line 346
    .line 347
    invoke-static {v4}, Ls0/v;->numberOfBytesInNalUnitHeader(Landroidx/media3/common/Format;)I

    .line 348
    .line 349
    .line 350
    move-result v14

    .line 351
    add-int/2addr v14, v2

    .line 352
    aget v15, v11, v6

    .line 353
    .line 354
    iget v7, v0, LP0/B;->r:I

    .line 355
    .line 356
    sub-int/2addr v15, v7

    .line 357
    if-gt v14, v15, :cond_15

    .line 358
    .line 359
    invoke-static {v4}, Ls0/v;->numberOfBytesInNalUnitHeader(Landroidx/media3/common/Format;)I

    .line 360
    .line 361
    .line 362
    move-result v7

    .line 363
    add-int v14, v2, v7

    .line 364
    .line 365
    goto :goto_a

    .line 366
    :cond_15
    move v14, v2

    .line 367
    move/from16 v7, v30

    .line 368
    .line 369
    :goto_a
    invoke-interface {v1, v10, v13, v14}, Lv0/D;->readFully([BII)V

    .line 370
    .line 371
    .line 372
    iget v15, v0, LP0/B;->r:I

    .line 373
    .line 374
    add-int/2addr v15, v14

    .line 375
    iput v15, v0, LP0/B;->r:I

    .line 376
    .line 377
    move/from16 v14, v30

    .line 378
    .line 379
    invoke-virtual {v9, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 383
    .line 384
    .line 385
    move-result v15

    .line 386
    if-ltz v15, :cond_17

    .line 387
    .line 388
    sub-int/2addr v15, v7

    .line 389
    iput v15, v0, LP0/B;->t:I

    .line 390
    .line 391
    iget-object v15, v0, LP0/B;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 392
    .line 393
    invoke-virtual {v15, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 394
    .line 395
    .line 396
    move/from16 v16, v2

    .line 397
    .line 398
    move-object/from16 v14, v22

    .line 399
    .line 400
    move/from16 v2, v31

    .line 401
    .line 402
    invoke-interface {v14, v15, v2}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 403
    .line 404
    .line 405
    iget v15, v0, LP0/B;->s:I

    .line 406
    .line 407
    add-int/2addr v15, v2

    .line 408
    iput v15, v0, LP0/B;->s:I

    .line 409
    .line 410
    if-lez v7, :cond_16

    .line 411
    .line 412
    invoke-interface {v14, v9, v7}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 413
    .line 414
    .line 415
    iget v15, v0, LP0/B;->s:I

    .line 416
    .line 417
    add-int/2addr v15, v7

    .line 418
    iput v15, v0, LP0/B;->s:I

    .line 419
    .line 420
    invoke-static {v10, v2, v7, v4}, Ls0/v;->isDependedOn([BIILandroidx/media3/common/Format;)Z

    .line 421
    .line 422
    .line 423
    move-result v7

    .line 424
    if-eqz v7, :cond_16

    .line 425
    .line 426
    const/4 v2, 0x1

    .line 427
    iput-boolean v2, v0, LP0/B;->u:Z

    .line 428
    .line 429
    :cond_16
    move-object/from16 v22, v14

    .line 430
    .line 431
    :goto_b
    move/from16 v2, v16

    .line 432
    .line 433
    const/4 v7, 0x1

    .line 434
    const/16 v30, 0x0

    .line 435
    .line 436
    const/16 v31, 0x4

    .line 437
    .line 438
    goto :goto_9

    .line 439
    :cond_17
    const-string v1, "Invalid NAL length"

    .line 440
    .line 441
    const/4 v2, 0x0

    .line 442
    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    throw v1

    .line 447
    :cond_18
    move/from16 v16, v2

    .line 448
    .line 449
    move-object/from16 v2, v22

    .line 450
    .line 451
    move/from16 v7, v30

    .line 452
    .line 453
    invoke-interface {v2, v1, v14, v7}, Lv0/r0;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    .line 454
    .line 455
    .line 456
    move-result v14

    .line 457
    iget v7, v0, LP0/B;->r:I

    .line 458
    .line 459
    add-int/2addr v7, v14

    .line 460
    iput v7, v0, LP0/B;->r:I

    .line 461
    .line 462
    iget v7, v0, LP0/B;->s:I

    .line 463
    .line 464
    add-int/2addr v7, v14

    .line 465
    iput v7, v0, LP0/B;->s:I

    .line 466
    .line 467
    iget v7, v0, LP0/B;->t:I

    .line 468
    .line 469
    sub-int/2addr v7, v14

    .line 470
    iput v7, v0, LP0/B;->t:I

    .line 471
    .line 472
    goto :goto_b

    .line 473
    :cond_19
    move-object/from16 v2, v22

    .line 474
    .line 475
    :cond_1a
    move/from16 v24, v12

    .line 476
    .line 477
    goto/16 :goto_e

    .line 478
    .line 479
    :cond_1b
    move-object/from16 v2, v22

    .line 480
    .line 481
    iget-object v7, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 482
    .line 483
    const-string v9, "audio/ac4"

    .line 484
    .line 485
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v7

    .line 489
    if-eqz v7, :cond_1d

    .line 490
    .line 491
    iget v4, v0, LP0/B;->s:I

    .line 492
    .line 493
    if-nez v4, :cond_1c

    .line 494
    .line 495
    invoke-static {v12, v13}, Lv0/g;->getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 496
    .line 497
    .line 498
    const/4 v4, 0x7

    .line 499
    invoke-interface {v2, v13, v4}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 500
    .line 501
    .line 502
    iget v7, v0, LP0/B;->s:I

    .line 503
    .line 504
    add-int/2addr v7, v4

    .line 505
    iput v7, v0, LP0/B;->s:I

    .line 506
    .line 507
    goto :goto_c

    .line 508
    :cond_1c
    const/4 v4, 0x7

    .line 509
    :goto_c
    add-int/2addr v12, v4

    .line 510
    goto :goto_d

    .line 511
    :cond_1d
    iget-object v7, v3, LP0/A;->f:Landroidx/media3/common/Format;

    .line 512
    .line 513
    if-eqz v7, :cond_1f

    .line 514
    .line 515
    iget-object v4, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 516
    .line 517
    const-string v7, "audio/mpeg"

    .line 518
    .line 519
    invoke-static {v4, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v4

    .line 523
    if-eqz v4, :cond_1f

    .line 524
    .line 525
    iget-object v4, v3, LP0/A;->f:Landroidx/media3/common/Format;

    .line 526
    .line 527
    const/4 v7, 0x4

    .line 528
    invoke-virtual {v13, v7}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 532
    .line 533
    .line 534
    move-result-object v9

    .line 535
    const/4 v14, 0x0

    .line 536
    invoke-interface {v1, v9, v14, v7}, Lv0/D;->peekFully([BII)V

    .line 537
    .line 538
    .line 539
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 540
    .line 541
    .line 542
    new-instance v7, Lv0/Y;

    .line 543
    .line 544
    invoke-direct {v7}, Lv0/Y;-><init>()V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 548
    .line 549
    .line 550
    move-result v9

    .line 551
    invoke-virtual {v7, v9}, Lv0/Y;->setForHeaderData(I)Z

    .line 552
    .line 553
    .line 554
    move-result v9

    .line 555
    if-eqz v9, :cond_1e

    .line 556
    .line 557
    iget-object v9, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 558
    .line 559
    iget-object v10, v7, Lv0/Y;->b:Ljava/lang/String;

    .line 560
    .line 561
    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v9

    .line 565
    if-nez v9, :cond_1e

    .line 566
    .line 567
    invoke-virtual {v4}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    iget-object v7, v7, Lv0/Y;->b:Ljava/lang/String;

    .line 572
    .line 573
    invoke-static {v7}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v7

    .line 577
    check-cast v7, Ljava/lang/String;

    .line 578
    .line 579
    invoke-virtual {v4, v7}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 580
    .line 581
    .line 582
    move-result-object v4

    .line 583
    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 584
    .line 585
    .line 586
    move-result-object v4

    .line 587
    :cond_1e
    iget-object v7, v3, LP0/A;->c:Lv0/r0;

    .line 588
    .line 589
    invoke-interface {v7, v4}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 590
    .line 591
    .line 592
    const/4 v4, 0x0

    .line 593
    iput-object v4, v3, LP0/A;->f:Landroidx/media3/common/Format;

    .line 594
    .line 595
    goto :goto_d

    .line 596
    :cond_1f
    if-eqz v5, :cond_20

    .line 597
    .line 598
    invoke-virtual {v5, v1}, Lv0/s0;->startSample(Lv0/D;)V

    .line 599
    .line 600
    .line 601
    :cond_20
    :goto_d
    iget v4, v0, LP0/B;->s:I

    .line 602
    .line 603
    if-ge v4, v12, :cond_1a

    .line 604
    .line 605
    sub-int v4, v12, v4

    .line 606
    .line 607
    const/4 v14, 0x0

    .line 608
    invoke-interface {v2, v1, v4, v14}, Lv0/r0;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    .line 609
    .line 610
    .line 611
    move-result v4

    .line 612
    iget v7, v0, LP0/B;->r:I

    .line 613
    .line 614
    add-int/2addr v7, v4

    .line 615
    iput v7, v0, LP0/B;->r:I

    .line 616
    .line 617
    iget v7, v0, LP0/B;->s:I

    .line 618
    .line 619
    add-int/2addr v7, v4

    .line 620
    iput v7, v0, LP0/B;->s:I

    .line 621
    .line 622
    iget v7, v0, LP0/B;->t:I

    .line 623
    .line 624
    sub-int/2addr v7, v4

    .line 625
    iput v7, v0, LP0/B;->t:I

    .line 626
    .line 627
    goto :goto_d

    .line 628
    :goto_e
    iget-object v1, v8, LP0/M;->f:[J

    .line 629
    .line 630
    aget-wide v21, v1, v6

    .line 631
    .line 632
    iget-object v1, v8, LP0/M;->g:[I

    .line 633
    .line 634
    aget v1, v1, v6

    .line 635
    .line 636
    iget-boolean v4, v0, LP0/B;->u:Z

    .line 637
    .line 638
    if-nez v4, :cond_21

    .line 639
    .line 640
    const/high16 v4, 0x4000000

    .line 641
    .line 642
    or-int/2addr v1, v4

    .line 643
    :cond_21
    move/from16 v23, v1

    .line 644
    .line 645
    if-eqz v5, :cond_22

    .line 646
    .line 647
    const/16 v26, 0x0

    .line 648
    .line 649
    const/16 v27, 0x0

    .line 650
    .line 651
    move-object/from16 v20, v5

    .line 652
    .line 653
    move/from16 v25, v24

    .line 654
    .line 655
    move/from16 v24, v23

    .line 656
    .line 657
    move-wide/from16 v22, v21

    .line 658
    .line 659
    move-object/from16 v21, v2

    .line 660
    .line 661
    invoke-virtual/range {v20 .. v27}, Lv0/s0;->sampleMetadata(Lv0/r0;JIIILv0/q0;)V

    .line 662
    .line 663
    .line 664
    move-object/from16 v1, v20

    .line 665
    .line 666
    move-object/from16 v14, v21

    .line 667
    .line 668
    const/16 v32, 0x1

    .line 669
    .line 670
    add-int/lit8 v6, v6, 0x1

    .line 671
    .line 672
    iget v2, v8, LP0/M;->b:I

    .line 673
    .line 674
    if-ne v6, v2, :cond_23

    .line 675
    .line 676
    const/4 v2, 0x0

    .line 677
    invoke-virtual {v1, v14, v2}, Lv0/s0;->outputPendingSampleMetadata(Lv0/r0;Lv0/q0;)V

    .line 678
    .line 679
    .line 680
    goto :goto_f

    .line 681
    :cond_22
    move-object v14, v2

    .line 682
    const/16 v32, 0x1

    .line 683
    .line 684
    const/16 v25, 0x0

    .line 685
    .line 686
    const/16 v26, 0x0

    .line 687
    .line 688
    move-object/from16 v20, v14

    .line 689
    .line 690
    invoke-interface/range {v20 .. v26}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 691
    .line 692
    .line 693
    :cond_23
    :goto_f
    iget v1, v3, LP0/A;->e:I

    .line 694
    .line 695
    add-int/lit8 v1, v1, 0x1

    .line 696
    .line 697
    iput v1, v3, LP0/A;->e:I

    .line 698
    .line 699
    const/4 v14, -0x1

    .line 700
    iput v14, v0, LP0/B;->q:I

    .line 701
    .line 702
    const/4 v14, 0x0

    .line 703
    iput v14, v0, LP0/B;->r:I

    .line 704
    .line 705
    iput v14, v0, LP0/B;->s:I

    .line 706
    .line 707
    iput v14, v0, LP0/B;->t:I

    .line 708
    .line 709
    iput-boolean v14, v0, LP0/B;->u:Z

    .line 710
    .line 711
    return v14

    .line 712
    :goto_10
    iput-wide v9, v2, Lv0/c0;->a:J

    .line 713
    .line 714
    return v32

    .line 715
    :cond_24
    move/from16 v28, v5

    .line 716
    .line 717
    const/4 v4, 0x7

    .line 718
    iget-wide v5, v0, LP0/B;->n:J

    .line 719
    .line 720
    iget v3, v0, LP0/B;->o:I

    .line 721
    .line 722
    int-to-long v7, v3

    .line 723
    sub-long/2addr v5, v7

    .line 724
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 725
    .line 726
    .line 727
    move-result-wide v7

    .line 728
    add-long/2addr v7, v5

    .line 729
    iget-object v3, v0, LP0/B;->p:Landroidx/media3/common/util/ParsableByteArray;

    .line 730
    .line 731
    if-eqz v3, :cond_2d

    .line 732
    .line 733
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 734
    .line 735
    .line 736
    move-result-object v9

    .line 737
    iget v13, v0, LP0/B;->o:I

    .line 738
    .line 739
    long-to-int v5, v5

    .line 740
    invoke-interface {v1, v9, v13, v5}, Lv0/D;->readFully([BII)V

    .line 741
    .line 742
    .line 743
    iget v5, v0, LP0/B;->m:I

    .line 744
    .line 745
    if-ne v5, v12, :cond_2c

    .line 746
    .line 747
    const/4 v5, 0x1

    .line 748
    iput-boolean v5, v0, LP0/B;->v:Z

    .line 749
    .line 750
    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 754
    .line 755
    .line 756
    move-result v5

    .line 757
    const v6, 0x71742020

    .line 758
    .line 759
    .line 760
    const v9, 0x68656963

    .line 761
    .line 762
    .line 763
    if-eq v5, v9, :cond_26

    .line 764
    .line 765
    if-eq v5, v6, :cond_25

    .line 766
    .line 767
    const/4 v5, 0x0

    .line 768
    goto :goto_11

    .line 769
    :cond_25
    const/4 v5, 0x1

    .line 770
    goto :goto_11

    .line 771
    :cond_26
    move/from16 v5, v28

    .line 772
    .line 773
    :goto_11
    if-eqz v5, :cond_27

    .line 774
    .line 775
    goto :goto_13

    .line 776
    :cond_27
    const/4 v5, 0x4

    .line 777
    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 778
    .line 779
    .line 780
    :cond_28
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 781
    .line 782
    .line 783
    move-result v5

    .line 784
    if-lez v5, :cond_2b

    .line 785
    .line 786
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 787
    .line 788
    .line 789
    move-result v5

    .line 790
    if-eq v5, v9, :cond_2a

    .line 791
    .line 792
    if-eq v5, v6, :cond_29

    .line 793
    .line 794
    const/4 v5, 0x0

    .line 795
    goto :goto_12

    .line 796
    :cond_29
    const/4 v5, 0x1

    .line 797
    goto :goto_12

    .line 798
    :cond_2a
    move/from16 v5, v28

    .line 799
    .line 800
    :goto_12
    if-eqz v5, :cond_28

    .line 801
    .line 802
    goto :goto_13

    .line 803
    :cond_2b
    const/4 v5, 0x0

    .line 804
    :goto_13
    iput v5, v0, LP0/B;->E:I

    .line 805
    .line 806
    goto :goto_14

    .line 807
    :cond_2c
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 808
    .line 809
    .line 810
    move-result v5

    .line 811
    if-nez v5, :cond_2f

    .line 812
    .line 813
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v5

    .line 817
    check-cast v5, Ls0/d;

    .line 818
    .line 819
    new-instance v6, Ls0/e;

    .line 820
    .line 821
    iget v9, v0, LP0/B;->m:I

    .line 822
    .line 823
    invoke-direct {v6, v9, v3}, Ls0/e;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v5, v6}, Ls0/d;->add(Ls0/e;)V

    .line 827
    .line 828
    .line 829
    goto :goto_14

    .line 830
    :cond_2d
    iget-boolean v3, v0, LP0/B;->v:Z

    .line 831
    .line 832
    if-nez v3, :cond_2e

    .line 833
    .line 834
    iget v3, v0, LP0/B;->m:I

    .line 835
    .line 836
    const v9, 0x6d646174

    .line 837
    .line 838
    .line 839
    if-ne v3, v9, :cond_2e

    .line 840
    .line 841
    const/4 v3, 0x1

    .line 842
    iput v3, v0, LP0/B;->E:I

    .line 843
    .line 844
    :cond_2e
    cmp-long v3, v5, v18

    .line 845
    .line 846
    if-gez v3, :cond_30

    .line 847
    .line 848
    long-to-int v3, v5

    .line 849
    invoke-interface {v1, v3}, Lv0/D;->skipFully(I)V

    .line 850
    .line 851
    .line 852
    :cond_2f
    :goto_14
    const/4 v3, 0x0

    .line 853
    goto :goto_15

    .line 854
    :cond_30
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 855
    .line 856
    .line 857
    move-result-wide v9

    .line 858
    add-long/2addr v9, v5

    .line 859
    iput-wide v9, v2, Lv0/c0;->a:J

    .line 860
    .line 861
    const/4 v3, 0x1

    .line 862
    :goto_15
    invoke-virtual {v0, v7, v8}, LP0/B;->a(J)V

    .line 863
    .line 864
    .line 865
    iget-boolean v5, v0, LP0/B;->w:Z

    .line 866
    .line 867
    if-eqz v5, :cond_31

    .line 868
    .line 869
    const/4 v5, 0x1

    .line 870
    iput-boolean v5, v0, LP0/B;->y:Z

    .line 871
    .line 872
    iget-wide v5, v0, LP0/B;->x:J

    .line 873
    .line 874
    iput-wide v5, v2, Lv0/c0;->a:J

    .line 875
    .line 876
    const/4 v7, 0x0

    .line 877
    iput-boolean v7, v0, LP0/B;->w:Z

    .line 878
    .line 879
    const/4 v3, 0x1

    .line 880
    :cond_31
    if-eqz v3, :cond_32

    .line 881
    .line 882
    iget v3, v0, LP0/B;->l:I

    .line 883
    .line 884
    move/from16 v5, v28

    .line 885
    .line 886
    if-eq v3, v5, :cond_32

    .line 887
    .line 888
    const/4 v3, 0x1

    .line 889
    goto :goto_16

    .line 890
    :cond_32
    const/4 v3, 0x0

    .line 891
    :goto_16
    if-eqz v3, :cond_33

    .line 892
    .line 893
    const/4 v5, 0x1

    .line 894
    return v5

    .line 895
    :cond_33
    const/4 v4, 0x0

    .line 896
    const/4 v5, 0x2

    .line 897
    const/4 v7, 0x1

    .line 898
    const/4 v9, -0x1

    .line 899
    goto/16 :goto_1

    .line 900
    .line 901
    :cond_34
    move v5, v7

    .line 902
    const/4 v4, 0x7

    .line 903
    iget v3, v0, LP0/B;->o:I

    .line 904
    .line 905
    iget-object v6, v0, LP0/B;->g:Landroidx/media3/common/util/ParsableByteArray;

    .line 906
    .line 907
    if-nez v3, :cond_38

    .line 908
    .line 909
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 910
    .line 911
    .line 912
    move-result-object v3

    .line 913
    const/4 v7, 0x0

    .line 914
    invoke-interface {v1, v3, v7, v11, v5}, Lv0/D;->readFully([BIIZ)Z

    .line 915
    .line 916
    .line 917
    move-result v3

    .line 918
    if-nez v3, :cond_37

    .line 919
    .line 920
    iget v3, v0, LP0/B;->E:I

    .line 921
    .line 922
    const/4 v5, 0x2

    .line 923
    if-ne v3, v5, :cond_36

    .line 924
    .line 925
    and-int/lit8 v3, v15, 0x2

    .line 926
    .line 927
    if-eqz v3, :cond_36

    .line 928
    .line 929
    iget-object v3, v0, LP0/B;->B:Lv0/F;

    .line 930
    .line 931
    const/4 v8, 0x4

    .line 932
    invoke-interface {v3, v7, v8}, Lv0/F;->track(II)Lv0/r0;

    .line 933
    .line 934
    .line 935
    move-result-object v3

    .line 936
    iget-object v6, v0, LP0/B;->F:LE0/c;

    .line 937
    .line 938
    if-nez v6, :cond_35

    .line 939
    .line 940
    const/4 v9, 0x0

    .line 941
    goto :goto_17

    .line 942
    :cond_35
    new-instance v9, Landroidx/media3/common/Metadata;

    .line 943
    .line 944
    const/4 v10, 0x1

    .line 945
    new-array v11, v10, [Landroidx/media3/common/Metadata$Entry;

    .line 946
    .line 947
    aput-object v6, v11, v7

    .line 948
    .line 949
    invoke-direct {v9, v11}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 950
    .line 951
    .line 952
    :goto_17
    new-instance v6, Landroidx/media3/common/Format$Builder;

    .line 953
    .line 954
    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 955
    .line 956
    .line 957
    invoke-virtual {v6, v9}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 958
    .line 959
    .line 960
    move-result-object v6

    .line 961
    invoke-virtual {v6}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 962
    .line 963
    .line 964
    move-result-object v6

    .line 965
    invoke-interface {v3, v6}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 966
    .line 967
    .line 968
    iget-object v3, v0, LP0/B;->B:Lv0/F;

    .line 969
    .line 970
    invoke-interface {v3}, Lv0/F;->endTracks()V

    .line 971
    .line 972
    .line 973
    iget-object v3, v0, LP0/B;->B:Lv0/F;

    .line 974
    .line 975
    new-instance v6, Lv0/f0;

    .line 976
    .line 977
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    invoke-direct {v6, v9, v10}, Lv0/f0;-><init>(J)V

    .line 983
    .line 984
    .line 985
    invoke-interface {v3, v6}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 986
    .line 987
    .line 988
    goto :goto_18

    .line 989
    :cond_36
    const/4 v8, 0x4

    .line 990
    :goto_18
    const/4 v7, 0x0

    .line 991
    const/16 v30, 0x0

    .line 992
    .line 993
    goto/16 :goto_22

    .line 994
    .line 995
    :cond_37
    const/4 v5, 0x2

    .line 996
    const/4 v8, 0x4

    .line 997
    iput v11, v0, LP0/B;->o:I

    .line 998
    .line 999
    const/4 v7, 0x0

    .line 1000
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 1004
    .line 1005
    .line 1006
    move-result-wide v4

    .line 1007
    iput-wide v4, v0, LP0/B;->n:J

    .line 1008
    .line 1009
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 1010
    .line 1011
    .line 1012
    move-result v3

    .line 1013
    iput v3, v0, LP0/B;->m:I

    .line 1014
    .line 1015
    goto :goto_19

    .line 1016
    :cond_38
    const/4 v8, 0x4

    .line 1017
    :goto_19
    iget-wide v3, v0, LP0/B;->n:J

    .line 1018
    .line 1019
    const-wide/16 v18, 0x1

    .line 1020
    .line 1021
    cmp-long v5, v3, v18

    .line 1022
    .line 1023
    if-nez v5, :cond_39

    .line 1024
    .line 1025
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 1026
    .line 1027
    .line 1028
    move-result-object v3

    .line 1029
    invoke-interface {v1, v3, v11, v11}, Lv0/D;->readFully([BII)V

    .line 1030
    .line 1031
    .line 1032
    iget v3, v0, LP0/B;->o:I

    .line 1033
    .line 1034
    add-int/2addr v3, v11

    .line 1035
    iput v3, v0, LP0/B;->o:I

    .line 1036
    .line 1037
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    .line 1038
    .line 1039
    .line 1040
    move-result-wide v3

    .line 1041
    iput-wide v3, v0, LP0/B;->n:J

    .line 1042
    .line 1043
    goto :goto_1a

    .line 1044
    :cond_39
    cmp-long v3, v3, v16

    .line 1045
    .line 1046
    if-nez v3, :cond_3b

    .line 1047
    .line 1048
    invoke-interface {v1}, Lv0/D;->getLength()J

    .line 1049
    .line 1050
    .line 1051
    move-result-wide v3

    .line 1052
    const-wide/16 v15, -0x1

    .line 1053
    .line 1054
    cmp-long v5, v3, v15

    .line 1055
    .line 1056
    if-nez v5, :cond_3a

    .line 1057
    .line 1058
    invoke-virtual {v10}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v5

    .line 1062
    check-cast v5, Ls0/d;

    .line 1063
    .line 1064
    if-eqz v5, :cond_3a

    .line 1065
    .line 1066
    iget-wide v3, v5, Ls0/d;->b:J

    .line 1067
    .line 1068
    :cond_3a
    cmp-long v5, v3, v15

    .line 1069
    .line 1070
    if-eqz v5, :cond_3b

    .line 1071
    .line 1072
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 1073
    .line 1074
    .line 1075
    move-result-wide v15

    .line 1076
    sub-long/2addr v3, v15

    .line 1077
    iget v5, v0, LP0/B;->o:I

    .line 1078
    .line 1079
    int-to-long v8, v5

    .line 1080
    add-long/2addr v3, v8

    .line 1081
    iput-wide v3, v0, LP0/B;->n:J

    .line 1082
    .line 1083
    :cond_3b
    :goto_1a
    iget-wide v3, v0, LP0/B;->n:J

    .line 1084
    .line 1085
    iget v5, v0, LP0/B;->o:I

    .line 1086
    .line 1087
    int-to-long v7, v5

    .line 1088
    cmp-long v3, v3, v7

    .line 1089
    .line 1090
    if-gez v3, :cond_3d

    .line 1091
    .line 1092
    iget v3, v0, LP0/B;->m:I

    .line 1093
    .line 1094
    const v4, 0x66726565

    .line 1095
    .line 1096
    .line 1097
    if-ne v3, v4, :cond_3c

    .line 1098
    .line 1099
    if-ne v5, v11, :cond_3c

    .line 1100
    .line 1101
    iput-wide v7, v0, LP0/B;->n:J

    .line 1102
    .line 1103
    goto :goto_1b

    .line 1104
    :cond_3c
    const-string v1, "Atom size less than header length (unsupported)."

    .line 1105
    .line 1106
    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v1

    .line 1110
    throw v1

    .line 1111
    :cond_3d
    :goto_1b
    iget v3, v0, LP0/B;->m:I

    .line 1112
    .line 1113
    const v4, 0x6d6f6f76

    .line 1114
    .line 1115
    .line 1116
    const v7, 0x6d657461

    .line 1117
    .line 1118
    .line 1119
    if-eq v3, v4, :cond_3e

    .line 1120
    .line 1121
    const v4, 0x7472616b

    .line 1122
    .line 1123
    .line 1124
    if-eq v3, v4, :cond_3e

    .line 1125
    .line 1126
    const v4, 0x6d646961

    .line 1127
    .line 1128
    .line 1129
    if-eq v3, v4, :cond_3e

    .line 1130
    .line 1131
    const v4, 0x6d696e66

    .line 1132
    .line 1133
    .line 1134
    if-eq v3, v4, :cond_3e

    .line 1135
    .line 1136
    const v4, 0x7374626c

    .line 1137
    .line 1138
    .line 1139
    if-eq v3, v4, :cond_3e

    .line 1140
    .line 1141
    const v4, 0x65647473

    .line 1142
    .line 1143
    .line 1144
    if-eq v3, v4, :cond_3e

    .line 1145
    .line 1146
    if-eq v3, v7, :cond_3e

    .line 1147
    .line 1148
    const v4, 0x61787465

    .line 1149
    .line 1150
    .line 1151
    if-ne v3, v4, :cond_3f

    .line 1152
    .line 1153
    :cond_3e
    const/4 v5, 0x1

    .line 1154
    goto/16 :goto_20

    .line 1155
    .line 1156
    :cond_3f
    const v4, 0x6d646864

    .line 1157
    .line 1158
    .line 1159
    if-eq v3, v4, :cond_42

    .line 1160
    .line 1161
    const v4, 0x6d766864

    .line 1162
    .line 1163
    .line 1164
    if-eq v3, v4, :cond_42

    .line 1165
    .line 1166
    const v4, 0x68646c72    # 4.3148E24f

    .line 1167
    .line 1168
    .line 1169
    if-eq v3, v4, :cond_42

    .line 1170
    .line 1171
    const v4, 0x73747364

    .line 1172
    .line 1173
    .line 1174
    if-eq v3, v4, :cond_42

    .line 1175
    .line 1176
    const v4, 0x73747473

    .line 1177
    .line 1178
    .line 1179
    if-eq v3, v4, :cond_42

    .line 1180
    .line 1181
    const v4, 0x73747373

    .line 1182
    .line 1183
    .line 1184
    if-eq v3, v4, :cond_42

    .line 1185
    .line 1186
    const v4, 0x63747473

    .line 1187
    .line 1188
    .line 1189
    if-eq v3, v4, :cond_42

    .line 1190
    .line 1191
    const v4, 0x656c7374

    .line 1192
    .line 1193
    .line 1194
    if-eq v3, v4, :cond_42

    .line 1195
    .line 1196
    const v4, 0x73747363

    .line 1197
    .line 1198
    .line 1199
    if-eq v3, v4, :cond_42

    .line 1200
    .line 1201
    const v4, 0x7374737a

    .line 1202
    .line 1203
    .line 1204
    if-eq v3, v4, :cond_42

    .line 1205
    .line 1206
    const v4, 0x73747a32

    .line 1207
    .line 1208
    .line 1209
    if-eq v3, v4, :cond_42

    .line 1210
    .line 1211
    const v4, 0x7374636f

    .line 1212
    .line 1213
    .line 1214
    if-eq v3, v4, :cond_42

    .line 1215
    .line 1216
    const v4, 0x636f3634

    .line 1217
    .line 1218
    .line 1219
    if-eq v3, v4, :cond_42

    .line 1220
    .line 1221
    const v4, 0x746b6864

    .line 1222
    .line 1223
    .line 1224
    if-eq v3, v4, :cond_42

    .line 1225
    .line 1226
    if-eq v3, v12, :cond_42

    .line 1227
    .line 1228
    const v4, 0x75647461

    .line 1229
    .line 1230
    .line 1231
    if-eq v3, v4, :cond_42

    .line 1232
    .line 1233
    const v4, 0x6b657973

    .line 1234
    .line 1235
    .line 1236
    if-eq v3, v4, :cond_42

    .line 1237
    .line 1238
    const v4, 0x696c7374

    .line 1239
    .line 1240
    .line 1241
    if-ne v3, v4, :cond_40

    .line 1242
    .line 1243
    goto :goto_1d

    .line 1244
    :cond_40
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 1245
    .line 1246
    .line 1247
    move-result-wide v3

    .line 1248
    iget v5, v0, LP0/B;->o:I

    .line 1249
    .line 1250
    int-to-long v5, v5

    .line 1251
    sub-long v18, v3, v5

    .line 1252
    .line 1253
    iget v3, v0, LP0/B;->m:I

    .line 1254
    .line 1255
    const v4, 0x6d707664

    .line 1256
    .line 1257
    .line 1258
    if-ne v3, v4, :cond_41

    .line 1259
    .line 1260
    new-instance v15, LE0/c;

    .line 1261
    .line 1262
    add-long v22, v18, v5

    .line 1263
    .line 1264
    iget-wide v3, v0, LP0/B;->n:J

    .line 1265
    .line 1266
    sub-long v24, v3, v5

    .line 1267
    .line 1268
    const-wide/16 v16, 0x0

    .line 1269
    .line 1270
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    invoke-direct/range {v15 .. v25}, LE0/c;-><init>(JJJJJ)V

    .line 1276
    .line 1277
    .line 1278
    iput-object v15, v0, LP0/B;->F:LE0/c;

    .line 1279
    .line 1280
    :cond_41
    const/4 v4, 0x0

    .line 1281
    iput-object v4, v0, LP0/B;->p:Landroidx/media3/common/util/ParsableByteArray;

    .line 1282
    .line 1283
    const/4 v5, 0x1

    .line 1284
    iput v5, v0, LP0/B;->l:I

    .line 1285
    .line 1286
    :goto_1c
    const/4 v7, 0x0

    .line 1287
    goto/16 :goto_21

    .line 1288
    .line 1289
    :cond_42
    :goto_1d
    if-ne v5, v11, :cond_43

    .line 1290
    .line 1291
    const/4 v3, 0x1

    .line 1292
    goto :goto_1e

    .line 1293
    :cond_43
    const/4 v3, 0x0

    .line 1294
    :goto_1e
    invoke-static {v3}, LP3/v;->checkState(Z)V

    .line 1295
    .line 1296
    .line 1297
    iget-wide v3, v0, LP0/B;->n:J

    .line 1298
    .line 1299
    const-wide/32 v7, 0x7fffffff

    .line 1300
    .line 1301
    .line 1302
    cmp-long v3, v3, v7

    .line 1303
    .line 1304
    if-gtz v3, :cond_44

    .line 1305
    .line 1306
    const/4 v3, 0x1

    .line 1307
    goto :goto_1f

    .line 1308
    :cond_44
    const/4 v3, 0x0

    .line 1309
    :goto_1f
    invoke-static {v3}, LP3/v;->checkState(Z)V

    .line 1310
    .line 1311
    .line 1312
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    .line 1313
    .line 1314
    iget-wide v4, v0, LP0/B;->n:J

    .line 1315
    .line 1316
    long-to-int v4, v4

    .line 1317
    invoke-direct {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 1321
    .line 1322
    .line 1323
    move-result-object v4

    .line 1324
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 1325
    .line 1326
    .line 1327
    move-result-object v5

    .line 1328
    const/4 v7, 0x0

    .line 1329
    invoke-static {v4, v7, v5, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1330
    .line 1331
    .line 1332
    iput-object v3, v0, LP0/B;->p:Landroidx/media3/common/util/ParsableByteArray;

    .line 1333
    .line 1334
    const/4 v5, 0x1

    .line 1335
    iput v5, v0, LP0/B;->l:I

    .line 1336
    .line 1337
    goto :goto_1c

    .line 1338
    :goto_20
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 1339
    .line 1340
    .line 1341
    move-result-wide v3

    .line 1342
    iget-wide v8, v0, LP0/B;->n:J

    .line 1343
    .line 1344
    add-long/2addr v3, v8

    .line 1345
    iget v6, v0, LP0/B;->o:I

    .line 1346
    .line 1347
    int-to-long v5, v6

    .line 1348
    sub-long/2addr v3, v5

    .line 1349
    cmp-long v5, v8, v5

    .line 1350
    .line 1351
    if-eqz v5, :cond_45

    .line 1352
    .line 1353
    iget v5, v0, LP0/B;->m:I

    .line 1354
    .line 1355
    if-ne v5, v7, :cond_45

    .line 1356
    .line 1357
    invoke-virtual {v13, v11}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 1361
    .line 1362
    .line 1363
    move-result-object v5

    .line 1364
    const/4 v7, 0x0

    .line 1365
    invoke-interface {v1, v5, v7, v11}, Lv0/D;->peekFully([BII)V

    .line 1366
    .line 1367
    .line 1368
    invoke-static {v13}, LP0/n;->maybeSkipRemainingMetaBoxHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 1372
    .line 1373
    .line 1374
    move-result v5

    .line 1375
    invoke-interface {v1, v5}, Lv0/D;->skipFully(I)V

    .line 1376
    .line 1377
    .line 1378
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 1379
    .line 1380
    .line 1381
    :cond_45
    new-instance v5, Ls0/d;

    .line 1382
    .line 1383
    iget v6, v0, LP0/B;->m:I

    .line 1384
    .line 1385
    invoke-direct {v5, v6, v3, v4}, Ls0/d;-><init>(IJ)V

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v10, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1389
    .line 1390
    .line 1391
    iget-wide v5, v0, LP0/B;->n:J

    .line 1392
    .line 1393
    iget v7, v0, LP0/B;->o:I

    .line 1394
    .line 1395
    int-to-long v7, v7

    .line 1396
    cmp-long v5, v5, v7

    .line 1397
    .line 1398
    if-nez v5, :cond_46

    .line 1399
    .line 1400
    invoke-virtual {v0, v3, v4}, LP0/B;->a(J)V

    .line 1401
    .line 1402
    .line 1403
    goto :goto_1c

    .line 1404
    :cond_46
    const/4 v7, 0x0

    .line 1405
    iput v7, v0, LP0/B;->l:I

    .line 1406
    .line 1407
    iput v7, v0, LP0/B;->o:I

    .line 1408
    .line 1409
    :goto_21
    const/16 v30, 0x1

    .line 1410
    .line 1411
    :goto_22
    const/4 v14, -0x1

    .line 1412
    if-nez v30, :cond_47

    .line 1413
    .line 1414
    :goto_23
    return v14

    .line 1415
    :cond_47
    move v4, v7

    .line 1416
    move v9, v14

    .line 1417
    const/4 v5, 0x2

    .line 1418
    const/4 v7, 0x1

    .line 1419
    goto/16 :goto_1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, LP0/B;->h:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, LP0/B;->o:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, LP0/B;->q:I

    .line 11
    .line 12
    iput v0, p0, LP0/B;->r:I

    .line 13
    .line 14
    iput v0, p0, LP0/B;->s:I

    .line 15
    .line 16
    iput v0, p0, LP0/B;->t:I

    .line 17
    .line 18
    iput-boolean v0, p0, LP0/B;->u:Z

    .line 19
    .line 20
    iput-boolean v0, p0, LP0/B;->z:Z

    .line 21
    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    cmp-long p1, p1, v2

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget p1, p0, LP0/B;->l:I

    .line 29
    .line 30
    const/4 p2, 0x3

    .line 31
    if-eq p1, p2, :cond_0

    .line 32
    .line 33
    iput v0, p0, LP0/B;->l:I

    .line 34
    .line 35
    iput v0, p0, LP0/B;->o:I

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object p1, p0, LP0/B;->i:LP0/G;

    .line 39
    .line 40
    invoke-virtual {p1}, LP0/G;->reset()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, LP0/B;->j:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    iget-object p1, p0, LP0/B;->C:[LP0/A;

    .line 50
    .line 51
    array-length p2, p1

    .line 52
    :goto_0
    if-ge v0, p2, :cond_4

    .line 53
    .line 54
    aget-object v2, p1, v0

    .line 55
    .line 56
    iget-object v3, v2, LP0/A;->b:LP0/M;

    .line 57
    .line 58
    invoke-virtual {v3, p3, p4}, LP0/M;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-ne v4, v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v3, p3, p4}, LP0/M;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    :cond_2
    iput v4, v2, LP0/A;->e:I

    .line 69
    .line 70
    iget-object v2, v2, LP0/A;->d:Lv0/s0;

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    invoke-virtual {v2}, Lv0/s0;->reset()V

    .line 75
    .line 76
    .line 77
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    return-void
.end method

.method public sniff(Lv0/D;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, LP0/B;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    invoke-static {p1, v0}, LP0/I;->sniffUnfragmented(Lv0/D;Z)Lv0/k0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_1
    iput-object v0, p0, LP0/B;->k:Lcom/google/common/collect/ImmutableList;

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    return v1
.end method
