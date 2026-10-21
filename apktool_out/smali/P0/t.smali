.class public final LP0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv0/r0;

.field public final b:LP0/L;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public d:LP0/M;

.field public e:LP0/o;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:Landroidx/media3/common/Format;

.field public final k:Landroidx/media3/common/util/ParsableByteArray;

.field public final l:Landroidx/media3/common/util/ParsableByteArray;

.field public m:Z


# direct methods
.method public constructor <init>(Lv0/r0;LP0/M;LP0/o;Landroidx/media3/common/Format;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LP0/t;->a:Lv0/r0;

    .line 5
    .line 6
    iput-object p2, p0, LP0/t;->d:LP0/M;

    .line 7
    .line 8
    iput-object p3, p0, LP0/t;->e:LP0/o;

    .line 9
    .line 10
    iput-object p4, p0, LP0/t;->j:Landroidx/media3/common/Format;

    .line 11
    .line 12
    new-instance p1, LP0/L;

    .line 13
    .line 14
    invoke-direct {p1}, LP0/L;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, LP0/t;->b:LP0/L;

    .line 18
    .line 19
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 20
    .line 21
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, LP0/t;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 25
    .line 26
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 27
    .line 28
    const/4 p4, 0x1

    .line 29
    invoke-direct {p1, p4}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, LP0/t;->k:Landroidx/media3/common/util/ParsableByteArray;

    .line 33
    .line 34
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 35
    .line 36
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, LP0/t;->l:Landroidx/media3/common/util/ParsableByteArray;

    .line 40
    .line 41
    invoke-virtual {p0, p2, p3}, LP0/t;->reset(LP0/M;LP0/o;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public getCurrentSampleFlags()I
    .locals 2

    .line 1
    iget-boolean v0, p0, LP0/t;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LP0/t;->d:LP0/M;

    .line 6
    .line 7
    iget-object v0, v0, LP0/M;->g:[I

    .line 8
    .line 9
    iget v1, p0, LP0/t;->f:I

    .line 10
    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, LP0/t;->b:LP0/L;

    .line 15
    .line 16
    iget-object v0, v0, LP0/L;->j:[Z

    .line 17
    .line 18
    iget v1, p0, LP0/t;->f:I

    .line 19
    .line 20
    aget-boolean v0, v0, v1

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-virtual {p0}, LP0/t;->getEncryptionBoxIfEncrypted()LP0/K;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/high16 v1, 0x40000000    # 2.0f

    .line 34
    .line 35
    or-int/2addr v0, v1

    .line 36
    :cond_2
    return v0
.end method

.method public getCurrentSampleOffset()J
    .locals 3

    .line 1
    iget-boolean v0, p0, LP0/t;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LP0/t;->d:LP0/M;

    .line 6
    .line 7
    iget-object v0, v0, LP0/M;->c:[J

    .line 8
    .line 9
    iget v1, p0, LP0/t;->f:I

    .line 10
    .line 11
    aget-wide v1, v0, v1

    .line 12
    .line 13
    return-wide v1

    .line 14
    :cond_0
    iget-object v0, p0, LP0/t;->b:LP0/L;

    .line 15
    .line 16
    iget-object v0, v0, LP0/L;->f:[J

    .line 17
    .line 18
    iget v1, p0, LP0/t;->h:I

    .line 19
    .line 20
    aget-wide v1, v0, v1

    .line 21
    .line 22
    return-wide v1
.end method

.method public getCurrentSamplePresentationTimeUs()J
    .locals 3

    .line 1
    iget-boolean v0, p0, LP0/t;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LP0/t;->d:LP0/M;

    .line 6
    .line 7
    iget-object v0, v0, LP0/M;->f:[J

    .line 8
    .line 9
    iget v1, p0, LP0/t;->f:I

    .line 10
    .line 11
    aget-wide v1, v0, v1

    .line 12
    .line 13
    return-wide v1

    .line 14
    :cond_0
    iget-object v0, p0, LP0/t;->b:LP0/L;

    .line 15
    .line 16
    iget v1, p0, LP0/t;->f:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, LP0/L;->getSamplePresentationTimeUs(I)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0
.end method

.method public getCurrentSampleSize()I
    .locals 2

    .line 1
    iget-boolean v0, p0, LP0/t;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LP0/t;->d:LP0/M;

    .line 6
    .line 7
    iget-object v0, v0, LP0/M;->d:[I

    .line 8
    .line 9
    iget v1, p0, LP0/t;->f:I

    .line 10
    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, LP0/t;->b:LP0/L;

    .line 15
    .line 16
    iget-object v0, v0, LP0/L;->h:[I

    .line 17
    .line 18
    iget v1, p0, LP0/t;->f:I

    .line 19
    .line 20
    aget v0, v0, v1

    .line 21
    .line 22
    return v0
.end method

.method public getEncryptionBoxIfEncrypted()LP0/K;
    .locals 2

    .line 1
    iget-boolean v0, p0, LP0/t;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, LP0/t;->b:LP0/L;

    .line 7
    .line 8
    iget-object v1, v0, LP0/L;->a:LP0/o;

    .line 9
    .line 10
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, LP0/o;

    .line 15
    .line 16
    iget v1, v1, LP0/o;->a:I

    .line 17
    .line 18
    iget-object v0, v0, LP0/L;->m:LP0/K;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, LP0/t;->d:LP0/M;

    .line 24
    .line 25
    iget-object v0, v0, LP0/M;->a:LP0/J;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, LP0/J;->getSampleDescriptionEncryptionBox(I)LP0/K;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-boolean v1, v0, LP0/K;->a:Z

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 39
    return-object v0
.end method

.method public next()Z
    .locals 5

    .line 1
    iget v0, p0, LP0/t;->f:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, LP0/t;->f:I

    .line 6
    .line 7
    iget-boolean v0, p0, LP0/t;->m:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    iget v0, p0, LP0/t;->g:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    iput v0, p0, LP0/t;->g:I

    .line 17
    .line 18
    iget-object v3, p0, LP0/t;->b:LP0/L;

    .line 19
    .line 20
    iget-object v3, v3, LP0/L;->g:[I

    .line 21
    .line 22
    iget v4, p0, LP0/t;->h:I

    .line 23
    .line 24
    aget v3, v3, v4

    .line 25
    .line 26
    if-ne v0, v3, :cond_1

    .line 27
    .line 28
    add-int/2addr v4, v1

    .line 29
    iput v4, p0, LP0/t;->h:I

    .line 30
    .line 31
    iput v2, p0, LP0/t;->g:I

    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    return v1
.end method

.method public outputSampleEncryptionData(II)I
    .locals 11

    .line 1
    invoke-virtual {p0}, LP0/t;->getEncryptionBoxIfEncrypted()LP0/K;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v2, p0, LP0/t;->b:LP0/L;

    .line 10
    .line 11
    iget v3, v0, LP0/K;->d:I

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    iget-object v0, v2, LP0/L;->n:Landroidx/media3/common/util/ParsableByteArray;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, v0, LP0/K;->e:[B

    .line 19
    .line 20
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, [B

    .line 25
    .line 26
    array-length v3, v0

    .line 27
    iget-object v4, p0, LP0/t;->l:Landroidx/media3/common/util/ParsableByteArray;

    .line 28
    .line 29
    invoke-virtual {v4, v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 30
    .line 31
    .line 32
    array-length v3, v0

    .line 33
    move-object v0, v4

    .line 34
    :goto_0
    iget v4, p0, LP0/t;->f:I

    .line 35
    .line 36
    invoke-virtual {v2, v4}, LP0/L;->sampleHasSubsampleEncryptionTable(I)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x1

    .line 41
    if-nez v4, :cond_3

    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v6, v1

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    :goto_1
    move v6, v5

    .line 49
    :goto_2
    iget-object v7, p0, LP0/t;->k:Landroidx/media3/common/util/ParsableByteArray;

    .line 50
    .line 51
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    if-eqz v6, :cond_4

    .line 56
    .line 57
    const/16 v9, 0x80

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    move v9, v1

    .line 61
    :goto_3
    or-int/2addr v9, v3

    .line 62
    int-to-byte v9, v9

    .line 63
    aput-byte v9, v8, v1

    .line 64
    .line 65
    invoke-virtual {v7, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 66
    .line 67
    .line 68
    iget-object v8, p0, LP0/t;->a:Lv0/r0;

    .line 69
    .line 70
    invoke-interface {v8, v7, v5, v5}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v8, v0, v3, v5}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 74
    .line 75
    .line 76
    if-nez v6, :cond_5

    .line 77
    .line 78
    add-int/2addr v3, v5

    .line 79
    return v3

    .line 80
    :cond_5
    const/4 v0, 0x6

    .line 81
    const/4 v6, 0x3

    .line 82
    const/4 v7, 0x2

    .line 83
    const/16 v9, 0x8

    .line 84
    .line 85
    iget-object v10, p0, LP0/t;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 86
    .line 87
    if-nez v4, :cond_6

    .line 88
    .line 89
    invoke-virtual {v10, v9}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    aput-byte v1, v2, v1

    .line 97
    .line 98
    aput-byte v5, v2, v5

    .line 99
    .line 100
    shr-int/lit8 v1, p2, 0x8

    .line 101
    .line 102
    and-int/lit16 v1, v1, 0xff

    .line 103
    .line 104
    int-to-byte v1, v1

    .line 105
    aput-byte v1, v2, v7

    .line 106
    .line 107
    and-int/lit16 p2, p2, 0xff

    .line 108
    .line 109
    int-to-byte p2, p2

    .line 110
    aput-byte p2, v2, v6

    .line 111
    .line 112
    shr-int/lit8 p2, p1, 0x18

    .line 113
    .line 114
    and-int/lit16 p2, p2, 0xff

    .line 115
    .line 116
    int-to-byte p2, p2

    .line 117
    const/4 v1, 0x4

    .line 118
    aput-byte p2, v2, v1

    .line 119
    .line 120
    shr-int/lit8 p2, p1, 0x10

    .line 121
    .line 122
    and-int/lit16 p2, p2, 0xff

    .line 123
    .line 124
    int-to-byte p2, p2

    .line 125
    const/4 v1, 0x5

    .line 126
    aput-byte p2, v2, v1

    .line 127
    .line 128
    shr-int/lit8 p2, p1, 0x8

    .line 129
    .line 130
    and-int/lit16 p2, p2, 0xff

    .line 131
    .line 132
    int-to-byte p2, p2

    .line 133
    aput-byte p2, v2, v0

    .line 134
    .line 135
    and-int/lit16 p1, p1, 0xff

    .line 136
    .line 137
    int-to-byte p1, p1

    .line 138
    const/4 p2, 0x7

    .line 139
    aput-byte p1, v2, p2

    .line 140
    .line 141
    invoke-interface {v8, v10, v9, v5}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 142
    .line 143
    .line 144
    add-int/lit8 v3, v3, 0x9

    .line 145
    .line 146
    return v3

    .line 147
    :cond_6
    iget-object p1, v2, LP0/L;->n:Landroidx/media3/common/util/ParsableByteArray;

    .line 148
    .line 149
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    const/4 v4, -0x2

    .line 154
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 155
    .line 156
    .line 157
    mul-int/2addr v2, v0

    .line 158
    add-int/2addr v2, v7

    .line 159
    if-eqz p2, :cond_7

    .line 160
    .line 161
    invoke-virtual {v10, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p1, v0, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 169
    .line 170
    .line 171
    aget-byte p1, v0, v7

    .line 172
    .line 173
    and-int/lit16 p1, p1, 0xff

    .line 174
    .line 175
    shl-int/2addr p1, v9

    .line 176
    aget-byte v1, v0, v6

    .line 177
    .line 178
    and-int/lit16 v1, v1, 0xff

    .line 179
    .line 180
    or-int/2addr p1, v1

    .line 181
    add-int/2addr p1, p2

    .line 182
    shr-int/lit8 p2, p1, 0x8

    .line 183
    .line 184
    and-int/lit16 p2, p2, 0xff

    .line 185
    .line 186
    int-to-byte p2, p2

    .line 187
    aput-byte p2, v0, v7

    .line 188
    .line 189
    and-int/lit16 p1, p1, 0xff

    .line 190
    .line 191
    int-to-byte p1, p1

    .line 192
    aput-byte p1, v0, v6

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_7
    move-object v10, p1

    .line 196
    :goto_4
    invoke-interface {v8, v10, v2, v5}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 197
    .line 198
    .line 199
    add-int/2addr v3, v5

    .line 200
    add-int/2addr v3, v2

    .line 201
    return v3
.end method

.method public reset(LP0/M;LP0/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, LP0/t;->d:LP0/M;

    .line 2
    .line 3
    iput-object p2, p0, LP0/t;->e:LP0/o;

    .line 4
    .line 5
    iget-object p1, p0, LP0/t;->a:Lv0/r0;

    .line 6
    .line 7
    iget-object p2, p0, LP0/t;->j:Landroidx/media3/common/Format;

    .line 8
    .line 9
    invoke-interface {p1, p2}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, LP0/t;->resetFragmentInfo()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public resetFragmentInfo()V
    .locals 1

    .line 1
    iget-object v0, p0, LP0/t;->b:LP0/L;

    .line 2
    .line 3
    invoke-virtual {v0}, LP0/L;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, LP0/t;->f:I

    .line 8
    .line 9
    iput v0, p0, LP0/t;->h:I

    .line 10
    .line 11
    iput v0, p0, LP0/t;->g:I

    .line 12
    .line 13
    iput v0, p0, LP0/t;->i:I

    .line 14
    .line 15
    iput-boolean v0, p0, LP0/t;->m:Z

    .line 16
    .line 17
    return-void
.end method

.method public seek(J)V
    .locals 4

    .line 1
    iget v0, p0, LP0/t;->f:I

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, LP0/t;->b:LP0/L;

    .line 4
    .line 5
    iget v2, v1, LP0/L;->e:I

    .line 6
    .line 7
    if-ge v0, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {v1, v0}, LP0/L;->getSamplePresentationTimeUs(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    cmp-long v2, v2, p1

    .line 14
    .line 15
    if-gtz v2, :cond_1

    .line 16
    .line 17
    iget-object v1, v1, LP0/L;->j:[Z

    .line 18
    .line 19
    aget-boolean v1, v1, v0

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iput v0, p0, LP0/t;->i:I

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public skipSampleEncryptionData()V
    .locals 3

    .line 1
    invoke-virtual {p0}, LP0/t;->getEncryptionBoxIfEncrypted()LP0/K;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, LP0/t;->b:LP0/L;

    .line 9
    .line 10
    iget-object v2, v1, LP0/L;->n:Landroidx/media3/common/util/ParsableByteArray;

    .line 11
    .line 12
    iget v0, v0, LP0/K;->d:I

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget v0, p0, LP0/t;->f:I

    .line 20
    .line 21
    invoke-virtual {v1, v0}, LP0/L;->sampleHasSubsampleEncryptionTable(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    mul-int/lit8 v0, v0, 0x6

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method

.method public updateDrmInitData(Landroidx/media3/common/DrmInitData;)V
    .locals 2

    .line 1
    iget-object v0, p0, LP0/t;->d:LP0/M;

    .line 2
    .line 3
    iget-object v0, v0, LP0/M;->a:LP0/J;

    .line 4
    .line 5
    iget-object v1, p0, LP0/t;->b:LP0/L;

    .line 6
    .line 7
    iget-object v1, v1, LP0/L;->a:LP0/o;

    .line 8
    .line 9
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, LP0/o;

    .line 14
    .line 15
    iget v1, v1, LP0/o;->a:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, LP0/J;->getSampleDescriptionEncryptionBox(I)LP0/K;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, v0, LP0/K;->b:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, LP0/t;->j:Landroidx/media3/common/Format;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, LP0/t;->a:Lv0/r0;

    .line 46
    .line 47
    invoke-interface {v0, p1}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
