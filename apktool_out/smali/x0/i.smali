.class public final Lx0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/a;


# instance fields
.field public final a:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx0/i;->a:Landroidx/media3/common/Format;

    .line 5
    .line 6
    return-void
.end method

.method public static parseFrom(ILandroidx/media3/common/util/ParsableByteArray;)Lx0/a;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "StreamFormatChunk"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p0, v0, :cond_1

    .line 6
    .line 7
    const/4 p0, 0x4

    .line 8
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    sparse-switch p0, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    move-object p1, v2

    .line 30
    goto :goto_0

    .line 31
    :sswitch_0
    const-string p1, "video/mjpeg"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :sswitch_1
    const-string p1, "video/mp43"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :sswitch_2
    const-string p1, "video/mp42"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :sswitch_3
    const-string p1, "video/avc"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :sswitch_4
    const-string p1, "video/mp4v-es"

    .line 44
    .line 45
    :goto_0
    if-nez p1, :cond_0

    .line 46
    .line 47
    const-string p1, "Ignoring track with unsupported compression "

    .line 48
    .line 49
    invoke-static {p0, p1, v1}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :cond_0
    new-instance p0, Landroidx/media3/common/Format$Builder;

    .line 54
    .line 55
    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 67
    .line 68
    .line 69
    new-instance p1, Lx0/i;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {p1, p0}, Lx0/i;-><init>(Landroidx/media3/common/Format;)V

    .line 76
    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_1
    const/4 v0, 0x1

    .line 80
    if-ne p0, v0, :cond_b

    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    const-string v3, "audio/raw"

    .line 87
    .line 88
    const-string v4, "audio/mp4a-latm"

    .line 89
    .line 90
    if-eq p0, v0, :cond_6

    .line 91
    .line 92
    const/16 v0, 0x55

    .line 93
    .line 94
    if-eq p0, v0, :cond_5

    .line 95
    .line 96
    const/16 v0, 0xff

    .line 97
    .line 98
    if-eq p0, v0, :cond_4

    .line 99
    .line 100
    const/16 v0, 0x2000

    .line 101
    .line 102
    if-eq p0, v0, :cond_3

    .line 103
    .line 104
    const/16 v0, 0x2001

    .line 105
    .line 106
    if-eq p0, v0, :cond_2

    .line 107
    .line 108
    move-object v0, v2

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    const-string v0, "audio/vnd.dts"

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    const-string v0, "audio/ac3"

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    move-object v0, v4

    .line 117
    goto :goto_1

    .line 118
    :cond_5
    const-string v0, "audio/mpeg"

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    move-object v0, v3

    .line 122
    :goto_1
    if-nez v0, :cond_7

    .line 123
    .line 124
    const-string p1, "Ignoring track with unsupported format tag "

    .line 125
    .line 126
    invoke-static {p0, p1, v1}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-object v2

    .line 130
    :cond_7
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    const/4 v2, 0x6

    .line 139
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-static {v2}, Landroidx/media3/common/util/Util;->getPcmEncoding(I)I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    const/4 v6, 0x0

    .line 155
    if-lez v5, :cond_8

    .line 156
    .line 157
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    goto :goto_2

    .line 162
    :cond_8
    move v5, v6

    .line 163
    :goto_2
    new-instance v7, Landroidx/media3/common/Format$Builder;

    .line 164
    .line 165
    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-virtual {v8, p0}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    if-eqz p0, :cond_9

    .line 184
    .line 185
    if-eqz v2, :cond_9

    .line 186
    .line 187
    invoke-virtual {v7, v2}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    .line 188
    .line 189
    .line 190
    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    if-eqz p0, :cond_a

    .line 195
    .line 196
    if-lez v5, :cond_a

    .line 197
    .line 198
    new-array p0, v5, [B

    .line 199
    .line 200
    invoke-virtual {p1, p0, v6, v5}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 201
    .line 202
    .line 203
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-virtual {v7, p0}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 208
    .line 209
    .line 210
    :cond_a
    new-instance p0, Lx0/i;

    .line 211
    .line 212
    invoke-virtual {v7}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-direct {p0, p1}, Lx0/i;-><init>(Landroidx/media3/common/Format;)V

    .line 217
    .line 218
    .line 219
    return-object p0

    .line 220
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v0, "Ignoring strf box for unsupported track type: "

    .line 223
    .line 224
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-static {p0}, Landroidx/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-static {v1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    return-object v2

    .line 242
    nop

    .line 243
    :sswitch_data_0
    .sparse-switch
        0x30355844 -> :sswitch_4
        0x31435641 -> :sswitch_3
        0x31637661 -> :sswitch_3
        0x3234504d -> :sswitch_2
        0x3334504d -> :sswitch_1
        0x34363248 -> :sswitch_3
        0x34504d46 -> :sswitch_4
        0x44495633 -> :sswitch_4
        0x44495658 -> :sswitch_4
        0x47504a4d -> :sswitch_0
        0x58564944 -> :sswitch_4
        0x64697678 -> :sswitch_4
        0x67706a6d -> :sswitch_0
        0x78766964 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1
    const v0, 0x66727473

    .line 2
    .line 3
    .line 4
    return v0
.end method
