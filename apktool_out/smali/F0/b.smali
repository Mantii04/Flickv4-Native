.class public final LF0/b;
.super LE0/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LE0/d;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public decode(LE0/b;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
    .locals 16

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->get()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x74

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_7

    .line 9
    .line 10
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-direct {v0, v1, v3}, Landroidx/media3/common/util/ParsableBitArray;-><init>([BI)V

    .line 21
    .line 22
    .line 23
    const/16 v1, 0xc

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    add-int/2addr v4, v3

    .line 37
    const/4 v3, 0x4

    .line 38
    sub-int/2addr v4, v3

    .line 39
    const/16 v5, 0x2c

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 49
    .line 50
    .line 51
    const/16 v5, 0x10

    .line 52
    .line 53
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 54
    .line 55
    .line 56
    new-instance v6, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-ge v7, v4, :cond_5

    .line 66
    .line 67
    const/16 v7, 0x30

    .line 68
    .line 69
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 70
    .line 71
    .line 72
    const/16 v7, 0x8

    .line 73
    .line 74
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    add-int/2addr v10, v9

    .line 90
    move-object v9, v2

    .line 91
    move-object v11, v9

    .line 92
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    if-ge v12, v10, :cond_4

    .line 97
    .line 98
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    add-int/2addr v14, v13

    .line 111
    const/4 v15, 0x2

    .line 112
    if-ne v12, v15, :cond_2

    .line 113
    .line 114
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 119
    .line 120
    .line 121
    const/4 v13, 0x3

    .line 122
    if-ne v12, v13, :cond_3

    .line 123
    .line 124
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    if-ge v12, v14, :cond_3

    .line 129
    .line 130
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    sget-object v12, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 135
    .line 136
    invoke-virtual {v0, v9, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBytesAsString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    const/4 v13, 0x0

    .line 145
    :goto_2
    if-ge v13, v12, :cond_1

    .line 146
    .line 147
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 148
    .line 149
    .line 150
    move-result v15

    .line 151
    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 152
    .line 153
    .line 154
    add-int/lit8 v13, v13, 0x1

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_2
    const/16 v15, 0x15

    .line 158
    .line 159
    if-ne v12, v15, :cond_3

    .line 160
    .line 161
    sget-object v11, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 162
    .line 163
    invoke-virtual {v0, v13, v11}, Landroidx/media3/common/util/ParsableBitArray;->readBytesAsString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    :cond_3
    mul-int/lit8 v14, v14, 0x8

    .line 168
    .line 169
    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_4
    mul-int/lit8 v10, v10, 0x8

    .line 174
    .line 175
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 176
    .line 177
    .line 178
    if-eqz v9, :cond_0

    .line 179
    .line 180
    if-eqz v11, :cond_0

    .line 181
    .line 182
    new-instance v7, LF0/a;

    .line 183
    .line 184
    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    invoke-direct {v7, v8, v9}, LF0/a;-><init>(ILjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_6

    .line 201
    .line 202
    return-object v2

    .line 203
    :cond_6
    new-instance v0, Landroidx/media3/common/Metadata;

    .line 204
    .line 205
    invoke-direct {v0, v6}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 206
    .line 207
    .line 208
    return-object v0

    .line 209
    :cond_7
    return-object v2
.end method
