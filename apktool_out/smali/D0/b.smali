.class public final LD0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public b:Lv0/F;

.field public c:I

.field public d:I

.field public e:I

.field public f:J

.field public g:LE0/c;

.field public h:Lv0/D;

.field public i:Lv0/l0;

.field public j:LP0/B;


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
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, LD0/b;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, LD0/b;->f:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, LD0/b;->b:Lv0/F;

    .line 2
    .line 3
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lv0/F;

    .line 8
    .line 9
    invoke-interface {v0}, Lv0/F;->endTracks()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, LD0/b;->b:Lv0/F;

    .line 13
    .line 14
    new-instance v1, Lv0/f0;

    .line 15
    .line 16
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2, v3}, Lv0/f0;-><init>(J)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x6

    .line 28
    iput v0, p0, LD0/b;->c:I

    .line 29
    .line 30
    return-void
.end method

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
    iput-object p1, p0, LD0/b;->b:Lv0/F;

    .line 2
    .line 3
    return-void
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, LD0/b;->c:I

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    const-wide/16 v4, -0x1

    .line 7
    .line 8
    iget-object v6, p0, LD0/b;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 9
    .line 10
    const/4 v7, 0x4

    .line 11
    if-eqz v2, :cond_10

    .line 12
    .line 13
    if-eq v2, v0, :cond_f

    .line 14
    .line 15
    if-eq v2, v3, :cond_a

    .line 16
    .line 17
    const/4 v3, 0x5

    .line 18
    if-eq v2, v7, :cond_5

    .line 19
    .line 20
    if-eq v2, v3, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x6

    .line 23
    if-ne v2, p1, :cond_0

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    return p1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    iget-object v1, p0, LD0/b;->i:Lv0/l0;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, LD0/b;->h:Lv0/D;

    .line 38
    .line 39
    if-eq p1, v1, :cond_3

    .line 40
    .line 41
    :cond_2
    iput-object p1, p0, LD0/b;->h:Lv0/D;

    .line 42
    .line 43
    new-instance v1, Lv0/l0;

    .line 44
    .line 45
    iget-wide v2, p0, LD0/b;->f:J

    .line 46
    .line 47
    invoke-direct {v1, p1, v2, v3}, Lv0/l0;-><init>(Lv0/D;J)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, LD0/b;->i:Lv0/l0;

    .line 51
    .line 52
    :cond_3
    iget-object p1, p0, LD0/b;->j:LP0/B;

    .line 53
    .line 54
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, LP0/B;

    .line 59
    .line 60
    iget-object v1, p0, LD0/b;->i:Lv0/l0;

    .line 61
    .line 62
    invoke-virtual {p1, v1, p2}, LP0/B;->read(Lv0/D;Lv0/c0;)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-ne p1, v0, :cond_4

    .line 67
    .line 68
    iget-wide v0, p2, Lv0/c0;->a:J

    .line 69
    .line 70
    iget-wide v2, p0, LD0/b;->f:J

    .line 71
    .line 72
    add-long/2addr v0, v2

    .line 73
    iput-wide v0, p2, Lv0/c0;->a:J

    .line 74
    .line 75
    :cond_4
    return p1

    .line 76
    :cond_5
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    iget-wide v8, p0, LD0/b;->f:J

    .line 81
    .line 82
    cmp-long v2, v4, v8

    .line 83
    .line 84
    if-eqz v2, :cond_6

    .line 85
    .line 86
    iput-wide v8, p2, Lv0/c0;->a:J

    .line 87
    .line 88
    return v0

    .line 89
    :cond_6
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-interface {p1, p2, v1, v0, v0}, Lv0/D;->peekFully([BIIZ)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-nez p2, :cond_7

    .line 98
    .line 99
    invoke-virtual {p0}, LD0/b;->a()V

    .line 100
    .line 101
    .line 102
    return v1

    .line 103
    :cond_7
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, LD0/b;->j:LP0/B;

    .line 107
    .line 108
    if-nez p2, :cond_8

    .line 109
    .line 110
    new-instance p2, LP0/B;

    .line 111
    .line 112
    sget-object v2, LS0/q;->a:LS0/p;

    .line 113
    .line 114
    const/16 v4, 0x8

    .line 115
    .line 116
    invoke-direct {p2, v2, v4}, LP0/B;-><init>(LS0/q;I)V

    .line 117
    .line 118
    .line 119
    iput-object p2, p0, LD0/b;->j:LP0/B;

    .line 120
    .line 121
    :cond_8
    new-instance p2, Lv0/l0;

    .line 122
    .line 123
    iget-wide v4, p0, LD0/b;->f:J

    .line 124
    .line 125
    invoke-direct {p2, p1, v4, v5}, Lv0/l0;-><init>(Lv0/D;J)V

    .line 126
    .line 127
    .line 128
    iput-object p2, p0, LD0/b;->i:Lv0/l0;

    .line 129
    .line 130
    iget-object p1, p0, LD0/b;->j:LP0/B;

    .line 131
    .line 132
    invoke-virtual {p1, p2}, LP0/B;->sniff(Lv0/D;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_9

    .line 137
    .line 138
    iget-object p1, p0, LD0/b;->j:LP0/B;

    .line 139
    .line 140
    new-instance p2, Lv0/n0;

    .line 141
    .line 142
    iget-wide v4, p0, LD0/b;->f:J

    .line 143
    .line 144
    iget-object v2, p0, LD0/b;->b:Lv0/F;

    .line 145
    .line 146
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Lv0/F;

    .line 151
    .line 152
    invoke-direct {p2, v4, v5, v2}, Lv0/n0;-><init>(JLv0/F;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, LP0/B;->init(Lv0/F;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, LD0/b;->g:LE0/c;

    .line 159
    .line 160
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, LE0/c;

    .line 165
    .line 166
    iget-object p2, p0, LD0/b;->b:Lv0/F;

    .line 167
    .line 168
    invoke-static {p2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    check-cast p2, Lv0/F;

    .line 173
    .line 174
    const/16 v2, 0x400

    .line 175
    .line 176
    invoke-interface {p2, v2, v7}, Lv0/F;->track(II)Lv0/r0;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    new-instance v2, Landroidx/media3/common/Format$Builder;

    .line 181
    .line 182
    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v4, "image/jpeg"

    .line 186
    .line 187
    invoke-virtual {v2, v4}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    new-instance v4, Landroidx/media3/common/Metadata;

    .line 192
    .line 193
    new-array v0, v0, [Landroidx/media3/common/Metadata$Entry;

    .line 194
    .line 195
    aput-object p1, v0, v1

    .line 196
    .line 197
    invoke-direct {v4, v0}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v4}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-interface {p2, p1}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 209
    .line 210
    .line 211
    iput v3, p0, LD0/b;->c:I

    .line 212
    .line 213
    return v1

    .line 214
    :cond_9
    invoke-virtual {p0}, LD0/b;->a()V

    .line 215
    .line 216
    .line 217
    return v1

    .line 218
    :cond_a
    iget p2, p0, LD0/b;->d:I

    .line 219
    .line 220
    const v0, 0xffe1

    .line 221
    .line 222
    .line 223
    if-ne p2, v0, :cond_d

    .line 224
    .line 225
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    .line 226
    .line 227
    iget v0, p0, LD0/b;->e:I

    .line 228
    .line 229
    invoke-direct {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iget v2, p0, LD0/b;->e:I

    .line 237
    .line 238
    invoke-interface {p1, v0, v1, v2}, Lv0/D;->readFully([BII)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, LD0/b;->g:LE0/c;

    .line 242
    .line 243
    if-nez v0, :cond_e

    .line 244
    .line 245
    const-string v0, "http://ns.adobe.com/xap/1.0/"

    .line 246
    .line 247
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_e

    .line 256
    .line 257
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    if-eqz p2, :cond_e

    .line 262
    .line 263
    invoke-interface {p1}, Lv0/D;->getLength()J

    .line 264
    .line 265
    .line 266
    move-result-wide v2

    .line 267
    cmp-long p1, v2, v4

    .line 268
    .line 269
    const/4 v0, 0x0

    .line 270
    if-nez p1, :cond_b

    .line 271
    .line 272
    goto :goto_0

    .line 273
    :cond_b
    invoke-static {p2}, LD0/e;->parse(Ljava/lang/String;)LD0/d;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    if-nez p1, :cond_c

    .line 278
    .line 279
    goto :goto_0

    .line 280
    :cond_c
    invoke-virtual {p1, v2, v3}, LD0/d;->getMotionPhotoMetadata(J)LE0/c;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    :goto_0
    iput-object v0, p0, LD0/b;->g:LE0/c;

    .line 285
    .line 286
    if-eqz v0, :cond_e

    .line 287
    .line 288
    iget-wide p1, v0, LK0/a;->d:J

    .line 289
    .line 290
    iput-wide p1, p0, LD0/b;->f:J

    .line 291
    .line 292
    goto :goto_1

    .line 293
    :cond_d
    iget p2, p0, LD0/b;->e:I

    .line 294
    .line 295
    invoke-interface {p1, p2}, Lv0/D;->skipFully(I)V

    .line 296
    .line 297
    .line 298
    :cond_e
    :goto_1
    iput v1, p0, LD0/b;->c:I

    .line 299
    .line 300
    return v1

    .line 301
    :cond_f
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    invoke-interface {p1, p2, v1, v3}, Lv0/D;->peekFully([BII)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 312
    .line 313
    .line 314
    move-result p2

    .line 315
    sub-int/2addr p2, v3

    .line 316
    iput p2, p0, LD0/b;->e:I

    .line 317
    .line 318
    invoke-interface {p1, v3}, Lv0/D;->skipFully(I)V

    .line 319
    .line 320
    .line 321
    iput v3, p0, LD0/b;->c:I

    .line 322
    .line 323
    return v1

    .line 324
    :cond_10
    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 328
    .line 329
    .line 330
    move-result-object p2

    .line 331
    invoke-interface {p1, p2, v1, v3}, Lv0/D;->readFully([BII)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    iput p1, p0, LD0/b;->d:I

    .line 339
    .line 340
    const p2, 0xffda

    .line 341
    .line 342
    .line 343
    if-ne p1, p2, :cond_12

    .line 344
    .line 345
    iget-wide p1, p0, LD0/b;->f:J

    .line 346
    .line 347
    cmp-long p1, p1, v4

    .line 348
    .line 349
    if-eqz p1, :cond_11

    .line 350
    .line 351
    iput v7, p0, LD0/b;->c:I

    .line 352
    .line 353
    return v1

    .line 354
    :cond_11
    invoke-virtual {p0}, LD0/b;->a()V

    .line 355
    .line 356
    .line 357
    return v1

    .line 358
    :cond_12
    const p2, 0xffd0

    .line 359
    .line 360
    .line 361
    if-lt p1, p2, :cond_13

    .line 362
    .line 363
    const p2, 0xffd9

    .line 364
    .line 365
    .line 366
    if-le p1, p2, :cond_14

    .line 367
    .line 368
    :cond_13
    const p2, 0xff01

    .line 369
    .line 370
    .line 371
    if-eq p1, p2, :cond_14

    .line 372
    .line 373
    iput v0, p0, LD0/b;->c:I

    .line 374
    .line 375
    :cond_14
    return v1
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, LD0/b;->j:LP0/B;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, LP0/B;->release()V

    .line 6
    .line 7
    .line 8
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
    iput p1, p0, LD0/b;->c:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, LD0/b;->j:LP0/B;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget v0, p0, LD0/b;->c:I

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, LD0/b;->j:LP0/B;

    .line 20
    .line 21
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, LP0/B;

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2, p3, p4}, LP0/B;->seek(JJ)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public sniff(Lv0/D;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LD0/b;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-interface {p1, v2, v3, v1}, Lv0/D;->peekFully([BII)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const v4, 0xffd8

    .line 20
    .line 21
    .line 22
    if-eq v2, v4, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {p1, v2, v3, v1}, Lv0/D;->peekFully([BII)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, p0, LD0/b;->d:I

    .line 40
    .line 41
    const v4, 0xffda

    .line 42
    .line 43
    .line 44
    if-ne v2, v4, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {p1, v2, v3, v1}, Lv0/D;->peekFully([BII)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    sub-int/2addr v2, v1

    .line 62
    if-gez v2, :cond_2

    .line 63
    .line 64
    :goto_1
    return v3

    .line 65
    :cond_2
    iget v4, p0, LD0/b;->d:I

    .line 66
    .line 67
    const v5, 0xffe1

    .line 68
    .line 69
    .line 70
    if-eq v4, v5, :cond_3

    .line 71
    .line 72
    invoke-interface {p1, v2}, Lv0/D;->advancePeekPosition(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-interface {p1, v4, v3, v2}, Lv0/D;->peekFully([BII)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const-string v4, "http://ns.adobe.com/xap/1.0/"

    .line 91
    .line 92
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_4

    .line 97
    .line 98
    move v2, v3

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {v2}, LD0/e;->isMotionPhotoXmp(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    :goto_2
    if-eqz v2, :cond_0

    .line 109
    .line 110
    const/4 p1, 0x1

    .line 111
    return p1
.end method
