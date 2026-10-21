.class public final LB0/e;
.super LB0/d;
.source "SourceFile"


# instance fields
.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Lv0/r0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, LB0/d;-><init>(Lv0/r0;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    sget-object v0, Ls0/v;->a:[B

    .line 7
    .line 8
    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, LB0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, LB0/e;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public parseHeader(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    shr-int/lit8 v0, p1, 0x4

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0xf

    .line 8
    .line 9
    and-int/lit8 p1, p1, 0xf

    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    if-ne p1, v1, :cond_1

    .line 13
    .line 14
    iput v0, p0, LB0/e;->g:I

    .line 15
    .line 16
    const/4 p1, 0x5

    .line 17
    if-eq v0, p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_1
    new-instance v0, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    .line 24
    .line 25
    const-string v1, "Video format not supported: "

    .line 26
    .line 27
    invoke-static {p1, v1}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public parsePayload(Landroidx/media3/common/util/ParsableByteArray;J)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt24()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-long v1, v1

    .line 10
    const-wide/16 v3, 0x3e8

    .line 11
    .line 12
    mul-long/2addr v1, v3

    .line 13
    add-long v4, v1, p2

    .line 14
    .line 15
    iget-object p2, p0, LB0/d;->a:Lv0/r0;

    .line 16
    .line 17
    const/4 p3, 0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-boolean v2, p0, LB0/e;->e:Z

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    new-array v2, v2, [B

    .line 32
    .line 33
    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {p1, v2, v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lv0/h;->parse(Landroidx/media3/common/util/ParsableByteArray;)Lv0/h;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget v0, p1, Lv0/h;->b:I

    .line 52
    .line 53
    iput v0, p0, LB0/e;->d:I

    .line 54
    .line 55
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 56
    .line 57
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "video/x-flv"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v2, "video/avc"

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v2, p1, Lv0/h;->l:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget v2, p1, Lv0/h;->c:I

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget v2, p1, Lv0/h;->d:I

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget v2, p1, Lv0/h;->k:F

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object p1, p1, Lv0/h;->a:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {p2, p1}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 107
    .line 108
    .line 109
    iput-boolean p3, p0, LB0/e;->e:Z

    .line 110
    .line 111
    return v1

    .line 112
    :cond_0
    if-ne v0, p3, :cond_4

    .line 113
    .line 114
    iget-boolean v0, p0, LB0/e;->e:Z

    .line 115
    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    iget v0, p0, LB0/e;->g:I

    .line 119
    .line 120
    if-ne v0, p3, :cond_1

    .line 121
    .line 122
    move v6, p3

    .line 123
    goto :goto_0

    .line 124
    :cond_1
    move v6, v1

    .line 125
    :goto_0
    iget-boolean v0, p0, LB0/e;->f:Z

    .line 126
    .line 127
    if-nez v0, :cond_2

    .line 128
    .line 129
    if-nez v6, :cond_2

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    iget-object v0, p0, LB0/e;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    aput-byte v1, v2, v1

    .line 139
    .line 140
    aput-byte v1, v2, p3

    .line 141
    .line 142
    const/4 v3, 0x2

    .line 143
    aput-byte v1, v2, v3

    .line 144
    .line 145
    iget v2, p0, LB0/e;->d:I

    .line 146
    .line 147
    const/4 v3, 0x4

    .line 148
    rsub-int/lit8 v2, v2, 0x4

    .line 149
    .line 150
    move v7, v1

    .line 151
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-lez v8, :cond_3

    .line 156
    .line 157
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    iget v9, p0, LB0/e;->d:I

    .line 162
    .line 163
    invoke-virtual {p1, v8, v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    iget-object v9, p0, LB0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 174
    .line 175
    invoke-virtual {v9, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 176
    .line 177
    .line 178
    invoke-interface {p2, v9, v3}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 179
    .line 180
    .line 181
    add-int/lit8 v7, v7, 0x4

    .line 182
    .line 183
    invoke-interface {p2, p1, v8}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 184
    .line 185
    .line 186
    add-int/2addr v7, v8

    .line 187
    goto :goto_1

    .line 188
    :cond_3
    const/4 v9, 0x0

    .line 189
    iget-object v3, p0, LB0/d;->a:Lv0/r0;

    .line 190
    .line 191
    const/4 v8, 0x0

    .line 192
    invoke-interface/range {v3 .. v9}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 193
    .line 194
    .line 195
    iput-boolean p3, p0, LB0/e;->f:Z

    .line 196
    .line 197
    return p3

    .line 198
    :cond_4
    :goto_2
    return v1
.end method
