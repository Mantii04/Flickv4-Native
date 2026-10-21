.class public final LC0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public b:Lv0/F;

.field public c:Lv0/D;

.field public d:Lv0/l0;

.field public e:LP0/B;

.field public f:I

.field public g:I

.field public h:J

.field public i:I

.field public j:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LC0/a;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    const-wide/16 v0, -0x1

    .line 14
    .line 15
    iput-wide v0, p0, LC0/a;->j:J

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, LC0/a;->f:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final synthetic getSniffFailureDetails()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/B;->a(Lv0/C;)Ljava/util/List;

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
    .locals 0

    .line 1
    iput-object p1, p0, LC0/a;->b:Lv0/F;

    .line 2
    .line 3
    return-void
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 23
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
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    :goto_0
    iget v5, v0, LC0/a;->f:I

    .line 10
    .line 11
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const/4 v8, 0x4

    .line 17
    const/16 v9, 0x8

    .line 18
    .line 19
    const/4 v10, -0x1

    .line 20
    const/4 v11, 0x2

    .line 21
    if-eqz v5, :cond_9

    .line 22
    .line 23
    if-eq v5, v3, :cond_8

    .line 24
    .line 25
    const/4 v12, 0x3

    .line 26
    if-eq v5, v11, :cond_5

    .line 27
    .line 28
    if-eq v5, v12, :cond_1

    .line 29
    .line 30
    if-ne v5, v8, :cond_0

    .line 31
    .line 32
    return v10

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw v1

    .line 39
    :cond_1
    iget-object v4, v0, LC0/a;->d:Lv0/l0;

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    iget-object v4, v0, LC0/a;->c:Lv0/D;

    .line 44
    .line 45
    if-eq v1, v4, :cond_3

    .line 46
    .line 47
    :cond_2
    iput-object v1, v0, LC0/a;->c:Lv0/D;

    .line 48
    .line 49
    new-instance v4, Lv0/l0;

    .line 50
    .line 51
    iget-wide v5, v0, LC0/a;->j:J

    .line 52
    .line 53
    invoke-direct {v4, v1, v5, v6}, Lv0/l0;-><init>(Lv0/D;J)V

    .line 54
    .line 55
    .line 56
    iput-object v4, v0, LC0/a;->d:Lv0/l0;

    .line 57
    .line 58
    :cond_3
    iget-object v1, v0, LC0/a;->e:LP0/B;

    .line 59
    .line 60
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, LP0/B;

    .line 65
    .line 66
    iget-object v4, v0, LC0/a;->d:Lv0/l0;

    .line 67
    .line 68
    invoke-virtual {v1, v4, v2}, LP0/B;->read(Lv0/D;Lv0/c0;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-ne v1, v3, :cond_4

    .line 73
    .line 74
    iget-wide v3, v2, Lv0/c0;->a:J

    .line 75
    .line 76
    iget-wide v5, v0, LC0/a;->j:J

    .line 77
    .line 78
    add-long/2addr v3, v5

    .line 79
    iput-wide v3, v2, Lv0/c0;->a:J

    .line 80
    .line 81
    :cond_4
    return v1

    .line 82
    :cond_5
    iget-object v5, v0, LC0/a;->e:LP0/B;

    .line 83
    .line 84
    if-nez v5, :cond_6

    .line 85
    .line 86
    new-instance v5, LP0/B;

    .line 87
    .line 88
    sget-object v10, LS0/q;->a:LS0/p;

    .line 89
    .line 90
    invoke-direct {v5, v10, v9}, LP0/B;-><init>(LS0/q;I)V

    .line 91
    .line 92
    .line 93
    iput-object v5, v0, LC0/a;->e:LP0/B;

    .line 94
    .line 95
    :cond_6
    new-instance v5, Lv0/l0;

    .line 96
    .line 97
    iget-wide v9, v0, LC0/a;->j:J

    .line 98
    .line 99
    invoke-direct {v5, v1, v9, v10}, Lv0/l0;-><init>(Lv0/D;J)V

    .line 100
    .line 101
    .line 102
    iput-object v5, v0, LC0/a;->d:Lv0/l0;

    .line 103
    .line 104
    iget-object v9, v0, LC0/a;->e:LP0/B;

    .line 105
    .line 106
    invoke-virtual {v9, v5}, LP0/B;->sniff(Lv0/D;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_7

    .line 111
    .line 112
    iget-object v5, v0, LC0/a;->e:LP0/B;

    .line 113
    .line 114
    new-instance v6, Lv0/n0;

    .line 115
    .line 116
    iget-wide v7, v0, LC0/a;->j:J

    .line 117
    .line 118
    iget-object v9, v0, LC0/a;->b:Lv0/F;

    .line 119
    .line 120
    invoke-static {v9}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    check-cast v9, Lv0/F;

    .line 125
    .line 126
    invoke-direct {v6, v7, v8, v9}, Lv0/n0;-><init>(JLv0/F;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5, v6}, LP0/B;->init(Lv0/F;)V

    .line 130
    .line 131
    .line 132
    iput v12, v0, LC0/a;->f:I

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_7
    iget-object v5, v0, LC0/a;->b:Lv0/F;

    .line 136
    .line 137
    invoke-static {v5}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Lv0/F;

    .line 142
    .line 143
    invoke-interface {v5}, Lv0/F;->endTracks()V

    .line 144
    .line 145
    .line 146
    iget-object v5, v0, LC0/a;->b:Lv0/F;

    .line 147
    .line 148
    new-instance v9, Lv0/f0;

    .line 149
    .line 150
    invoke-direct {v9, v6, v7}, Lv0/f0;-><init>(J)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v5, v9}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 154
    .line 155
    .line 156
    iput v8, v0, LC0/a;->f:I

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_8
    iget-wide v5, v0, LC0/a;->h:J

    .line 161
    .line 162
    iget v7, v0, LC0/a;->i:I

    .line 163
    .line 164
    int-to-long v7, v7

    .line 165
    sub-long/2addr v5, v7

    .line 166
    long-to-int v5, v5

    .line 167
    invoke-interface {v1, v5}, Lv0/D;->skipFully(I)V

    .line 168
    .line 169
    .line 170
    iput v4, v0, LC0/a;->i:I

    .line 171
    .line 172
    iput v4, v0, LC0/a;->f:I

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_9
    iget v5, v0, LC0/a;->i:I

    .line 177
    .line 178
    iget-object v12, v0, LC0/a;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 179
    .line 180
    if-nez v5, :cond_b

    .line 181
    .line 182
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-interface {v1, v5, v4, v9, v3}, Lv0/D;->readFully([BIIZ)Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-nez v5, :cond_a

    .line 191
    .line 192
    iget-object v1, v0, LC0/a;->b:Lv0/F;

    .line 193
    .line 194
    invoke-static {v1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Lv0/F;

    .line 199
    .line 200
    invoke-interface {v1}, Lv0/F;->endTracks()V

    .line 201
    .line 202
    .line 203
    iget-object v1, v0, LC0/a;->b:Lv0/F;

    .line 204
    .line 205
    new-instance v2, Lv0/f0;

    .line 206
    .line 207
    invoke-direct {v2, v6, v7}, Lv0/f0;-><init>(J)V

    .line 208
    .line 209
    .line 210
    invoke-interface {v1, v2}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 211
    .line 212
    .line 213
    iput v8, v0, LC0/a;->f:I

    .line 214
    .line 215
    return v10

    .line 216
    :cond_a
    iput v9, v0, LC0/a;->i:I

    .line 217
    .line 218
    invoke-virtual {v12, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 222
    .line 223
    .line 224
    move-result-wide v5

    .line 225
    iput-wide v5, v0, LC0/a;->h:J

    .line 226
    .line 227
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    iput v5, v0, LC0/a;->g:I

    .line 232
    .line 233
    :cond_b
    iget-wide v5, v0, LC0/a;->h:J

    .line 234
    .line 235
    const-wide/16 v13, 0x1

    .line 236
    .line 237
    cmp-long v5, v5, v13

    .line 238
    .line 239
    if-nez v5, :cond_c

    .line 240
    .line 241
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-interface {v1, v5, v9, v9}, Lv0/D;->readFully([BII)V

    .line 246
    .line 247
    .line 248
    iget v5, v0, LC0/a;->i:I

    .line 249
    .line 250
    add-int/2addr v5, v9

    .line 251
    iput v5, v0, LC0/a;->i:I

    .line 252
    .line 253
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    .line 254
    .line 255
    .line 256
    move-result-wide v5

    .line 257
    iput-wide v5, v0, LC0/a;->h:J

    .line 258
    .line 259
    :cond_c
    iget v5, v0, LC0/a;->g:I

    .line 260
    .line 261
    const v6, 0x6d707664

    .line 262
    .line 263
    .line 264
    if-ne v5, v6, :cond_d

    .line 265
    .line 266
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 267
    .line 268
    .line 269
    move-result-wide v5

    .line 270
    iput-wide v5, v0, LC0/a;->j:J

    .line 271
    .line 272
    iget v7, v0, LC0/a;->i:I

    .line 273
    .line 274
    int-to-long v9, v7

    .line 275
    sub-long v15, v5, v9

    .line 276
    .line 277
    new-instance v12, LE0/c;

    .line 278
    .line 279
    iget-wide v13, v0, LC0/a;->h:J

    .line 280
    .line 281
    sub-long v21, v13, v9

    .line 282
    .line 283
    const-wide/16 v13, 0x0

    .line 284
    .line 285
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    move-wide/from16 v19, v5

    .line 291
    .line 292
    invoke-direct/range {v12 .. v22}, LE0/c;-><init>(JJJJJ)V

    .line 293
    .line 294
    .line 295
    iget-object v5, v0, LC0/a;->b:Lv0/F;

    .line 296
    .line 297
    invoke-static {v5}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    check-cast v5, Lv0/F;

    .line 302
    .line 303
    const/16 v6, 0x400

    .line 304
    .line 305
    invoke-interface {v5, v6, v8}, Lv0/F;->track(II)Lv0/r0;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    new-instance v6, Landroidx/media3/common/Format$Builder;

    .line 310
    .line 311
    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 312
    .line 313
    .line 314
    const-string v7, "image/heic"

    .line 315
    .line 316
    invoke-virtual {v6, v7}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    new-instance v7, Landroidx/media3/common/Metadata;

    .line 321
    .line 322
    new-array v8, v3, [Landroidx/media3/common/Metadata$Entry;

    .line 323
    .line 324
    aput-object v12, v8, v4

    .line 325
    .line 326
    invoke-direct {v7, v8}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6, v7}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-virtual {v6}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-interface {v5, v6}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 338
    .line 339
    .line 340
    iput v11, v0, LC0/a;->f:I

    .line 341
    .line 342
    goto/16 :goto_0

    .line 343
    .line 344
    :cond_d
    iput v3, v0, LC0/a;->f:I

    .line 345
    .line 346
    goto/16 :goto_0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, LC0/a;->e:LP0/B;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, LP0/B;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, LC0/a;->e:LP0/B;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, LC0/a;->f:I

    .line 9
    .line 10
    iput p1, p0, LC0/a;->i:I

    .line 11
    .line 12
    const-wide/16 p1, -0x1

    .line 13
    .line 14
    iput-wide p1, p0, LC0/a;->j:J

    .line 15
    .line 16
    iget-object p1, p0, LC0/a;->e:LP0/B;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, LP0/B;->release()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, LC0/a;->e:LP0/B;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget v0, p0, LC0/a;->f:I

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, LC0/a;->e:LP0/B;

    .line 33
    .line 34
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, LP0/B;

    .line 39
    .line 40
    invoke-virtual {v0, p1, p2, p3, p4}, LP0/B;->seek(JJ)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public sniff(Lv0/D;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, LC0/c;->sniff(Lv0/D;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method
