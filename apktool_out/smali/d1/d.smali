.class public final Ld1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# instance fields
.field public a:Lv0/F;

.field public b:Lv0/r0;

.field public c:I

.field public d:J

.field public e:Ld1/b;

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ld1/d;->c:I

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    iput-wide v0, p0, Ld1/d;->d:J

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    iput v2, p0, Ld1/d;->f:I

    .line 13
    .line 14
    iput-wide v0, p0, Ld1/d;->g:J

    .line 15
    .line 16
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
    .locals 2

    .line 1
    iput-object p1, p0, Ld1/d;->a:Lv0/F;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Lv0/F;->track(II)Lv0/r0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Ld1/d;->b:Lv0/r0;

    .line 10
    .line 11
    invoke-interface {p1}, Lv0/F;->endTracks()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Ld1/d;->b:Lv0/r0;

    .line 2
    .line 3
    invoke-static {p2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Ld1/d;->a:Lv0/F;

    .line 7
    .line 8
    invoke-static {p2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget p2, p0, Ld1/d;->c:I

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    const/4 v1, 0x4

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz p2, :cond_c

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    if-eq p2, v2, :cond_b

    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    if-eq p2, v4, :cond_6

    .line 24
    .line 25
    const-wide/16 v6, -0x1

    .line 26
    .line 27
    if-eq p2, v5, :cond_3

    .line 28
    .line 29
    if-ne p2, v1, :cond_2

    .line 30
    .line 31
    iget-wide v4, p0, Ld1/d;->g:J

    .line 32
    .line 33
    cmp-long p2, v4, v6

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v2, v3

    .line 39
    :goto_0
    invoke-static {v2}, LP3/v;->checkState(Z)V

    .line 40
    .line 41
    .line 42
    iget-wide v1, p0, Ld1/d;->g:J

    .line 43
    .line 44
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    sub-long/2addr v1, v4

    .line 49
    iget-object p2, p0, Ld1/d;->e:Ld1/b;

    .line 50
    .line 51
    invoke-static {p2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Ld1/b;

    .line 56
    .line 57
    invoke-interface {p2, p1, v1, v2}, Ld1/b;->sampleData(Lv0/D;J)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    return v0

    .line 64
    :cond_1
    return v3

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_3
    invoke-static {p1}, Ld1/g;->skipToSampleData(Lv0/D;)Landroid/util/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Ljava/lang/Long;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput v0, p0, Ld1/d;->f:I

    .line 84
    .line 85
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p2, Ljava/lang/Long;

    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    iget-wide v8, p0, Ld1/d;->d:J

    .line 94
    .line 95
    cmp-long p2, v8, v6

    .line 96
    .line 97
    if-eqz p2, :cond_4

    .line 98
    .line 99
    const-wide v10, 0xffffffffL

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    cmp-long p2, v4, v10

    .line 105
    .line 106
    if-nez p2, :cond_4

    .line 107
    .line 108
    move-wide v4, v8

    .line 109
    :cond_4
    iget p2, p0, Ld1/d;->f:I

    .line 110
    .line 111
    int-to-long v8, p2

    .line 112
    add-long/2addr v8, v4

    .line 113
    iput-wide v8, p0, Ld1/d;->g:J

    .line 114
    .line 115
    invoke-interface {p1}, Lv0/D;->getLength()J

    .line 116
    .line 117
    .line 118
    move-result-wide p1

    .line 119
    cmp-long v0, p1, v6

    .line 120
    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    iget-wide v4, p0, Ld1/d;->g:J

    .line 124
    .line 125
    cmp-long v0, v4, p1

    .line 126
    .line 127
    if-lez v0, :cond_5

    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v2, "Data exceeds input length: "

    .line 132
    .line 133
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-wide v4, p0, Ld1/d;->g:J

    .line 137
    .line 138
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, ", "

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string v2, "WavExtractor"

    .line 154
    .line 155
    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iput-wide p1, p0, Ld1/d;->g:J

    .line 159
    .line 160
    :cond_5
    iget-object p1, p0, Ld1/d;->e:Ld1/b;

    .line 161
    .line 162
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Ld1/b;

    .line 167
    .line 168
    iget p2, p0, Ld1/d;->f:I

    .line 169
    .line 170
    iget-wide v4, p0, Ld1/d;->g:J

    .line 171
    .line 172
    invoke-interface {p1, p2, v4, v5}, Ld1/b;->init(IJ)V

    .line 173
    .line 174
    .line 175
    iput v1, p0, Ld1/d;->c:I

    .line 176
    .line 177
    return v3

    .line 178
    :cond_6
    invoke-static {p1}, Ld1/g;->readFormat(Lv0/D;)Ld1/e;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    iget p1, v9, Ld1/e;->a:I

    .line 183
    .line 184
    const/16 p2, 0x11

    .line 185
    .line 186
    if-ne p1, p2, :cond_7

    .line 187
    .line 188
    new-instance p1, Ld1/a;

    .line 189
    .line 190
    iget-object p2, p0, Ld1/d;->a:Lv0/F;

    .line 191
    .line 192
    iget-object v0, p0, Ld1/d;->b:Lv0/r0;

    .line 193
    .line 194
    invoke-direct {p1, p2, v0, v9}, Ld1/a;-><init>(Lv0/F;Lv0/r0;Ld1/e;)V

    .line 195
    .line 196
    .line 197
    iput-object p1, p0, Ld1/d;->e:Ld1/b;

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_7
    const/4 p2, 0x6

    .line 201
    if-ne p1, p2, :cond_8

    .line 202
    .line 203
    new-instance v6, Ld1/c;

    .line 204
    .line 205
    iget-object v7, p0, Ld1/d;->a:Lv0/F;

    .line 206
    .line 207
    iget-object v8, p0, Ld1/d;->b:Lv0/r0;

    .line 208
    .line 209
    const-string v10, "audio/g711-alaw"

    .line 210
    .line 211
    const/4 v11, -0x1

    .line 212
    invoke-direct/range {v6 .. v11}, Ld1/c;-><init>(Lv0/F;Lv0/r0;Ld1/e;Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    iput-object v6, p0, Ld1/d;->e:Ld1/b;

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_8
    const/4 p2, 0x7

    .line 219
    if-ne p1, p2, :cond_9

    .line 220
    .line 221
    new-instance v6, Ld1/c;

    .line 222
    .line 223
    iget-object v7, p0, Ld1/d;->a:Lv0/F;

    .line 224
    .line 225
    iget-object v8, p0, Ld1/d;->b:Lv0/r0;

    .line 226
    .line 227
    const-string v10, "audio/g711-mlaw"

    .line 228
    .line 229
    const/4 v11, -0x1

    .line 230
    invoke-direct/range {v6 .. v11}, Ld1/c;-><init>(Lv0/F;Lv0/r0;Ld1/e;Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    iput-object v6, p0, Ld1/d;->e:Ld1/b;

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_9
    iget p2, v9, Ld1/e;->e:I

    .line 237
    .line 238
    invoke-static {p1, p2}, Lv0/y0;->getPcmEncodingForType(II)I

    .line 239
    .line 240
    .line 241
    move-result v11

    .line 242
    if-eqz v11, :cond_a

    .line 243
    .line 244
    new-instance v6, Ld1/c;

    .line 245
    .line 246
    iget-object v7, p0, Ld1/d;->a:Lv0/F;

    .line 247
    .line 248
    iget-object v8, p0, Ld1/d;->b:Lv0/r0;

    .line 249
    .line 250
    const-string v10, "audio/raw"

    .line 251
    .line 252
    invoke-direct/range {v6 .. v11}, Ld1/c;-><init>(Lv0/F;Lv0/r0;Ld1/e;Ljava/lang/String;I)V

    .line 253
    .line 254
    .line 255
    iput-object v6, p0, Ld1/d;->e:Ld1/b;

    .line 256
    .line 257
    :goto_1
    iput v5, p0, Ld1/d;->c:I

    .line 258
    .line 259
    return v3

    .line 260
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string p2, "Unsupported WAV format type: "

    .line 263
    .line 264
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget p2, v9, Ld1/e;->a:I

    .line 268
    .line 269
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    throw p1

    .line 281
    :cond_b
    invoke-static {p1}, Ld1/g;->readRf64SampleDataSize(Lv0/D;)J

    .line 282
    .line 283
    .line 284
    move-result-wide p1

    .line 285
    iput-wide p1, p0, Ld1/d;->d:J

    .line 286
    .line 287
    iput v4, p0, Ld1/d;->c:I

    .line 288
    .line 289
    return v3

    .line 290
    :cond_c
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 291
    .line 292
    .line 293
    move-result-wide v4

    .line 294
    const-wide/16 v6, 0x0

    .line 295
    .line 296
    cmp-long p2, v4, v6

    .line 297
    .line 298
    if-nez p2, :cond_d

    .line 299
    .line 300
    move p2, v2

    .line 301
    goto :goto_2

    .line 302
    :cond_d
    move p2, v3

    .line 303
    :goto_2
    invoke-static {p2}, LP3/v;->checkState(Z)V

    .line 304
    .line 305
    .line 306
    iget p2, p0, Ld1/d;->f:I

    .line 307
    .line 308
    if-eq p2, v0, :cond_e

    .line 309
    .line 310
    invoke-interface {p1, p2}, Lv0/D;->skipFully(I)V

    .line 311
    .line 312
    .line 313
    iput v1, p0, Ld1/d;->c:I

    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_e
    invoke-static {p1}, Ld1/g;->checkFileType(Lv0/D;)Z

    .line 317
    .line 318
    .line 319
    move-result p2

    .line 320
    if-eqz p2, :cond_f

    .line 321
    .line 322
    invoke-interface {p1}, Lv0/D;->getPeekPosition()J

    .line 323
    .line 324
    .line 325
    move-result-wide v0

    .line 326
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 327
    .line 328
    .line 329
    move-result-wide v4

    .line 330
    sub-long/2addr v0, v4

    .line 331
    long-to-int p2, v0

    .line 332
    invoke-interface {p1, p2}, Lv0/D;->skipFully(I)V

    .line 333
    .line 334
    .line 335
    iput v2, p0, Ld1/d;->c:I

    .line 336
    .line 337
    :goto_3
    return v3

    .line 338
    :cond_f
    const-string p1, "Unsupported or unrecognized wav file type."

    .line 339
    .line 340
    const/4 p2, 0x0

    .line 341
    invoke-static {p1, p2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    throw p1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x4

    .line 10
    :goto_0
    iput p1, p0, Ld1/d;->c:I

    .line 11
    .line 12
    iget-object p1, p0, Ld1/d;->e:Ld1/b;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1, p3, p4}, Ld1/b;->reset(J)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public sniff(Lv0/D;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ld1/g;->checkFileType(Lv0/D;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
