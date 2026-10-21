.class public final Landroidx/media3/common/audio/GainProcessor;
.super Landroidx/media3/common/audio/BaseAudioProcessor;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/audio/GainProcessor$GainProvider;
    }
.end annotation


# instance fields
.field private final gainProvider:Landroidx/media3/common/audio/GainProcessor$GainProvider;

.field private readFrames:J


# direct methods
.method public constructor <init>(Landroidx/media3/common/audio/GainProcessor$GainProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroidx/media3/common/audio/GainProcessor$GainProvider;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/media3/common/audio/GainProcessor;->gainProvider:Landroidx/media3/common/audio/GainProcessor$GainProvider;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 8
    .line 9
    sget-object v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/common/audio/GainProcessor;->gainProvider:Landroidx/media3/common/audio/GainProcessor$GainProvider;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 20
    .line 21
    iget v1, v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    invoke-interface {v0, v2, v3, v1}, Landroidx/media3/common/audio/GainProcessor$GainProvider;->isUnityUntil(JI)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const-wide/high16 v2, -0x8000000000000000L

    .line 30
    .line 31
    cmp-long v0, v0, v2

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method public onConfigure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 1
    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    .line 11
    .line 12
    const-string v1, "Invalid PCM encoding. Expected 16 bit PCM or float PCM."

    .line 13
    .line 14
    invoke-direct {v0, v1, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Ljava/lang/String;Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :cond_1
    :goto_0
    return-object p1
.end method

.method public onFlush(Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;->positionOffsetUs:J

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 4
    .line 5
    iget p1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Util;->durationUsToSampleCount(JI)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Landroidx/media3/common/audio/GainProcessor;->readFrames:J

    .line 12
    .line 13
    return-void
.end method

.method public onReset()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/media3/common/audio/GainProcessor;->readFrames:J

    .line 4
    .line 5
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 2
    .line 3
    sget-object v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    xor-int/2addr v0, v1

    .line 11
    const-string v2, "Audio processor must be configured and flushed before calling queueInput()."

    .line 12
    .line 13
    invoke-static {v0, v2}, LP3/v;->checkState(ZLjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v2, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 28
    .line 29
    iget v2, v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    .line 30
    .line 31
    rem-int/2addr v0, v2

    .line 32
    const/4 v2, 0x0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    move v0, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v0, v2

    .line 38
    :goto_0
    const-string v3, "Queued an incomplete frame."

    .line 39
    .line 40
    invoke-static {v0, v3}, LP3/v;->checkArgument(ZLjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p0, v0}, Landroidx/media3/common/audio/BaseAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_8

    .line 56
    .line 57
    iget-object v3, p0, Landroidx/media3/common/audio/GainProcessor;->gainProvider:Landroidx/media3/common/audio/GainProcessor$GainProvider;

    .line 58
    .line 59
    iget-wide v4, p0, Landroidx/media3/common/audio/GainProcessor;->readFrames:J

    .line 60
    .line 61
    iget-object v6, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 62
    .line 63
    iget v6, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 64
    .line 65
    invoke-interface {v3, v4, v5, v6}, Landroidx/media3/common/audio/GainProcessor$GainProvider;->getGainFactorAtSamplePosition(JI)F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const/high16 v4, 0x3f800000    # 1.0f

    .line 70
    .line 71
    cmpl-float v4, v3, v4

    .line 72
    .line 73
    if-nez v4, :cond_4

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    iget-object v4, p0, Landroidx/media3/common/audio/GainProcessor;->gainProvider:Landroidx/media3/common/audio/GainProcessor$GainProvider;

    .line 80
    .line 81
    iget-wide v5, p0, Landroidx/media3/common/audio/GainProcessor;->readFrames:J

    .line 82
    .line 83
    iget-object v7, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 84
    .line 85
    iget v7, v7, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 86
    .line 87
    invoke-interface {v4, v5, v6, v7}, Landroidx/media3/common/audio/GainProcessor$GainProvider;->isUnityUntil(JI)J

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    cmp-long v6, v4, v6

    .line 97
    .line 98
    if-eqz v6, :cond_2

    .line 99
    .line 100
    move v6, v1

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    move v6, v2

    .line 103
    :goto_2
    const-string v7, "Expected a valid end boundary for unity region."

    .line 104
    .line 105
    invoke-static {v6, v7}, LP3/v;->checkState(ZLjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    const-wide/high16 v6, -0x8000000000000000L

    .line 109
    .line 110
    cmp-long v6, v4, v6

    .line 111
    .line 112
    if-eqz v6, :cond_3

    .line 113
    .line 114
    iget-wide v6, p0, Landroidx/media3/common/audio/GainProcessor;->readFrames:J

    .line 115
    .line 116
    sub-long/2addr v4, v6

    .line 117
    iget-object v6, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 118
    .line 119
    iget v6, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    .line 120
    .line 121
    int-to-long v6, v6

    .line 122
    mul-long/2addr v4, v6

    .line 123
    long-to-int v4, v4

    .line 124
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    add-int/2addr v5, v4

    .line 129
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 134
    .line 135
    .line 136
    :cond_3
    iget-wide v4, p0, Landroidx/media3/common/audio/GainProcessor;->readFrames:J

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    iget-object v7, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 143
    .line 144
    iget v7, v7, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    .line 145
    .line 146
    div-int/2addr v6, v7

    .line 147
    int-to-long v6, v6

    .line 148
    add-long/2addr v4, v6

    .line 149
    iput-wide v4, p0, Landroidx/media3/common/audio/GainProcessor;->readFrames:J

    .line 150
    .line 151
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_4
    move v4, v2

    .line 159
    :goto_3
    iget-object v5, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 160
    .line 161
    iget v6, v5, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    .line 162
    .line 163
    if-ge v4, v6, :cond_7

    .line 164
    .line 165
    iget v5, v5, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 166
    .line 167
    const/4 v6, 0x2

    .line 168
    if-eq v5, v6, :cond_6

    .line 169
    .line 170
    const/4 v6, 0x4

    .line 171
    if-ne v5, v6, :cond_5

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    mul-float/2addr v5, v3

    .line 178
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 179
    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 183
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v1, "Unexpected PCM encoding: "

    .line 187
    .line 188
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 192
    .line 193
    iget v1, v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p1

    .line 206
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    int-to-float v5, v5

    .line 211
    mul-float/2addr v5, v3

    .line 212
    float-to-int v5, v5

    .line 213
    int-to-short v5, v5

    .line 214
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 215
    .line 216
    .line 217
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_7
    iget-wide v3, p0, Landroidx/media3/common/audio/GainProcessor;->readFrames:J

    .line 221
    .line 222
    const-wide/16 v5, 0x1

    .line 223
    .line 224
    add-long/2addr v3, v5

    .line 225
    iput-wide v3, p0, Landroidx/media3/common/audio/GainProcessor;->readFrames:J

    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :cond_8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 230
    .line 231
    .line 232
    return-void
.end method
