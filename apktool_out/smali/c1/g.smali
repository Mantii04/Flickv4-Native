.class public final Lc1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/V;


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lc1/g;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lc1/g;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lc1/U;)Ljava/util/List;
    .locals 11

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lc1/g;->b(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lc1/g;->b:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 13
    .line 14
    iget-object p1, p1, Lc1/U;->e:[B

    .line 15
    .line 16
    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-lez p1, :cond_7

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    add-int/2addr v3, v2

    .line 38
    const/16 v2, 0x86

    .line 39
    .line 40
    if-ne p1, v2, :cond_6

    .line 41
    .line 42
    new-instance p1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    and-int/lit8 v1, v1, 0x1f

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    move v4, v2

    .line 55
    :goto_1
    if-ge v4, v1, :cond_5

    .line 56
    .line 57
    const/4 v5, 0x3

    .line 58
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    and-int/lit16 v7, v6, 0x80

    .line 67
    .line 68
    const/4 v8, 0x1

    .line 69
    if-eqz v7, :cond_1

    .line 70
    .line 71
    move v7, v8

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    move v7, v2

    .line 74
    :goto_2
    if-eqz v7, :cond_2

    .line 75
    .line 76
    and-int/lit8 v6, v6, 0x3f

    .line 77
    .line 78
    const-string v9, "application/cea-708"

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_2
    const-string v9, "application/cea-608"

    .line 82
    .line 83
    move v6, v8

    .line 84
    :goto_3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    int-to-byte v10, v10

    .line 89
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 90
    .line 91
    .line 92
    if-eqz v7, :cond_4

    .line 93
    .line 94
    and-int/lit8 v7, v10, 0x40

    .line 95
    .line 96
    if-eqz v7, :cond_3

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_3
    move v8, v2

    .line 100
    :goto_4
    invoke-static {v8}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildCea708InitializationData(Z)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    goto :goto_5

    .line 105
    :cond_4
    const/4 v7, 0x0

    .line 106
    :goto_5
    new-instance v8, Landroidx/media3/common/Format$Builder;

    .line 107
    .line 108
    invoke-direct {v8}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8, v9}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-virtual {v8, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setAccessibilityChannel(I)Landroidx/media3/common/Format$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v5, v7}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    add-int/lit8 v4, v4, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    move-object v1, p1

    .line 138
    :cond_6
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_7
    return-object v1
.end method

.method public final b(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lc1/g;->a:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lc1/X;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createPayloadReader(ILc1/U;)Lc1/X;
    .locals 4

    .line 1
    const-string v0, "video/mp2t"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq p1, v1, :cond_e

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-eq p1, v2, :cond_d

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    if-eq p1, v2, :cond_d

    .line 11
    .line 12
    const/16 v3, 0x15

    .line 13
    .line 14
    if-eq p1, v3, :cond_c

    .line 15
    .line 16
    const/16 v3, 0x1b

    .line 17
    .line 18
    if-eq p1, v3, :cond_a

    .line 19
    .line 20
    const/16 v2, 0x24

    .line 21
    .line 22
    if-eq p1, v2, :cond_9

    .line 23
    .line 24
    const/16 v2, 0x2d

    .line 25
    .line 26
    if-eq p1, v2, :cond_8

    .line 27
    .line 28
    const/16 v2, 0x59

    .line 29
    .line 30
    if-eq p1, v2, :cond_7

    .line 31
    .line 32
    const/16 v2, 0xac

    .line 33
    .line 34
    if-eq p1, v2, :cond_6

    .line 35
    .line 36
    const/16 v2, 0x101

    .line 37
    .line 38
    if-eq p1, v2, :cond_5

    .line 39
    .line 40
    const/16 v2, 0x8a

    .line 41
    .line 42
    if-eq p1, v2, :cond_4

    .line 43
    .line 44
    const/16 v2, 0x8b

    .line 45
    .line 46
    if-eq p1, v2, :cond_3

    .line 47
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    packed-switch p1, :pswitch_data_1

    .line 52
    .line 53
    .line 54
    packed-switch p1, :pswitch_data_2

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :pswitch_0
    const/16 p1, 0x10

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lc1/g;->b(I)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_0
    new-instance p1, Lc1/K;

    .line 70
    .line 71
    new-instance p2, Lc1/C;

    .line 72
    .line 73
    const-string v1, "application/x-scte35"

    .line 74
    .line 75
    invoke-direct {p2, v1, v0}, Lc1/C;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, p2}, Lc1/K;-><init>(Lc1/J;)V

    .line 79
    .line 80
    .line 81
    return-object p1

    .line 82
    :pswitch_1
    const/16 p1, 0x40

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lc1/g;->b(I)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_4

    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :pswitch_2
    new-instance p1, Lc1/D;

    .line 93
    .line 94
    new-instance v1, Lc1/b;

    .line 95
    .line 96
    iget-object v2, p2, Lc1/U;->b:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p2}, Lc1/U;->getRoleFlags()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-direct {v1, v2, p2, v0}, Lc1/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p1, v1}, Lc1/D;-><init>(Lc1/j;)V

    .line 106
    .line 107
    .line 108
    return-object p1

    .line 109
    :pswitch_3
    invoke-virtual {p0, v1}, Lc1/g;->b(I)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_1

    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_1
    new-instance p1, Lc1/D;

    .line 118
    .line 119
    new-instance v1, Lc1/v;

    .line 120
    .line 121
    iget-object v2, p2, Lc1/U;->b:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p2}, Lc1/U;->getRoleFlags()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    invoke-direct {v1, v2, p2, v0}, Lc1/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {p1, v1}, Lc1/D;-><init>(Lc1/j;)V

    .line 131
    .line 132
    .line 133
    return-object p1

    .line 134
    :pswitch_4
    new-instance p1, Lc1/D;

    .line 135
    .line 136
    new-instance v1, Lc1/o;

    .line 137
    .line 138
    new-instance v2, Lc1/Z;

    .line 139
    .line 140
    invoke-virtual {p0, p2}, Lc1/g;->a(Lc1/U;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-direct {v2, p2, v0}, Lc1/Z;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v2}, Lc1/o;-><init>(Lc1/Z;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {p1, v1}, Lc1/D;-><init>(Lc1/j;)V

    .line 151
    .line 152
    .line 153
    return-object p1

    .line 154
    :pswitch_5
    invoke-virtual {p0, v1}, Lc1/g;->b(I)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_2

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_2
    new-instance p1, Lc1/D;

    .line 163
    .line 164
    new-instance v1, Lc1/f;

    .line 165
    .line 166
    iget-object v2, p2, Lc1/U;->b:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p2}, Lc1/U;->getRoleFlags()I

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    const/4 v3, 0x0

    .line 173
    invoke-direct {v1, v3, v2, p2, v0}, Lc1/f;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {p1, v1}, Lc1/D;-><init>(Lc1/j;)V

    .line 177
    .line 178
    .line 179
    return-object p1

    .line 180
    :cond_3
    new-instance p1, Lc1/D;

    .line 181
    .line 182
    new-instance v1, Lc1/h;

    .line 183
    .line 184
    iget-object v2, p2, Lc1/U;->b:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {p2}, Lc1/U;->getRoleFlags()I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    const/16 v3, 0x1520

    .line 191
    .line 192
    invoke-direct {v1, v2, p2, v3, v0}, Lc1/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-direct {p1, v1}, Lc1/D;-><init>(Lc1/j;)V

    .line 196
    .line 197
    .line 198
    return-object p1

    .line 199
    :cond_4
    :pswitch_6
    new-instance p1, Lc1/D;

    .line 200
    .line 201
    new-instance v1, Lc1/h;

    .line 202
    .line 203
    iget-object v2, p2, Lc1/U;->b:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {p2}, Lc1/U;->getRoleFlags()I

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    const/16 v3, 0x1000

    .line 210
    .line 211
    invoke-direct {v1, v2, p2, v3, v0}, Lc1/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-direct {p1, v1}, Lc1/D;-><init>(Lc1/j;)V

    .line 215
    .line 216
    .line 217
    return-object p1

    .line 218
    :cond_5
    new-instance p1, Lc1/K;

    .line 219
    .line 220
    new-instance p2, Lc1/C;

    .line 221
    .line 222
    const-string v1, "application/vnd.dvb.ait"

    .line 223
    .line 224
    invoke-direct {p2, v1, v0}, Lc1/C;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-direct {p1, p2}, Lc1/K;-><init>(Lc1/J;)V

    .line 228
    .line 229
    .line 230
    return-object p1

    .line 231
    :cond_6
    new-instance p1, Lc1/D;

    .line 232
    .line 233
    new-instance v1, Lc1/d;

    .line 234
    .line 235
    iget-object v2, p2, Lc1/U;->b:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {p2}, Lc1/U;->getRoleFlags()I

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    invoke-direct {v1, v2, p2, v0}, Lc1/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-direct {p1, v1}, Lc1/D;-><init>(Lc1/j;)V

    .line 245
    .line 246
    .line 247
    return-object p1

    .line 248
    :cond_7
    new-instance p1, Lc1/D;

    .line 249
    .line 250
    new-instance v1, Lc1/i;

    .line 251
    .line 252
    iget-object p2, p2, Lc1/U;->d:Ljava/util/List;

    .line 253
    .line 254
    invoke-direct {v1, p2, v0}, Lc1/i;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-direct {p1, v1}, Lc1/D;-><init>(Lc1/j;)V

    .line 258
    .line 259
    .line 260
    return-object p1

    .line 261
    :cond_8
    new-instance p1, Lc1/D;

    .line 262
    .line 263
    new-instance p2, Lc1/x;

    .line 264
    .line 265
    invoke-direct {p2, v0}, Lc1/x;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-direct {p1, p2}, Lc1/D;-><init>(Lc1/j;)V

    .line 269
    .line 270
    .line 271
    return-object p1

    .line 272
    :cond_9
    new-instance p1, Lc1/D;

    .line 273
    .line 274
    new-instance v1, Lc1/t;

    .line 275
    .line 276
    new-instance v2, Lc1/L;

    .line 277
    .line 278
    invoke-virtual {p0, p2}, Lc1/g;->a(Lc1/U;)Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    invoke-direct {v2, p2, v0}, Lc1/L;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-direct {v1, v2, v0}, Lc1/t;-><init>(Lc1/L;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-direct {p1, v1}, Lc1/D;-><init>(Lc1/j;)V

    .line 289
    .line 290
    .line 291
    return-object p1

    .line 292
    :cond_a
    invoke-virtual {p0, v2}, Lc1/g;->b(I)Z

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    if-eqz p1, :cond_b

    .line 297
    .line 298
    :goto_0
    const/4 p1, 0x0

    .line 299
    return-object p1

    .line 300
    :cond_b
    new-instance p1, Lc1/D;

    .line 301
    .line 302
    new-instance v1, Lc1/r;

    .line 303
    .line 304
    new-instance v2, Lc1/L;

    .line 305
    .line 306
    invoke-virtual {p0, p2}, Lc1/g;->a(Lc1/U;)Ljava/util/List;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    invoke-direct {v2, p2, v0}, Lc1/L;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    const/4 p2, 0x1

    .line 314
    invoke-virtual {p0, p2}, Lc1/g;->b(I)Z

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    const/16 v3, 0x8

    .line 319
    .line 320
    invoke-virtual {p0, v3}, Lc1/g;->b(I)Z

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    invoke-direct {v1, v2, p2, v3, v0}, Lc1/r;-><init>(Lc1/L;ZZLjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-direct {p1, v1}, Lc1/D;-><init>(Lc1/j;)V

    .line 328
    .line 329
    .line 330
    return-object p1

    .line 331
    :cond_c
    new-instance p1, Lc1/D;

    .line 332
    .line 333
    new-instance p2, Lc1/u;

    .line 334
    .line 335
    invoke-direct {p2, v0}, Lc1/u;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-direct {p1, p2}, Lc1/D;-><init>(Lc1/j;)V

    .line 339
    .line 340
    .line 341
    return-object p1

    .line 342
    :cond_d
    new-instance p1, Lc1/D;

    .line 343
    .line 344
    new-instance v1, Lc1/w;

    .line 345
    .line 346
    iget-object v2, p2, Lc1/U;->b:Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {p2}, Lc1/U;->getRoleFlags()I

    .line 349
    .line 350
    .line 351
    move-result p2

    .line 352
    invoke-direct {v1, v2, p2, v0}, Lc1/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-direct {p1, v1}, Lc1/D;-><init>(Lc1/j;)V

    .line 356
    .line 357
    .line 358
    return-object p1

    .line 359
    :cond_e
    :pswitch_7
    new-instance p1, Lc1/D;

    .line 360
    .line 361
    new-instance v1, Lc1/l;

    .line 362
    .line 363
    new-instance v2, Lc1/Z;

    .line 364
    .line 365
    invoke-virtual {p0, p2}, Lc1/g;->a(Lc1/U;)Ljava/util/List;

    .line 366
    .line 367
    .line 368
    move-result-object p2

    .line 369
    invoke-direct {v2, p2, v0}, Lc1/Z;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-direct {v1, v2, v0}, Lc1/l;-><init>(Lc1/Z;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-direct {p1, v1}, Lc1/D;-><init>(Lc1/j;)V

    .line 376
    .line 377
    .line 378
    return-object p1

    .line 379
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :pswitch_data_2
    .packed-switch 0x86
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
