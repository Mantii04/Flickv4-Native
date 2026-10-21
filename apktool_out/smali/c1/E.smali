.class public final Lc1/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/o;


# instance fields
.field public final a:Landroidx/media3/common/util/TimestampAdjuster;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc1/E;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 5
    .line 6
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lc1/E;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onSeekFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc1/E;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    sget-object v1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public searchForTimestamp(Lv0/D;J)Lv0/m;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, Lv0/D;->getPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-interface/range {p1 .. p1}, Lv0/D;->getLength()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    sub-long/2addr v3, v1

    .line 12
    const-wide/16 v5, 0x4e20

    .line 13
    .line 14
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    long-to-int v3, v3

    .line 19
    iget-object v4, v0, Lc1/E;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const/4 v6, 0x0

    .line 29
    move-object/from16 v7, p1

    .line 30
    .line 31
    invoke-interface {v7, v5, v6, v3}, Lv0/D;->peekFully([BII)V

    .line 32
    .line 33
    .line 34
    const/4 v3, -0x1

    .line 35
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    move v7, v3

    .line 41
    move-wide v8, v5

    .line 42
    :goto_0
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    const/4 v11, 0x4

    .line 47
    if-lt v10, v11, :cond_e

    .line 48
    .line 49
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    invoke-static {v12, v10}, Lc1/F;->a(I[B)I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    const/4 v12, 0x1

    .line 62
    const/16 v13, 0x1ba

    .line 63
    .line 64
    if-eq v10, v13, :cond_0

    .line 65
    .line 66
    invoke-virtual {v4, v12}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v4, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 71
    .line 72
    .line 73
    invoke-static {v4}, Lc1/G;->readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v14

    .line 77
    cmp-long v3, v14, v5

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    iget-object v3, v0, Lc1/E;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 82
    .line 83
    invoke-virtual {v3, v14, v15}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 84
    .line 85
    .line 86
    move-result-wide v14

    .line 87
    cmp-long v3, v14, p2

    .line 88
    .line 89
    if-lez v3, :cond_2

    .line 90
    .line 91
    cmp-long v3, v8, v5

    .line 92
    .line 93
    if-nez v3, :cond_1

    .line 94
    .line 95
    invoke-static {v14, v15, v1, v2}, Lv0/m;->overestimatedResult(JJ)Lv0/m;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    return-object v1

    .line 100
    :cond_1
    int-to-long v3, v7

    .line 101
    add-long/2addr v1, v3

    .line 102
    invoke-static {v1, v2}, Lv0/m;->targetFoundResult(J)Lv0/m;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    return-object v1

    .line 107
    :cond_2
    const-wide/32 v7, 0x186a0

    .line 108
    .line 109
    .line 110
    add-long/2addr v7, v14

    .line 111
    cmp-long v3, v7, p2

    .line 112
    .line 113
    if-lez v3, :cond_3

    .line 114
    .line 115
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    int-to-long v3, v3

    .line 120
    add-long/2addr v1, v3

    .line 121
    invoke-static {v1, v2}, Lv0/m;->targetFoundResult(J)Lv0/m;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    return-object v1

    .line 126
    :cond_3
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    move v7, v3

    .line 131
    move-wide v8, v14

    .line 132
    :cond_4
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    const/16 v14, 0xa

    .line 141
    .line 142
    if-ge v10, v14, :cond_5

    .line 143
    .line 144
    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_2

    .line 148
    .line 149
    :cond_5
    const/16 v10, 0x9

    .line 150
    .line 151
    invoke-virtual {v4, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    and-int/lit8 v10, v10, 0x7

    .line 159
    .line 160
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    if-ge v14, v10, :cond_6

    .line 165
    .line 166
    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_2

    .line 170
    .line 171
    :cond_6
    invoke-virtual {v4, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    if-ge v10, v11, :cond_7

    .line 179
    .line 180
    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_7
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 189
    .line 190
    .line 191
    move-result v14

    .line 192
    invoke-static {v14, v10}, Lc1/F;->a(I[B)I

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    const/16 v14, 0x1bb

    .line 197
    .line 198
    if-ne v10, v14, :cond_9

    .line 199
    .line 200
    invoke-virtual {v4, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 204
    .line 205
    .line 206
    move-result v10

    .line 207
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 208
    .line 209
    .line 210
    move-result v14

    .line 211
    if-ge v14, v10, :cond_8

    .line 212
    .line 213
    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_8
    invoke-virtual {v4, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 218
    .line 219
    .line 220
    :cond_9
    :goto_1
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    if-lt v10, v11, :cond_d

    .line 225
    .line 226
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 231
    .line 232
    .line 233
    move-result v14

    .line 234
    invoke-static {v14, v10}, Lc1/F;->a(I[B)I

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    if-eq v10, v13, :cond_d

    .line 239
    .line 240
    const/16 v14, 0x1b9

    .line 241
    .line 242
    if-ne v10, v14, :cond_a

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_a
    ushr-int/lit8 v10, v10, 0x8

    .line 246
    .line 247
    if-eq v10, v12, :cond_b

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_b
    invoke-virtual {v4, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 254
    .line 255
    .line 256
    move-result v10

    .line 257
    const/4 v14, 0x2

    .line 258
    if-ge v10, v14, :cond_c

    .line 259
    .line 260
    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_c
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 269
    .line 270
    .line 271
    move-result v14

    .line 272
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 273
    .line 274
    .line 275
    move-result v15

    .line 276
    add-int/2addr v15, v10

    .line 277
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 278
    .line 279
    .line 280
    move-result v10

    .line 281
    invoke-virtual {v4, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 282
    .line 283
    .line 284
    goto :goto_1

    .line 285
    :cond_d
    :goto_2
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_e
    cmp-long v4, v8, v5

    .line 292
    .line 293
    if-eqz v4, :cond_f

    .line 294
    .line 295
    int-to-long v3, v3

    .line 296
    add-long/2addr v1, v3

    .line 297
    invoke-static {v8, v9, v1, v2}, Lv0/m;->underestimatedResult(JJ)Lv0/m;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    return-object v1

    .line 302
    :cond_f
    sget-object v1, Lv0/m;->d:Lv0/m;

    .line 303
    .line 304
    return-object v1
.end method
