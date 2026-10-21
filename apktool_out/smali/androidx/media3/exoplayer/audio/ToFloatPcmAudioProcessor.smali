.class public final Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;
.super Landroidx/media3/common/audio/BaseAudioProcessor;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final FLOAT_NAN_AS_INT:I

.field private static final PCM_32_BIT_INT_TO_PCM_32_BIT_FLOAT_FACTOR:D = 4.656612875245797E-10


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->FLOAT_NAN_AS_INT:I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static writePcm32BitFloat(ILjava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    const-wide v0, 0x3e00000000200000L    # 4.656612875245797E-10

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    int-to-double v2, p0

    .line 7
    mul-double/2addr v2, v0

    .line 8
    double-to-float p0, v2

    .line 9
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    sget v0, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->FLOAT_NAN_AS_INT:I

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    :cond_0
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public onConfigure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 1
    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/Util;->isEncodingHighResolutionPcm(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_1
    :goto_0
    const/4 v1, 0x4

    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 23
    .line 24
    iget v2, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 25
    .line 26
    iget p1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    .line 27
    .line 28
    invoke-direct {v0, v2, p1, v1}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_2
    sget-object p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 33
    .line 34
    return-object p1
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int v2, v1, v0

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 12
    .line 13
    iget v3, v3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    if-eq v3, v4, :cond_4

    .line 17
    .line 18
    const/high16 v4, 0x50000000

    .line 19
    .line 20
    if-eq v3, v4, :cond_3

    .line 21
    .line 22
    const/high16 v4, 0x60000000

    .line 23
    .line 24
    if-eq v3, v4, :cond_2

    .line 25
    .line 26
    const/16 v4, 0x15

    .line 27
    .line 28
    if-eq v3, v4, :cond_1

    .line 29
    .line 30
    const/16 v4, 0x16

    .line 31
    .line 32
    if-ne v3, v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :goto_0
    if-ge v0, v1, :cond_5

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    and-int/lit16 v3, v3, 0xff

    .line 45
    .line 46
    add-int/lit8 v4, v0, 0x1

    .line 47
    .line 48
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    and-int/lit16 v4, v4, 0xff

    .line 53
    .line 54
    shl-int/lit8 v4, v4, 0x8

    .line 55
    .line 56
    or-int/2addr v3, v4

    .line 57
    add-int/lit8 v4, v0, 0x2

    .line 58
    .line 59
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    and-int/lit16 v4, v4, 0xff

    .line 64
    .line 65
    shl-int/lit8 v4, v4, 0x10

    .line 66
    .line 67
    or-int/2addr v3, v4

    .line 68
    add-int/lit8 v4, v0, 0x3

    .line 69
    .line 70
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    and-int/lit16 v4, v4, 0xff

    .line 75
    .line 76
    shl-int/lit8 v4, v4, 0x18

    .line 77
    .line 78
    or-int/2addr v3, v4

    .line 79
    invoke-static {v3, v2}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v0, v0, 0x4

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_1
    div-int/lit8 v2, v2, 0x3

    .line 92
    .line 93
    mul-int/lit8 v2, v2, 0x4

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    :goto_1
    if-ge v0, v1, :cond_5

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    and-int/lit16 v3, v3, 0xff

    .line 106
    .line 107
    shl-int/lit8 v3, v3, 0x8

    .line 108
    .line 109
    add-int/lit8 v4, v0, 0x1

    .line 110
    .line 111
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    and-int/lit16 v4, v4, 0xff

    .line 116
    .line 117
    shl-int/lit8 v4, v4, 0x10

    .line 118
    .line 119
    or-int/2addr v3, v4

    .line 120
    add-int/lit8 v4, v0, 0x2

    .line 121
    .line 122
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    and-int/lit16 v4, v4, 0xff

    .line 127
    .line 128
    shl-int/lit8 v4, v4, 0x18

    .line 129
    .line 130
    or-int/2addr v3, v4

    .line 131
    invoke-static {v3, v2}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v0, v0, 0x3

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    :goto_2
    if-ge v0, v1, :cond_5

    .line 142
    .line 143
    add-int/lit8 v3, v0, 0x3

    .line 144
    .line 145
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    and-int/lit16 v3, v3, 0xff

    .line 150
    .line 151
    add-int/lit8 v4, v0, 0x2

    .line 152
    .line 153
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    and-int/lit16 v4, v4, 0xff

    .line 158
    .line 159
    shl-int/lit8 v4, v4, 0x8

    .line 160
    .line 161
    or-int/2addr v3, v4

    .line 162
    add-int/lit8 v4, v0, 0x1

    .line 163
    .line 164
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    and-int/lit16 v4, v4, 0xff

    .line 169
    .line 170
    shl-int/lit8 v4, v4, 0x10

    .line 171
    .line 172
    or-int/2addr v3, v4

    .line 173
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    and-int/lit16 v4, v4, 0xff

    .line 178
    .line 179
    shl-int/lit8 v4, v4, 0x18

    .line 180
    .line 181
    or-int/2addr v3, v4

    .line 182
    invoke-static {v3, v2}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    .line 183
    .line 184
    .line 185
    add-int/lit8 v0, v0, 0x4

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_3
    div-int/lit8 v2, v2, 0x3

    .line 189
    .line 190
    mul-int/lit8 v2, v2, 0x4

    .line 191
    .line 192
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    :goto_3
    if-ge v0, v1, :cond_5

    .line 197
    .line 198
    add-int/lit8 v3, v0, 0x2

    .line 199
    .line 200
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    and-int/lit16 v3, v3, 0xff

    .line 205
    .line 206
    shl-int/lit8 v3, v3, 0x8

    .line 207
    .line 208
    add-int/lit8 v4, v0, 0x1

    .line 209
    .line 210
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    and-int/lit16 v4, v4, 0xff

    .line 215
    .line 216
    shl-int/lit8 v4, v4, 0x10

    .line 217
    .line 218
    or-int/2addr v3, v4

    .line 219
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    and-int/lit16 v4, v4, 0xff

    .line 224
    .line 225
    shl-int/lit8 v4, v4, 0x18

    .line 226
    .line 227
    or-int/2addr v3, v4

    .line 228
    invoke-static {v3, v2}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    .line 229
    .line 230
    .line 231
    add-int/lit8 v0, v0, 0x3

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_4
    mul-int/2addr v2, v4

    .line 235
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/BaseAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    :goto_4
    if-ge v0, v1, :cond_5

    .line 240
    .line 241
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    and-int/lit16 v3, v3, 0xff

    .line 246
    .line 247
    shl-int/lit8 v3, v3, 0x10

    .line 248
    .line 249
    add-int/lit8 v4, v0, 0x1

    .line 250
    .line 251
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    and-int/lit16 v4, v4, 0xff

    .line 256
    .line 257
    shl-int/lit8 v4, v4, 0x18

    .line 258
    .line 259
    or-int/2addr v3, v4

    .line 260
    invoke-static {v3, v2}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->writePcm32BitFloat(ILjava/nio/ByteBuffer;)V

    .line 261
    .line 262
    .line 263
    add-int/lit8 v0, v0, 0x2

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_5
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 274
    .line 275
    .line 276
    return-void
.end method
