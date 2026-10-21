.class public final LV0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:[I

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LV0/a;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    const/16 v0, 0x100

    .line 12
    .line 13
    new-array v0, v0, [I

    .line 14
    .line 15
    iput-object v0, p0, LV0/a;->b:[I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/common/text/Cue;
    .locals 9

    .line 1
    iget v0, p0, LV0/a;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget v0, p0, LV0/a;->e:I

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    iget v0, p0, LV0/a;->h:I

    .line 10
    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    iget v0, p0, LV0/a;->i:I

    .line 14
    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    iget-object v0, p0, LV0/a;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_6

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v1, v2, :cond_6

    .line 34
    .line 35
    iget-boolean v1, p0, LV0/a;->c:Z

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 43
    .line 44
    .line 45
    iget v2, p0, LV0/a;->h:I

    .line 46
    .line 47
    iget v3, p0, LV0/a;->i:I

    .line 48
    .line 49
    mul-int/2addr v2, v3

    .line 50
    new-array v3, v2, [I

    .line 51
    .line 52
    move v4, v1

    .line 53
    :cond_1
    :goto_0
    if-ge v4, v2, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    iget-object v6, p0, LV0/a;->b:[I

    .line 60
    .line 61
    if-eqz v5, :cond_2

    .line 62
    .line 63
    add-int/lit8 v7, v4, 0x1

    .line 64
    .line 65
    aget v5, v6, v5

    .line 66
    .line 67
    aput v5, v3, v4

    .line 68
    .line 69
    :goto_1
    move v4, v7

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_1

    .line 76
    .line 77
    and-int/lit8 v7, v5, 0x40

    .line 78
    .line 79
    if-nez v7, :cond_3

    .line 80
    .line 81
    and-int/lit8 v7, v5, 0x3f

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    and-int/lit8 v7, v5, 0x3f

    .line 85
    .line 86
    shl-int/lit8 v7, v7, 0x8

    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    or-int/2addr v7, v8

    .line 93
    :goto_2
    and-int/lit16 v5, v5, 0x80

    .line 94
    .line 95
    if-nez v5, :cond_4

    .line 96
    .line 97
    aget v5, v6, v1

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    aget v5, v6, v5

    .line 105
    .line 106
    :goto_3
    add-int/2addr v7, v4

    .line 107
    invoke-static {v3, v4, v7, v5}, Ljava/util/Arrays;->fill([IIII)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    iget v0, p0, LV0/a;->h:I

    .line 112
    .line 113
    iget v2, p0, LV0/a;->i:I

    .line 114
    .line 115
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 116
    .line 117
    invoke-static {v3, v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v2, Landroidx/media3/common/text/Cue$Builder;

    .line 122
    .line 123
    invoke-direct {v2}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v0}, Landroidx/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroidx/media3/common/text/Cue$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget v2, p0, LV0/a;->f:I

    .line 131
    .line 132
    int-to-float v2, v2

    .line 133
    iget v3, p0, LV0/a;->d:I

    .line 134
    .line 135
    int-to-float v3, v3

    .line 136
    div-float/2addr v2, v3

    .line 137
    invoke-virtual {v0, v2}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget v2, p0, LV0/a;->g:I

    .line 146
    .line 147
    int-to-float v2, v2

    .line 148
    iget v3, p0, LV0/a;->e:I

    .line 149
    .line 150
    int-to-float v3, v3

    .line 151
    div-float/2addr v2, v3

    .line 152
    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget v1, p0, LV0/a;->h:I

    .line 161
    .line 162
    int-to-float v1, v1

    .line 163
    iget v2, p0, LV0/a;->d:I

    .line 164
    .line 165
    int-to-float v2, v2

    .line 166
    div-float/2addr v1, v2

    .line 167
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setSize(F)Landroidx/media3/common/text/Cue$Builder;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iget v1, p0, LV0/a;->i:I

    .line 172
    .line 173
    int-to-float v1, v1

    .line 174
    iget v2, p0, LV0/a;->e:I

    .line 175
    .line 176
    int-to-float v2, v2

    .line 177
    div-float/2addr v1, v2

    .line 178
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setBitmapHeight(F)Landroidx/media3/common/text/Cue$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    return-object v0

    .line 187
    :cond_6
    :goto_4
    const/4 v0, 0x0

    .line 188
    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LV0/a;->d:I

    .line 3
    .line 4
    iput v0, p0, LV0/a;->e:I

    .line 5
    .line 6
    iput v0, p0, LV0/a;->f:I

    .line 7
    .line 8
    iput v0, p0, LV0/a;->g:I

    .line 9
    .line 10
    iput v0, p0, LV0/a;->h:I

    .line 11
    .line 12
    iput v0, p0, LV0/a;->i:I

    .line 13
    .line 14
    iget-object v1, p0, LV0/a;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 17
    .line 18
    .line 19
    iput-boolean v0, p0, LV0/a;->c:Z

    .line 20
    .line 21
    return-void
.end method
