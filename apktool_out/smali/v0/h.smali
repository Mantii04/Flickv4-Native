.class public final Lv0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:F

.field public final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;IIIIIIIIIFLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv0/h;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput p2, p0, Lv0/h;->b:I

    .line 7
    .line 8
    iput p3, p0, Lv0/h;->c:I

    .line 9
    .line 10
    iput p4, p0, Lv0/h;->d:I

    .line 11
    .line 12
    iput p5, p0, Lv0/h;->e:I

    .line 13
    .line 14
    iput p6, p0, Lv0/h;->f:I

    .line 15
    .line 16
    iput p7, p0, Lv0/h;->g:I

    .line 17
    .line 18
    iput p8, p0, Lv0/h;->h:I

    .line 19
    .line 20
    iput p9, p0, Lv0/h;->i:I

    .line 21
    .line 22
    iput p10, p0, Lv0/h;->j:I

    .line 23
    .line 24
    iput p11, p0, Lv0/h;->k:F

    .line 25
    .line 26
    iput-object p12, p0, Lv0/h;->l:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method public static parse(Landroidx/media3/common/util/ParsableByteArray;)Lv0/h;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    :try_start_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x3

    .line 12
    and-int/2addr v2, v3

    .line 13
    add-int/lit8 v6, v2, 0x1

    .line 14
    .line 15
    if-eq v6, v3, :cond_3

    .line 16
    .line 17
    new-instance v5, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    and-int/lit8 v2, v2, 0x1f

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    move v4, v3

    .line 30
    :goto_0
    if-ge v4, v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-static {v9, v8, v7}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    move v7, v3

    .line 62
    :goto_1
    if-ge v7, v4, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-static {v10, v9, v8}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    add-int/lit8 v7, v7, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    if-lez v2, :cond_2

    .line 90
    .line 91
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, [B

    .line 96
    .line 97
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, [B

    .line 102
    .line 103
    array-length v0, v0

    .line 104
    invoke-static {v2, v1, v0}, Ls0/v;->parseSpsNalUnit([BII)Ls0/u;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget v1, v0, Ls0/u;->e:I

    .line 109
    .line 110
    iget v2, v0, Ls0/u;->f:I

    .line 111
    .line 112
    iget v3, v0, Ls0/u;->h:I

    .line 113
    .line 114
    add-int/lit8 v3, v3, 0x8

    .line 115
    .line 116
    iget v4, v0, Ls0/u;->i:I

    .line 117
    .line 118
    add-int/lit8 v4, v4, 0x8

    .line 119
    .line 120
    iget v7, v0, Ls0/u;->p:I

    .line 121
    .line 122
    iget v8, v0, Ls0/u;->q:I

    .line 123
    .line 124
    iget v9, v0, Ls0/u;->r:I

    .line 125
    .line 126
    iget v10, v0, Ls0/u;->s:I

    .line 127
    .line 128
    iget v11, v0, Ls0/u;->g:F

    .line 129
    .line 130
    iget v12, v0, Ls0/u;->a:I

    .line 131
    .line 132
    iget v13, v0, Ls0/u;->b:I

    .line 133
    .line 134
    iget v0, v0, Ls0/u;->c:I

    .line 135
    .line 136
    invoke-static {v12, v13, v0}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    move v12, v8

    .line 141
    move v13, v9

    .line 142
    move v14, v10

    .line 143
    move v15, v11

    .line 144
    move v8, v2

    .line 145
    move v9, v3

    .line 146
    move v10, v4

    .line 147
    move v11, v7

    .line 148
    move v7, v1

    .line 149
    :goto_2
    move-object/from16 v16, v0

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    const/4 v1, -0x1

    .line 153
    const/high16 v11, 0x3f800000    # 1.0f

    .line 154
    .line 155
    const/4 v0, 0x0

    .line 156
    const/16 v10, 0x10

    .line 157
    .line 158
    move v7, v1

    .line 159
    move v8, v7

    .line 160
    move v9, v8

    .line 161
    move v12, v9

    .line 162
    move v13, v12

    .line 163
    move v14, v10

    .line 164
    move v15, v11

    .line 165
    move v10, v13

    .line 166
    move v11, v10

    .line 167
    goto :goto_2

    .line 168
    :goto_3
    new-instance v4, Lv0/h;

    .line 169
    .line 170
    invoke-direct/range {v4 .. v16}, Lv0/h;-><init>(Ljava/util/ArrayList;IIIIIIIIIFLjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-object v4

    .line 174
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 177
    .line 178
    .line 179
    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v1, "Error parsing AVC config"

    .line 182
    .line 183
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    throw v0
.end method
