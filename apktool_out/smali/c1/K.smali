.class public final Lc1/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/X;


# instance fields
.field public final a:Lc1/J;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lc1/J;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc1/K;->a:Lc1/J;

    .line 5
    .line 6
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 7
    .line 8
    const/16 v0, 0x20

    .line 9
    .line 10
    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lc1/K;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p2, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    move p2, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p2, v1

    .line 9
    :goto_0
    const/4 v2, -0x1

    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    add-int/2addr v4, v3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v4, v2

    .line 23
    :goto_1
    iget-boolean v3, p0, Lc1/K;->f:Z

    .line 24
    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_2
    iput-boolean v1, p0, Lc1/K;->f:Z

    .line 32
    .line 33
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 34
    .line 35
    .line 36
    iput v1, p0, Lc1/K;->d:I

    .line 37
    .line 38
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-lez p2, :cond_9

    .line 43
    .line 44
    iget p2, p0, Lc1/K;->d:I

    .line 45
    .line 46
    const/4 v3, 0x3

    .line 47
    iget-object v4, p0, Lc1/K;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 48
    .line 49
    if-ge p2, v3, :cond_6

    .line 50
    .line 51
    if-nez p2, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    sub-int/2addr v5, v0

    .line 62
    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 63
    .line 64
    .line 65
    const/16 v5, 0xff

    .line 66
    .line 67
    if-ne p2, v5, :cond_4

    .line 68
    .line 69
    iput-boolean v0, p0, Lc1/K;->f:Z

    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    iget v5, p0, Lc1/K;->d:I

    .line 77
    .line 78
    rsub-int/lit8 v5, v5, 0x3

    .line 79
    .line 80
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    iget v6, p0, Lc1/K;->d:I

    .line 89
    .line 90
    invoke-virtual {p1, v5, v6, p2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 91
    .line 92
    .line 93
    iget v5, p0, Lc1/K;->d:I

    .line 94
    .line 95
    add-int/2addr v5, p2

    .line 96
    iput v5, p0, Lc1/K;->d:I

    .line 97
    .line 98
    if-ne v5, v3, :cond_3

    .line 99
    .line 100
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    and-int/lit16 v6, p2, 0x80

    .line 118
    .line 119
    if-eqz v6, :cond_5

    .line 120
    .line 121
    move v6, v0

    .line 122
    goto :goto_3

    .line 123
    :cond_5
    move v6, v1

    .line 124
    :goto_3
    iput-boolean v6, p0, Lc1/K;->e:Z

    .line 125
    .line 126
    and-int/lit8 p2, p2, 0xf

    .line 127
    .line 128
    shl-int/lit8 p2, p2, 0x8

    .line 129
    .line 130
    or-int/2addr p2, v5

    .line 131
    add-int/2addr p2, v3

    .line 132
    iput p2, p0, Lc1/K;->c:I

    .line 133
    .line 134
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    iget v3, p0, Lc1/K;->c:I

    .line 139
    .line 140
    if-ge p2, v3, :cond_3

    .line 141
    .line 142
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    mul-int/lit8 p2, p2, 0x2

    .line 147
    .line 148
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    const/16 v3, 0x1002

    .line 153
    .line 154
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    invoke-virtual {v4, p2}, Landroidx/media3/common/util/ParsableByteArray;->ensureCapacity(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_6
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    iget v3, p0, Lc1/K;->c:I

    .line 167
    .line 168
    iget v5, p0, Lc1/K;->d:I

    .line 169
    .line 170
    sub-int/2addr v3, v5

    .line 171
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    iget v5, p0, Lc1/K;->d:I

    .line 180
    .line 181
    invoke-virtual {p1, v3, v5, p2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 182
    .line 183
    .line 184
    iget v3, p0, Lc1/K;->d:I

    .line 185
    .line 186
    add-int/2addr v3, p2

    .line 187
    iput v3, p0, Lc1/K;->d:I

    .line 188
    .line 189
    iget p2, p0, Lc1/K;->c:I

    .line 190
    .line 191
    if-ne v3, p2, :cond_3

    .line 192
    .line 193
    iget-boolean v3, p0, Lc1/K;->e:Z

    .line 194
    .line 195
    if-eqz v3, :cond_8

    .line 196
    .line 197
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    iget v3, p0, Lc1/K;->c:I

    .line 202
    .line 203
    invoke-static {p2, v1, v3, v2}, Landroidx/media3/common/util/Util;->crc32([BIII)I

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    if-eqz p2, :cond_7

    .line 208
    .line 209
    iput-boolean v0, p0, Lc1/K;->f:Z

    .line 210
    .line 211
    return-void

    .line 212
    :cond_7
    iget p2, p0, Lc1/K;->c:I

    .line 213
    .line 214
    add-int/lit8 p2, p2, -0x4

    .line 215
    .line 216
    invoke-virtual {v4, p2}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 217
    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_8
    invoke-virtual {v4, p2}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 221
    .line 222
    .line 223
    :goto_4
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 224
    .line 225
    .line 226
    iget-object p2, p0, Lc1/K;->a:Lc1/J;

    .line 227
    .line 228
    invoke-interface {p2, v4}, Lc1/J;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 229
    .line 230
    .line 231
    iput v1, p0, Lc1/K;->d:I

    .line 232
    .line 233
    goto/16 :goto_2

    .line 234
    .line 235
    :cond_9
    :goto_5
    return-void
.end method

.method public init(Landroidx/media3/common/util/TimestampAdjuster;Lv0/F;Lc1/W;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc1/K;->a:Lc1/J;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lc1/J;->init(Landroidx/media3/common/util/TimestampAdjuster;Lv0/F;Lc1/W;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lc1/K;->f:Z

    .line 8
    .line 9
    return-void
.end method

.method public seek()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc1/K;->f:Z

    .line 3
    .line 4
    return-void
.end method
