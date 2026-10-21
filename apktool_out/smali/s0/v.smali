.class public abstract Ls0/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[F

.field public static final c:Ljava/lang/Object;

.field public static d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Ls0/v;->a:[B

    .line 8
    .line 9
    const/16 v0, 0x11

    .line 10
    .line 11
    new-array v0, v0, [F

    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v0, Ls0/v;->b:[F

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Ls0/v;->c:Ljava/lang/Object;

    .line 24
    .line 25
    const/16 v0, 0xa

    .line 26
    .line 27
    new-array v0, v0, [I

    .line 28
    .line 29
    sput-object v0, Ls0/v;->d:[I

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static a(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "video/dolby-vision"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    const-string v1, "dva1"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "dvav"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "dvh1"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 45
    .line 46
    const-string v1, "dvhe"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    :cond_1
    const-string p0, "video/hevc"

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_2
    :goto_0
    const-string p0, "video/avc"

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_3
    iget-object p0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 61
    .line 62
    return-object p0
.end method

.method public static b(Ls0/y;)Ls0/j;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ls0/y;->skipBit()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    invoke-virtual {p0, v0}, Ls0/y;->readBits(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0}, Ls0/y;->readBits(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-virtual {p0, v2}, Ls0/y;->readBits(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-int/lit8 p0, p0, -0x1

    .line 19
    .line 20
    new-instance v2, Ls0/j;

    .line 21
    .line 22
    invoke-direct {v2, v1, v0, p0}, Ls0/j;-><init>(III)V

    .line 23
    .line 24
    .line 25
    return-object v2
.end method

.method public static c(Ls0/y;ZILs0/k;)Ls0/k;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x6

    .line 8
    new-array v4, v3, [I

    .line 9
    .line 10
    const/4 v5, 0x2

    .line 11
    const/16 v6, 0x8

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    invoke-virtual {v0, v5}, Ls0/y;->readBits(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    const/4 v9, 0x5

    .line 25
    invoke-virtual {v0, v9}, Ls0/y;->readBits(I)I

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    move v10, v7

    .line 30
    move v11, v10

    .line 31
    :goto_0
    const/16 v12, 0x20

    .line 32
    .line 33
    if-ge v10, v12, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 36
    .line 37
    .line 38
    move-result v12

    .line 39
    if-eqz v12, :cond_0

    .line 40
    .line 41
    const/4 v12, 0x1

    .line 42
    shl-int/2addr v12, v10

    .line 43
    or-int/2addr v11, v12

    .line 44
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v10, v7

    .line 48
    :goto_1
    if-ge v10, v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, v6}, Ls0/y;->readBits(I)I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    aput v12, v4, v10

    .line 55
    .line 56
    add-int/lit8 v10, v10, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v13, v2

    .line 60
    :goto_2
    move-object/from16 v17, v4

    .line 61
    .line 62
    move v14, v8

    .line 63
    move v15, v9

    .line 64
    move/from16 v16, v11

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    if-eqz v2, :cond_4

    .line 68
    .line 69
    iget v3, v2, Ls0/k;->a:I

    .line 70
    .line 71
    iget-boolean v8, v2, Ls0/k;->b:Z

    .line 72
    .line 73
    iget v9, v2, Ls0/k;->c:I

    .line 74
    .line 75
    iget v11, v2, Ls0/k;->d:I

    .line 76
    .line 77
    iget-object v4, v2, Ls0/k;->e:[I

    .line 78
    .line 79
    move v13, v3

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move-object/from16 v17, v4

    .line 82
    .line 83
    move v13, v7

    .line 84
    move v14, v13

    .line 85
    move v15, v14

    .line 86
    move/from16 v16, v15

    .line 87
    .line 88
    :goto_3
    invoke-virtual {v0, v6}, Ls0/y;->readBits(I)I

    .line 89
    .line 90
    .line 91
    move-result v18

    .line 92
    move v2, v7

    .line 93
    :goto_4
    if-ge v7, v1, :cond_7

    .line 94
    .line 95
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_5

    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x58

    .line 102
    .line 103
    :cond_5
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_6

    .line 108
    .line 109
    add-int/lit8 v2, v2, 0x8

    .line 110
    .line 111
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_7
    invoke-virtual {v0, v2}, Ls0/y;->skipBits(I)V

    .line 115
    .line 116
    .line 117
    if-lez v1, :cond_8

    .line 118
    .line 119
    sub-int/2addr v6, v1

    .line 120
    mul-int/2addr v6, v5

    .line 121
    invoke-virtual {v0, v6}, Ls0/y;->skipBits(I)V

    .line 122
    .line 123
    .line 124
    :cond_8
    new-instance v12, Ls0/k;

    .line 125
    .line 126
    invoke-direct/range {v12 .. v18}, Ls0/k;-><init>(IZII[II)V

    .line 127
    .line 128
    .line 129
    return-object v12
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    aput-boolean v0, p0, v0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    aput-boolean v0, p0, v1

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    aput-boolean v0, p0, v1

    .line 9
    .line 10
    return-void
.end method

.method public static d(Ls0/y;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ls0/y;->skipBits(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ls0/y;->skipBit()V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 v0, 0x14

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ls0/y;->skipBits(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static findNalUnit([BII[Z)I
    .locals 8

    .line 1
    sub-int v0, p2, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    move v3, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v1

    .line 10
    :goto_0
    invoke-static {v3}, LP3/v;->checkState(Z)V

    .line 11
    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return p2

    .line 16
    :cond_1
    aget-boolean v3, p3, v1

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    invoke-static {p3}, Ls0/v;->clearPrefixFlags([Z)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x3

    .line 24
    .line 25
    return p1

    .line 26
    :cond_2
    const/4 v3, 0x2

    .line 27
    if-le v0, v2, :cond_3

    .line 28
    .line 29
    aget-boolean v4, p3, v2

    .line 30
    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    aget-byte v4, p0, p1

    .line 34
    .line 35
    if-ne v4, v2, :cond_3

    .line 36
    .line 37
    invoke-static {p3}, Ls0/v;->clearPrefixFlags([Z)V

    .line 38
    .line 39
    .line 40
    sub-int/2addr p1, v3

    .line 41
    return p1

    .line 42
    :cond_3
    if-le v0, v3, :cond_4

    .line 43
    .line 44
    aget-boolean v4, p3, v3

    .line 45
    .line 46
    if-eqz v4, :cond_4

    .line 47
    .line 48
    aget-byte v4, p0, p1

    .line 49
    .line 50
    if-nez v4, :cond_4

    .line 51
    .line 52
    add-int/lit8 v4, p1, 0x1

    .line 53
    .line 54
    aget-byte v4, p0, v4

    .line 55
    .line 56
    if-ne v4, v2, :cond_4

    .line 57
    .line 58
    invoke-static {p3}, Ls0/v;->clearPrefixFlags([Z)V

    .line 59
    .line 60
    .line 61
    sub-int/2addr p1, v2

    .line 62
    return p1

    .line 63
    :cond_4
    add-int/lit8 v4, p2, -0x1

    .line 64
    .line 65
    add-int/2addr p1, v3

    .line 66
    :goto_1
    if-ge p1, v4, :cond_7

    .line 67
    .line 68
    aget-byte v5, p0, p1

    .line 69
    .line 70
    and-int/lit16 v6, v5, 0xfe

    .line 71
    .line 72
    if-eqz v6, :cond_5

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    add-int/lit8 v6, p1, -0x2

    .line 76
    .line 77
    aget-byte v7, p0, v6

    .line 78
    .line 79
    if-nez v7, :cond_6

    .line 80
    .line 81
    add-int/lit8 v7, p1, -0x1

    .line 82
    .line 83
    aget-byte v7, p0, v7

    .line 84
    .line 85
    if-nez v7, :cond_6

    .line 86
    .line 87
    if-ne v5, v2, :cond_6

    .line 88
    .line 89
    invoke-static {p3}, Ls0/v;->clearPrefixFlags([Z)V

    .line 90
    .line 91
    .line 92
    return v6

    .line 93
    :cond_6
    add-int/lit8 p1, p1, -0x2

    .line 94
    .line 95
    :goto_2
    add-int/lit8 p1, p1, 0x3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_7
    if-le v0, v3, :cond_9

    .line 99
    .line 100
    add-int/lit8 p1, p2, -0x3

    .line 101
    .line 102
    aget-byte p1, p0, p1

    .line 103
    .line 104
    if-nez p1, :cond_8

    .line 105
    .line 106
    add-int/lit8 p1, p2, -0x2

    .line 107
    .line 108
    aget-byte p1, p0, p1

    .line 109
    .line 110
    if-nez p1, :cond_8

    .line 111
    .line 112
    aget-byte p1, p0, v4

    .line 113
    .line 114
    if-ne p1, v2, :cond_8

    .line 115
    .line 116
    :goto_3
    move p1, v2

    .line 117
    goto :goto_4

    .line 118
    :cond_8
    move p1, v1

    .line 119
    goto :goto_4

    .line 120
    :cond_9
    if-ne v0, v3, :cond_a

    .line 121
    .line 122
    aget-boolean p1, p3, v3

    .line 123
    .line 124
    if-eqz p1, :cond_8

    .line 125
    .line 126
    add-int/lit8 p1, p2, -0x2

    .line 127
    .line 128
    aget-byte p1, p0, p1

    .line 129
    .line 130
    if-nez p1, :cond_8

    .line 131
    .line 132
    aget-byte p1, p0, v4

    .line 133
    .line 134
    if-ne p1, v2, :cond_8

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_a
    aget-boolean p1, p3, v2

    .line 138
    .line 139
    if-eqz p1, :cond_8

    .line 140
    .line 141
    aget-byte p1, p0, v4

    .line 142
    .line 143
    if-ne p1, v2, :cond_8

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :goto_4
    aput-boolean p1, p3, v1

    .line 147
    .line 148
    if-le v0, v2, :cond_c

    .line 149
    .line 150
    add-int/lit8 p1, p2, -0x2

    .line 151
    .line 152
    aget-byte p1, p0, p1

    .line 153
    .line 154
    if-nez p1, :cond_b

    .line 155
    .line 156
    aget-byte p1, p0, v4

    .line 157
    .line 158
    if-nez p1, :cond_b

    .line 159
    .line 160
    :goto_5
    move p1, v2

    .line 161
    goto :goto_6

    .line 162
    :cond_b
    move p1, v1

    .line 163
    goto :goto_6

    .line 164
    :cond_c
    aget-boolean p1, p3, v3

    .line 165
    .line 166
    if-eqz p1, :cond_b

    .line 167
    .line 168
    aget-byte p1, p0, v4

    .line 169
    .line 170
    if-nez p1, :cond_b

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :goto_6
    aput-boolean p1, p3, v2

    .line 174
    .line 175
    aget-byte p0, p0, v4

    .line 176
    .line 177
    if-nez p0, :cond_d

    .line 178
    .line 179
    move v1, v2

    .line 180
    :cond_d
    aput-boolean v1, p3, v3

    .line 181
    .line 182
    return p2
.end method

.method public static getH265BaseLayerCodecsString(Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ge v1, v2, :cond_4

    .line 9
    .line 10
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, [B

    .line 15
    .line 16
    array-length v4, v2

    .line 17
    const/4 v5, 0x3

    .line 18
    if-le v4, v5, :cond_3

    .line 19
    .line 20
    new-array v6, v5, [Z

    .line 21
    .line 22
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()LQ3/s;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    move v8, v0

    .line 27
    :goto_1
    array-length v9, v2

    .line 28
    if-ge v8, v9, :cond_1

    .line 29
    .line 30
    array-length v9, v2

    .line 31
    invoke-static {v2, v8, v9, v6}, Ls0/v;->findNalUnit([BII[Z)I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    array-length v9, v2

    .line 36
    if-eq v8, v9, :cond_0

    .line 37
    .line 38
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    invoke-virtual {v7, v9}, LQ3/s;->add(Ljava/lang/Object;)LQ3/s;

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v8, v8, 0x3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v7}, LQ3/s;->build()Lcom/google/common/collect/ImmutableList;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    move v7, v0

    .line 53
    :goto_2
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-ge v7, v8, :cond_3

    .line 58
    .line 59
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    add-int/2addr v8, v5

    .line 70
    if-ge v8, v4, :cond_2

    .line 71
    .line 72
    new-instance v8, Ls0/y;

    .line 73
    .line 74
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    check-cast v9, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    add-int/2addr v9, v5

    .line 85
    invoke-direct {v8, v2, v9, v4}, Ls0/y;-><init>([BII)V

    .line 86
    .line 87
    .line 88
    invoke-static {v8}, Ls0/v;->b(Ls0/y;)Ls0/j;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    iget v10, v9, Ls0/j;->a:I

    .line 93
    .line 94
    const/16 v11, 0x21

    .line 95
    .line 96
    if-ne v10, v11, :cond_2

    .line 97
    .line 98
    iget v9, v9, Ls0/j;->b:I

    .line 99
    .line 100
    if-nez v9, :cond_2

    .line 101
    .line 102
    const/4 p0, 0x4

    .line 103
    invoke-virtual {v8, p0}, Ls0/y;->skipBits(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, v5}, Ls0/y;->readBits(I)I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    invoke-virtual {v8}, Ls0/y;->skipBit()V

    .line 111
    .line 112
    .line 113
    const/4 v0, 0x1

    .line 114
    invoke-static {v8, v0, p0, v3}, Ls0/v;->c(Ls0/y;ZILs0/k;)Ls0/k;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    iget v2, p0, Ls0/k;->c:I

    .line 119
    .line 120
    iget v3, p0, Ls0/k;->d:I

    .line 121
    .line 122
    iget v0, p0, Ls0/k;->a:I

    .line 123
    .line 124
    iget-boolean v1, p0, Ls0/k;->b:Z

    .line 125
    .line 126
    iget-object v4, p0, Ls0/k;->e:[I

    .line 127
    .line 128
    iget v5, p0, Ls0/k;->f:I

    .line 129
    .line 130
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_4
    return-object v3
.end method

.method public static getH265NalUnitType([BI)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    aget-byte p0, p0, p1

    .line 4
    .line 5
    and-int/lit8 p0, p0, 0x7e

    .line 6
    .line 7
    shr-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public static getNalUnitType([BI)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    aget-byte p0, p0, p1

    .line 4
    .line 5
    and-int/lit8 p0, p0, 0x1f

    .line 6
    .line 7
    return p0
.end method

.method public static isDependedOn([BIILandroidx/media3/common/Format;)Z
    .locals 2

    .line 1
    iget-object v0, p3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "video/avc"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    aget-byte p0, p0, p1

    .line 12
    .line 13
    invoke-static {p0}, Ls0/v;->isH264NalUnitDependedOn(B)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    iget-object v0, p3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "video/hevc"

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    new-instance v0, Ls0/y;

    .line 30
    .line 31
    add-int/2addr p2, p1

    .line 32
    invoke-direct {v0, p0, p1, p2}, Ls0/y;-><init>([BII)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ls0/v;->b(Ls0/y;)Ls0/j;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/16 p1, 0x23

    .line 40
    .line 41
    iget p2, p0, Ls0/j;->a:I

    .line 42
    .line 43
    if-ne p2, p1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/16 p1, 0xe

    .line 47
    .line 48
    if-gt p2, p1, :cond_2

    .line 49
    .line 50
    rem-int/lit8 p2, p2, 0x2

    .line 51
    .line 52
    if-nez p2, :cond_2

    .line 53
    .line 54
    iget p1, p3, Landroidx/media3/common/Format;->maxSubLayers:I

    .line 55
    .line 56
    sub-int/2addr p1, v1

    .line 57
    iget p0, p0, Ls0/j;->c:I

    .line 58
    .line 59
    if-ne p0, p1, :cond_2

    .line 60
    .line 61
    :goto_0
    const/4 p0, 0x0

    .line 62
    return p0

    .line 63
    :cond_2
    return v1
.end method

.method public static isH264NalUnitDependedOn(B)Z
    .locals 3

    .line 1
    and-int/lit8 v0, p0, 0x60

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x5

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    and-int/lit8 p0, p0, 0x1f

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-ne p0, v1, :cond_1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    const/16 v2, 0x9

    .line 16
    .line 17
    if-ne p0, v2, :cond_2

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    const/16 v2, 0xe

    .line 21
    .line 22
    if-ne p0, v2, :cond_3

    .line 23
    .line 24
    return v0

    .line 25
    :cond_3
    return v1
.end method

.method public static isNalUnitSei(Landroidx/media3/common/Format;B)Z
    .locals 3

    .line 1
    invoke-static {p0}, Ls0/v;->a(Landroidx/media3/common/Format;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "video/avc"

    .line 6
    .line 7
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    and-int/lit8 v0, p1, 0x1f

    .line 15
    .line 16
    const/4 v2, 0x6

    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    :cond_0
    const-string v0, "video/hevc"

    .line 20
    .line 21
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    and-int/lit8 p0, p1, 0x7e

    .line 28
    .line 29
    shr-int/2addr p0, v1

    .line 30
    const/16 p1, 0x27

    .line 31
    .line 32
    if-ne p0, p1, :cond_2

    .line 33
    .line 34
    :cond_1
    return v1

    .line 35
    :cond_2
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public static numberOfBytesInNalUnitHeader(Landroidx/media3/common/Format;)I
    .locals 1

    .line 1
    invoke-static {p0}, Ls0/v;->a(Landroidx/media3/common/Format;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "video/avc"

    .line 6
    .line 7
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const-string v0, "video/hevc"

    .line 16
    .line 17
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    const/4 p0, 0x2

    .line 24
    return p0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public static parseH265Sei3dRefDisplayInfo([BII)Ls0/o;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    add-int/lit8 v1, p1, 0x2

    .line 4
    .line 5
    add-int/lit8 v2, p2, -0x1

    .line 6
    .line 7
    :goto_0
    aget-byte v3, v0, v2

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    if-le v2, v1, :cond_0

    .line 12
    .line 13
    add-int/lit8 v2, v2, -0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v4, 0x0

    .line 17
    if-eqz v3, :cond_e

    .line 18
    .line 19
    if-gt v2, v1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_8

    .line 22
    .line 23
    :cond_1
    new-instance v3, Ls0/y;

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    invoke-direct {v3, v0, v1, v2}, Ls0/y;-><init>([BII)V

    .line 28
    .line 29
    .line 30
    :goto_1
    const/16 v0, 0x10

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ls0/y;->canReadBits(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_e

    .line 37
    .line 38
    const/16 v0, 0x8

    .line 39
    .line 40
    invoke-virtual {v3, v0}, Ls0/y;->readBits(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x0

    .line 45
    move v5, v2

    .line 46
    :goto_2
    const/16 v6, 0xff

    .line 47
    .line 48
    if-ne v1, v6, :cond_2

    .line 49
    .line 50
    add-int/lit16 v5, v5, 0xff

    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ls0/y;->readBits(I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    add-int/2addr v5, v1

    .line 58
    invoke-virtual {v3, v0}, Ls0/y;->readBits(I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    move v7, v2

    .line 63
    :goto_3
    if-ne v1, v6, :cond_3

    .line 64
    .line 65
    add-int/lit16 v7, v7, 0xff

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ls0/y;->readBits(I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    add-int/2addr v7, v1

    .line 73
    if-eqz v7, :cond_e

    .line 74
    .line 75
    invoke-virtual {v3, v7}, Ls0/y;->canReadBits(I)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    goto/16 :goto_8

    .line 82
    .line 83
    :cond_4
    const/16 v0, 0xb0

    .line 84
    .line 85
    if-ne v5, v0, :cond_d

    .line 86
    .line 87
    invoke-virtual {v3}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    invoke-virtual {v3}, Ls0/y;->readBit()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    invoke-virtual {v3}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    move v10, v1

    .line 102
    goto :goto_4

    .line 103
    :cond_5
    move v10, v2

    .line 104
    :goto_4
    invoke-virtual {v3}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    const/4 v5, -0x1

    .line 109
    move v12, v5

    .line 110
    move v13, v12

    .line 111
    move v14, v13

    .line 112
    move v15, v14

    .line 113
    move/from16 v16, v15

    .line 114
    .line 115
    move/from16 v17, v16

    .line 116
    .line 117
    move v5, v2

    .line 118
    :goto_5
    if-gt v5, v1, :cond_c

    .line 119
    .line 120
    invoke-virtual {v3}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    invoke-virtual {v3}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    const/4 v6, 0x6

    .line 129
    invoke-virtual {v3, v6}, Ls0/y;->readBits(I)I

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    const/16 v7, 0x3f

    .line 134
    .line 135
    if-ne v14, v7, :cond_6

    .line 136
    .line 137
    return-object v4

    .line 138
    :cond_6
    if-nez v14, :cond_7

    .line 139
    .line 140
    add-int/lit8 v8, v9, -0x1e

    .line 141
    .line 142
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    goto :goto_6

    .line 147
    :cond_7
    add-int v8, v14, v9

    .line 148
    .line 149
    add-int/lit8 v8, v8, -0x1f

    .line 150
    .line 151
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    :goto_6
    invoke-virtual {v3, v8}, Ls0/y;->readBits(I)I

    .line 156
    .line 157
    .line 158
    move-result v15

    .line 159
    if-eqz v0, :cond_a

    .line 160
    .line 161
    invoke-virtual {v3, v6}, Ls0/y;->readBits(I)I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-ne v6, v7, :cond_8

    .line 166
    .line 167
    return-object v4

    .line 168
    :cond_8
    if-nez v6, :cond_9

    .line 169
    .line 170
    add-int/lit8 v7, v10, -0x1e

    .line 171
    .line 172
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    goto :goto_7

    .line 177
    :cond_9
    add-int v7, v6, v10

    .line 178
    .line 179
    add-int/lit8 v7, v7, -0x1f

    .line 180
    .line 181
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    :goto_7
    invoke-virtual {v3, v7}, Ls0/y;->readBits(I)I

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    move/from16 v16, v6

    .line 190
    .line 191
    move/from16 v17, v7

    .line 192
    .line 193
    :cond_a
    invoke-virtual {v3}, Ls0/y;->readBit()Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_b

    .line 198
    .line 199
    const/16 v6, 0xa

    .line 200
    .line 201
    invoke-virtual {v3, v6}, Ls0/y;->skipBits(I)V

    .line 202
    .line 203
    .line 204
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_c
    new-instance v8, Ls0/o;

    .line 208
    .line 209
    add-int/lit8 v11, v1, 0x1

    .line 210
    .line 211
    invoke-direct/range {v8 .. v17}, Ls0/o;-><init>(IIIIIIIII)V

    .line 212
    .line 213
    .line 214
    return-object v8

    .line 215
    :cond_d
    mul-int/lit8 v7, v7, 0x8

    .line 216
    .line 217
    invoke-virtual {v3, v7}, Ls0/y;->skipBits(I)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_1

    .line 221
    .line 222
    :cond_e
    :goto_8
    return-object v4
.end method

.method public static parseH265SpsNalUnit([BIILs0/s;)Ls0/p;
    .locals 1

    .line 1
    new-instance v0, Ls0/y;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Ls0/y;-><init>([BII)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ls0/v;->b(Ls0/y;)Ls0/j;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    add-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    invoke-static {p0, p1, p2, v0, p3}, Ls0/v;->parseH265SpsNalUnitPayload([BIILs0/j;Ls0/s;)Ls0/p;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static parseH265SpsNalUnitPayload([BIILs0/j;Ls0/s;)Ls0/p;
    .locals 35

    .line 1
    move-object/from16 v1, p3

    .line 2
    .line 3
    move-object/from16 v0, p4

    .line 4
    .line 5
    new-instance v2, Ls0/y;

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    move/from16 v4, p1

    .line 10
    .line 11
    move/from16 v5, p2

    .line 12
    .line 13
    invoke-direct {v2, v3, v4, v5}, Ls0/y;-><init>([BII)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    invoke-virtual {v2, v3}, Ls0/y;->skipBits(I)V

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    invoke-virtual {v2, v4}, Ls0/y;->readBits(I)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    iget v6, v1, Ls0/j;->b:I

    .line 26
    .line 27
    const/4 v8, 0x1

    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    const/4 v6, 0x7

    .line 31
    if-ne v5, v6, :cond_0

    .line 32
    .line 33
    move v6, v8

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v6, 0x0

    .line 36
    :goto_0
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v9, v0, Ls0/s;->a:Lcom/google/common/collect/ImmutableList;

    .line 39
    .line 40
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    if-nez v10, :cond_1

    .line 45
    .line 46
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    sub-int/2addr v10, v8

    .line 51
    iget v11, v1, Ls0/j;->b:I

    .line 52
    .line 53
    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    check-cast v9, Ls0/i;

    .line 62
    .line 63
    iget v9, v9, Ls0/i;->a:I

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 v9, 0x0

    .line 67
    :goto_1
    const/4 v10, 0x0

    .line 68
    if-nez v6, :cond_2

    .line 69
    .line 70
    invoke-virtual {v2}, Ls0/y;->skipBit()V

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v8, v5, v10}, Ls0/v;->c(Ls0/y;ZILs0/k;)Ls0/k;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    if-eqz v0, :cond_3

    .line 79
    .line 80
    iget-object v11, v0, Ls0/s;->b:Ls0/l;

    .line 81
    .line 82
    iget-object v12, v11, Ls0/l;->b:[I

    .line 83
    .line 84
    aget v12, v12, v9

    .line 85
    .line 86
    iget-object v11, v11, Ls0/l;->a:Lcom/google/common/collect/ImmutableList;

    .line 87
    .line 88
    invoke-virtual {v11}, Ljava/util/AbstractCollection;->size()I

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    if-le v13, v12, :cond_3

    .line 93
    .line 94
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    check-cast v10, Ls0/k;

    .line 99
    .line 100
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    const/4 v12, -0x1

    .line 105
    const/4 v13, 0x2

    .line 106
    const/16 v14, 0x8

    .line 107
    .line 108
    if-eqz v6, :cond_7

    .line 109
    .line 110
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 111
    .line 112
    .line 113
    move-result v15

    .line 114
    if-eqz v15, :cond_4

    .line 115
    .line 116
    invoke-virtual {v2, v14}, Ls0/y;->readBits(I)I

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    goto :goto_3

    .line 121
    :cond_4
    move v15, v12

    .line 122
    :goto_3
    if-eqz v0, :cond_6

    .line 123
    .line 124
    iget-object v7, v0, Ls0/s;->c:Ls0/n;

    .line 125
    .line 126
    if-eqz v7, :cond_6

    .line 127
    .line 128
    if-ne v15, v12, :cond_5

    .line 129
    .line 130
    iget-object v15, v7, Ls0/n;->b:[I

    .line 131
    .line 132
    aget v15, v15, v9

    .line 133
    .line 134
    :cond_5
    if-eq v15, v12, :cond_6

    .line 135
    .line 136
    iget-object v7, v7, Ls0/n;->a:Lcom/google/common/collect/ImmutableList;

    .line 137
    .line 138
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    if-le v12, v15, :cond_6

    .line 143
    .line 144
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    check-cast v7, Ls0/m;

    .line 149
    .line 150
    iget v12, v7, Ls0/m;->a:I

    .line 151
    .line 152
    iget v15, v7, Ls0/m;->d:I

    .line 153
    .line 154
    iget v14, v7, Ls0/m;->e:I

    .line 155
    .line 156
    iget v3, v7, Ls0/m;->b:I

    .line 157
    .line 158
    iget v7, v7, Ls0/m;->c:I

    .line 159
    .line 160
    move-object/from16 v17, v10

    .line 161
    .line 162
    move/from16 v18, v11

    .line 163
    .line 164
    move v11, v14

    .line 165
    move v10, v15

    .line 166
    goto/16 :goto_8

    .line 167
    .line 168
    :cond_6
    move-object/from16 v17, v10

    .line 169
    .line 170
    move/from16 v18, v11

    .line 171
    .line 172
    const/4 v3, 0x0

    .line 173
    const/4 v7, 0x0

    .line 174
    const/4 v10, 0x0

    .line 175
    const/4 v11, 0x0

    .line 176
    const/4 v12, 0x0

    .line 177
    const/4 v14, 0x0

    .line 178
    const/4 v15, 0x0

    .line 179
    goto/16 :goto_8

    .line 180
    .line 181
    :cond_7
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    if-ne v12, v4, :cond_8

    .line 186
    .line 187
    invoke-virtual {v2}, Ls0/y;->skipBit()V

    .line 188
    .line 189
    .line 190
    :cond_8
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 191
    .line 192
    .line 193
    move-result v15

    .line 194
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 195
    .line 196
    .line 197
    move-result v14

    .line 198
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_c

    .line 203
    .line 204
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 213
    .line 214
    .line 215
    move-result v17

    .line 216
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 217
    .line 218
    .line 219
    move-result v18

    .line 220
    if-eq v12, v8, :cond_a

    .line 221
    .line 222
    if-ne v12, v13, :cond_9

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_9
    move/from16 v19, v8

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_a
    :goto_4
    move/from16 v19, v13

    .line 229
    .line 230
    :goto_5
    add-int/2addr v3, v7

    .line 231
    mul-int v3, v3, v19

    .line 232
    .line 233
    sub-int v3, v15, v3

    .line 234
    .line 235
    if-ne v12, v8, :cond_b

    .line 236
    .line 237
    move v7, v13

    .line 238
    goto :goto_6

    .line 239
    :cond_b
    move v7, v8

    .line 240
    :goto_6
    add-int v17, v17, v18

    .line 241
    .line 242
    mul-int v17, v17, v7

    .line 243
    .line 244
    sub-int v7, v14, v17

    .line 245
    .line 246
    goto :goto_7

    .line 247
    :cond_c
    move v7, v14

    .line 248
    move v3, v15

    .line 249
    :goto_7
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 250
    .line 251
    .line 252
    move-result v17

    .line 253
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 254
    .line 255
    .line 256
    move-result v18

    .line 257
    move/from16 v34, v15

    .line 258
    .line 259
    move v15, v3

    .line 260
    move/from16 v3, v17

    .line 261
    .line 262
    move-object/from16 v17, v10

    .line 263
    .line 264
    move/from16 v10, v34

    .line 265
    .line 266
    move/from16 v34, v14

    .line 267
    .line 268
    move v14, v7

    .line 269
    move/from16 v7, v18

    .line 270
    .line 271
    move/from16 v18, v11

    .line 272
    .line 273
    move/from16 v11, v34

    .line 274
    .line 275
    :goto_8
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 276
    .line 277
    .line 278
    move-result v19

    .line 279
    if-nez v6, :cond_f

    .line 280
    .line 281
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 282
    .line 283
    .line 284
    move-result v20

    .line 285
    if-eqz v20, :cond_d

    .line 286
    .line 287
    const/16 v20, 0x0

    .line 288
    .line 289
    goto :goto_9

    .line 290
    :cond_d
    move/from16 v20, v5

    .line 291
    .line 292
    :goto_9
    move/from16 v13, v20

    .line 293
    .line 294
    const/4 v4, -0x1

    .line 295
    :goto_a
    if-gt v13, v5, :cond_e

    .line 296
    .line 297
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 298
    .line 299
    .line 300
    move/from16 v22, v8

    .line 301
    .line 302
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 311
    .line 312
    .line 313
    add-int/lit8 v13, v13, 0x1

    .line 314
    .line 315
    move/from16 v8, v22

    .line 316
    .line 317
    goto :goto_a

    .line 318
    :cond_e
    move v13, v4

    .line 319
    :goto_b
    move/from16 v22, v8

    .line 320
    .line 321
    goto :goto_c

    .line 322
    :cond_f
    const/4 v13, -0x1

    .line 323
    goto :goto_b

    .line 324
    :goto_c
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    if-eqz v4, :cond_11

    .line 347
    .line 348
    if-eqz v6, :cond_10

    .line 349
    .line 350
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    goto :goto_d

    .line 355
    :cond_10
    const/4 v4, 0x0

    .line 356
    :goto_d
    const/4 v6, 0x6

    .line 357
    if-eqz v4, :cond_12

    .line 358
    .line 359
    invoke-virtual {v2, v6}, Ls0/y;->skipBits(I)V

    .line 360
    .line 361
    .line 362
    :cond_11
    const/4 v1, 0x2

    .line 363
    goto :goto_13

    .line 364
    :cond_12
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-eqz v4, :cond_11

    .line 369
    .line 370
    const/4 v4, 0x4

    .line 371
    const/4 v8, 0x0

    .line 372
    :goto_e
    if-ge v8, v4, :cond_11

    .line 373
    .line 374
    move/from16 v16, v4

    .line 375
    .line 376
    const/4 v4, 0x0

    .line 377
    :goto_f
    if-ge v4, v6, :cond_17

    .line 378
    .line 379
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 380
    .line 381
    .line 382
    move-result v23

    .line 383
    if-nez v23, :cond_14

    .line 384
    .line 385
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 386
    .line 387
    .line 388
    :cond_13
    const/4 v1, 0x3

    .line 389
    goto :goto_11

    .line 390
    :cond_14
    shl-int/lit8 v23, v8, 0x1

    .line 391
    .line 392
    add-int/lit8 v23, v23, 0x4

    .line 393
    .line 394
    shl-int v6, v22, v23

    .line 395
    .line 396
    const/16 v1, 0x40

    .line 397
    .line 398
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    move/from16 v6, v22

    .line 403
    .line 404
    if-le v8, v6, :cond_15

    .line 405
    .line 406
    invoke-virtual {v2}, Ls0/y;->readSignedExpGolombCodedInt()I

    .line 407
    .line 408
    .line 409
    :cond_15
    const/4 v6, 0x0

    .line 410
    :goto_10
    if-ge v6, v1, :cond_13

    .line 411
    .line 412
    invoke-virtual {v2}, Ls0/y;->readSignedExpGolombCodedInt()I

    .line 413
    .line 414
    .line 415
    add-int/lit8 v6, v6, 0x1

    .line 416
    .line 417
    goto :goto_10

    .line 418
    :goto_11
    if-ne v8, v1, :cond_16

    .line 419
    .line 420
    const/4 v1, 0x3

    .line 421
    goto :goto_12

    .line 422
    :cond_16
    const/4 v1, 0x1

    .line 423
    :goto_12
    add-int/2addr v4, v1

    .line 424
    move-object/from16 v1, p3

    .line 425
    .line 426
    const/4 v6, 0x6

    .line 427
    const/16 v22, 0x1

    .line 428
    .line 429
    goto :goto_f

    .line 430
    :cond_17
    add-int/lit8 v8, v8, 0x1

    .line 431
    .line 432
    move-object/from16 v1, p3

    .line 433
    .line 434
    move/from16 v4, v16

    .line 435
    .line 436
    const/4 v6, 0x6

    .line 437
    const/16 v22, 0x1

    .line 438
    .line 439
    goto :goto_e

    .line 440
    :goto_13
    invoke-virtual {v2, v1}, Ls0/y;->skipBits(I)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    if-eqz v1, :cond_18

    .line 448
    .line 449
    const/16 v1, 0x8

    .line 450
    .line 451
    invoke-virtual {v2, v1}, Ls0/y;->skipBits(I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2}, Ls0/y;->skipBit()V

    .line 461
    .line 462
    .line 463
    :cond_18
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    const/4 v4, 0x0

    .line 468
    new-array v6, v4, [I

    .line 469
    .line 470
    new-array v8, v4, [I

    .line 471
    .line 472
    move/from16 v16, v3

    .line 473
    .line 474
    move/from16 v23, v5

    .line 475
    .line 476
    const/4 v3, -0x1

    .line 477
    const/4 v5, -0x1

    .line 478
    :goto_14
    if-ge v4, v1, :cond_2a

    .line 479
    .line 480
    if-eqz v4, :cond_25

    .line 481
    .line 482
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 483
    .line 484
    .line 485
    move-result v24

    .line 486
    if-eqz v24, :cond_25

    .line 487
    .line 488
    move/from16 v24, v1

    .line 489
    .line 490
    add-int v1, v3, v5

    .line 491
    .line 492
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 493
    .line 494
    .line 495
    move-result v25

    .line 496
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 497
    .line 498
    .line 499
    move-result v26

    .line 500
    const/16 v22, 0x1

    .line 501
    .line 502
    add-int/lit8 v26, v26, 0x1

    .line 503
    .line 504
    const/16 v21, 0x2

    .line 505
    .line 506
    mul-int/lit8 v25, v25, 0x2

    .line 507
    .line 508
    rsub-int/lit8 v25, v25, 0x1

    .line 509
    .line 510
    mul-int v25, v25, v26

    .line 511
    .line 512
    move/from16 v26, v4

    .line 513
    .line 514
    add-int/lit8 v4, v1, 0x1

    .line 515
    .line 516
    move-object/from16 v27, v6

    .line 517
    .line 518
    new-array v6, v4, [Z

    .line 519
    .line 520
    move-object/from16 v28, v6

    .line 521
    .line 522
    const/4 v6, 0x0

    .line 523
    :goto_15
    if-gt v6, v1, :cond_1a

    .line 524
    .line 525
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 526
    .line 527
    .line 528
    move-result v29

    .line 529
    if-nez v29, :cond_19

    .line 530
    .line 531
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 532
    .line 533
    .line 534
    move-result v29

    .line 535
    aput-boolean v29, v28, v6

    .line 536
    .line 537
    goto :goto_16

    .line 538
    :cond_19
    const/16 v22, 0x1

    .line 539
    .line 540
    aput-boolean v22, v28, v6

    .line 541
    .line 542
    :goto_16
    add-int/lit8 v6, v6, 0x1

    .line 543
    .line 544
    goto :goto_15

    .line 545
    :cond_1a
    new-array v6, v4, [I

    .line 546
    .line 547
    new-array v4, v4, [I

    .line 548
    .line 549
    add-int/lit8 v29, v5, -0x1

    .line 550
    .line 551
    const/16 v30, 0x0

    .line 552
    .line 553
    :goto_17
    if-ltz v29, :cond_1c

    .line 554
    .line 555
    aget v31, v8, v29

    .line 556
    .line 557
    add-int v31, v31, v25

    .line 558
    .line 559
    if-gez v31, :cond_1b

    .line 560
    .line 561
    add-int v32, v3, v29

    .line 562
    .line 563
    aget-boolean v32, v28, v32

    .line 564
    .line 565
    if-eqz v32, :cond_1b

    .line 566
    .line 567
    add-int/lit8 v32, v30, 0x1

    .line 568
    .line 569
    aput v31, v6, v30

    .line 570
    .line 571
    move/from16 v30, v32

    .line 572
    .line 573
    :cond_1b
    add-int/lit8 v29, v29, -0x1

    .line 574
    .line 575
    goto :goto_17

    .line 576
    :cond_1c
    if-gez v25, :cond_1d

    .line 577
    .line 578
    aget-boolean v29, v28, v1

    .line 579
    .line 580
    if-eqz v29, :cond_1d

    .line 581
    .line 582
    add-int/lit8 v29, v30, 0x1

    .line 583
    .line 584
    aput v25, v6, v30

    .line 585
    .line 586
    move/from16 v30, v29

    .line 587
    .line 588
    :cond_1d
    move/from16 v29, v1

    .line 589
    .line 590
    move/from16 v1, v30

    .line 591
    .line 592
    move/from16 v30, v7

    .line 593
    .line 594
    const/4 v7, 0x0

    .line 595
    :goto_18
    if-ge v7, v3, :cond_1f

    .line 596
    .line 597
    aget v31, v27, v7

    .line 598
    .line 599
    add-int v31, v31, v25

    .line 600
    .line 601
    if-gez v31, :cond_1e

    .line 602
    .line 603
    aget-boolean v32, v28, v7

    .line 604
    .line 605
    if-eqz v32, :cond_1e

    .line 606
    .line 607
    add-int/lit8 v32, v1, 0x1

    .line 608
    .line 609
    aput v31, v6, v1

    .line 610
    .line 611
    move/from16 v1, v32

    .line 612
    .line 613
    :cond_1e
    add-int/lit8 v7, v7, 0x1

    .line 614
    .line 615
    goto :goto_18

    .line 616
    :cond_1f
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 617
    .line 618
    .line 619
    move-result-object v6

    .line 620
    add-int/lit8 v7, v3, -0x1

    .line 621
    .line 622
    const/16 v31, 0x0

    .line 623
    .line 624
    :goto_19
    if-ltz v7, :cond_21

    .line 625
    .line 626
    aget v32, v27, v7

    .line 627
    .line 628
    add-int v32, v32, v25

    .line 629
    .line 630
    if-lez v32, :cond_20

    .line 631
    .line 632
    aget-boolean v33, v28, v7

    .line 633
    .line 634
    if-eqz v33, :cond_20

    .line 635
    .line 636
    add-int/lit8 v33, v31, 0x1

    .line 637
    .line 638
    aput v32, v4, v31

    .line 639
    .line 640
    move/from16 v31, v33

    .line 641
    .line 642
    :cond_20
    add-int/lit8 v7, v7, -0x1

    .line 643
    .line 644
    goto :goto_19

    .line 645
    :cond_21
    if-lez v25, :cond_22

    .line 646
    .line 647
    aget-boolean v7, v28, v29

    .line 648
    .line 649
    if-eqz v7, :cond_22

    .line 650
    .line 651
    add-int/lit8 v7, v31, 0x1

    .line 652
    .line 653
    aput v25, v4, v31

    .line 654
    .line 655
    move/from16 v31, v7

    .line 656
    .line 657
    :cond_22
    move/from16 v27, v1

    .line 658
    .line 659
    move/from16 v7, v31

    .line 660
    .line 661
    const/4 v1, 0x0

    .line 662
    :goto_1a
    if-ge v1, v5, :cond_24

    .line 663
    .line 664
    aget v29, v8, v1

    .line 665
    .line 666
    add-int v29, v29, v25

    .line 667
    .line 668
    if-lez v29, :cond_23

    .line 669
    .line 670
    add-int v31, v3, v1

    .line 671
    .line 672
    aget-boolean v31, v28, v31

    .line 673
    .line 674
    if-eqz v31, :cond_23

    .line 675
    .line 676
    add-int/lit8 v31, v7, 0x1

    .line 677
    .line 678
    aput v29, v4, v7

    .line 679
    .line 680
    move/from16 v7, v31

    .line 681
    .line 682
    :cond_23
    add-int/lit8 v1, v1, 0x1

    .line 683
    .line 684
    goto :goto_1a

    .line 685
    :cond_24
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([II)[I

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    move-object v8, v1

    .line 690
    move v5, v7

    .line 691
    move/from16 v3, v27

    .line 692
    .line 693
    :goto_1b
    const/16 v22, 0x1

    .line 694
    .line 695
    goto :goto_20

    .line 696
    :cond_25
    move/from16 v24, v1

    .line 697
    .line 698
    move/from16 v26, v4

    .line 699
    .line 700
    move/from16 v30, v7

    .line 701
    .line 702
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 703
    .line 704
    .line 705
    move-result v1

    .line 706
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 707
    .line 708
    .line 709
    move-result v3

    .line 710
    new-array v4, v1, [I

    .line 711
    .line 712
    const/4 v5, 0x0

    .line 713
    :goto_1c
    if-ge v5, v1, :cond_27

    .line 714
    .line 715
    if-lez v5, :cond_26

    .line 716
    .line 717
    add-int/lit8 v6, v5, -0x1

    .line 718
    .line 719
    aget v6, v4, v6

    .line 720
    .line 721
    goto :goto_1d

    .line 722
    :cond_26
    const/4 v6, 0x0

    .line 723
    :goto_1d
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 724
    .line 725
    .line 726
    move-result v7

    .line 727
    const/16 v22, 0x1

    .line 728
    .line 729
    add-int/lit8 v7, v7, 0x1

    .line 730
    .line 731
    sub-int/2addr v6, v7

    .line 732
    aput v6, v4, v5

    .line 733
    .line 734
    invoke-virtual {v2}, Ls0/y;->skipBit()V

    .line 735
    .line 736
    .line 737
    add-int/lit8 v5, v5, 0x1

    .line 738
    .line 739
    goto :goto_1c

    .line 740
    :cond_27
    new-array v5, v3, [I

    .line 741
    .line 742
    const/4 v6, 0x0

    .line 743
    :goto_1e
    if-ge v6, v3, :cond_29

    .line 744
    .line 745
    if-lez v6, :cond_28

    .line 746
    .line 747
    add-int/lit8 v7, v6, -0x1

    .line 748
    .line 749
    aget v7, v5, v7

    .line 750
    .line 751
    goto :goto_1f

    .line 752
    :cond_28
    const/4 v7, 0x0

    .line 753
    :goto_1f
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 754
    .line 755
    .line 756
    move-result v8

    .line 757
    const/16 v22, 0x1

    .line 758
    .line 759
    add-int/lit8 v8, v8, 0x1

    .line 760
    .line 761
    add-int/2addr v8, v7

    .line 762
    aput v8, v5, v6

    .line 763
    .line 764
    invoke-virtual {v2}, Ls0/y;->skipBit()V

    .line 765
    .line 766
    .line 767
    add-int/lit8 v6, v6, 0x1

    .line 768
    .line 769
    goto :goto_1e

    .line 770
    :cond_29
    move-object v6, v4

    .line 771
    move-object v8, v5

    .line 772
    move v5, v3

    .line 773
    move v3, v1

    .line 774
    goto :goto_1b

    .line 775
    :goto_20
    add-int/lit8 v4, v26, 0x1

    .line 776
    .line 777
    move/from16 v1, v24

    .line 778
    .line 779
    move/from16 v7, v30

    .line 780
    .line 781
    goto/16 :goto_14

    .line 782
    .line 783
    :cond_2a
    move/from16 v30, v7

    .line 784
    .line 785
    const/16 v22, 0x1

    .line 786
    .line 787
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 788
    .line 789
    .line 790
    move-result v1

    .line 791
    if-eqz v1, :cond_2b

    .line 792
    .line 793
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 794
    .line 795
    .line 796
    move-result v1

    .line 797
    const/4 v7, 0x0

    .line 798
    :goto_21
    if-ge v7, v1, :cond_2b

    .line 799
    .line 800
    add-int/lit8 v3, v19, 0x5

    .line 801
    .line 802
    invoke-virtual {v2, v3}, Ls0/y;->skipBits(I)V

    .line 803
    .line 804
    .line 805
    add-int/lit8 v7, v7, 0x1

    .line 806
    .line 807
    goto :goto_21

    .line 808
    :cond_2b
    const/4 v1, 0x2

    .line 809
    invoke-virtual {v2, v1}, Ls0/y;->skipBits(I)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 813
    .line 814
    .line 815
    move-result v3

    .line 816
    const/high16 v4, 0x3f800000    # 1.0f

    .line 817
    .line 818
    if-eqz v3, :cond_36

    .line 819
    .line 820
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 821
    .line 822
    .line 823
    move-result v3

    .line 824
    if-eqz v3, :cond_2e

    .line 825
    .line 826
    const/16 v3, 0x8

    .line 827
    .line 828
    invoke-virtual {v2, v3}, Ls0/y;->readBits(I)I

    .line 829
    .line 830
    .line 831
    move-result v5

    .line 832
    const/16 v3, 0xff

    .line 833
    .line 834
    if-ne v5, v3, :cond_2c

    .line 835
    .line 836
    const/16 v3, 0x10

    .line 837
    .line 838
    invoke-virtual {v2, v3}, Ls0/y;->readBits(I)I

    .line 839
    .line 840
    .line 841
    move-result v5

    .line 842
    invoke-virtual {v2, v3}, Ls0/y;->readBits(I)I

    .line 843
    .line 844
    .line 845
    move-result v3

    .line 846
    if-eqz v5, :cond_2e

    .line 847
    .line 848
    if-eqz v3, :cond_2e

    .line 849
    .line 850
    int-to-float v4, v5

    .line 851
    int-to-float v3, v3

    .line 852
    div-float/2addr v4, v3

    .line 853
    goto :goto_22

    .line 854
    :cond_2c
    const/16 v3, 0x11

    .line 855
    .line 856
    if-ge v5, v3, :cond_2d

    .line 857
    .line 858
    sget-object v3, Ls0/v;->b:[F

    .line 859
    .line 860
    aget v4, v3, v5

    .line 861
    .line 862
    goto :goto_22

    .line 863
    :cond_2d
    const-string v3, "Unexpected aspect_ratio_idc value: "

    .line 864
    .line 865
    const-string v6, "NalUnitUtil"

    .line 866
    .line 867
    invoke-static {v5, v3, v6}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    :cond_2e
    :goto_22
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 871
    .line 872
    .line 873
    move-result v3

    .line 874
    if-eqz v3, :cond_2f

    .line 875
    .line 876
    invoke-virtual {v2}, Ls0/y;->skipBit()V

    .line 877
    .line 878
    .line 879
    :cond_2f
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 880
    .line 881
    .line 882
    move-result v3

    .line 883
    if-eqz v3, :cond_32

    .line 884
    .line 885
    const/4 v3, 0x3

    .line 886
    invoke-virtual {v2, v3}, Ls0/y;->skipBits(I)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 890
    .line 891
    .line 892
    move-result v0

    .line 893
    if-eqz v0, :cond_30

    .line 894
    .line 895
    move/from16 v8, v22

    .line 896
    .line 897
    goto :goto_23

    .line 898
    :cond_30
    move v8, v1

    .line 899
    :goto_23
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 900
    .line 901
    .line 902
    move-result v0

    .line 903
    if-eqz v0, :cond_31

    .line 904
    .line 905
    const/16 v1, 0x8

    .line 906
    .line 907
    invoke-virtual {v2, v1}, Ls0/y;->readBits(I)I

    .line 908
    .line 909
    .line 910
    move-result v0

    .line 911
    invoke-virtual {v2, v1}, Ls0/y;->readBits(I)I

    .line 912
    .line 913
    .line 914
    move-result v3

    .line 915
    invoke-virtual {v2, v1}, Ls0/y;->skipBits(I)V

    .line 916
    .line 917
    .line 918
    invoke-static {v0}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    .line 919
    .line 920
    .line 921
    move-result v0

    .line 922
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    .line 923
    .line 924
    .line 925
    move-result v1

    .line 926
    goto :goto_24

    .line 927
    :cond_31
    const/4 v0, -0x1

    .line 928
    const/4 v1, -0x1

    .line 929
    goto :goto_24

    .line 930
    :cond_32
    if-eqz v0, :cond_33

    .line 931
    .line 932
    iget-object v0, v0, Ls0/s;->d:Ls0/r;

    .line 933
    .line 934
    if-eqz v0, :cond_33

    .line 935
    .line 936
    iget-object v1, v0, Ls0/r;->b:[I

    .line 937
    .line 938
    aget v1, v1, v9

    .line 939
    .line 940
    iget-object v0, v0, Ls0/r;->a:Lcom/google/common/collect/ImmutableList;

    .line 941
    .line 942
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 943
    .line 944
    .line 945
    move-result v3

    .line 946
    if-le v3, v1, :cond_33

    .line 947
    .line 948
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    check-cast v0, Ls0/q;

    .line 953
    .line 954
    iget v1, v0, Ls0/q;->a:I

    .line 955
    .line 956
    iget v3, v0, Ls0/q;->b:I

    .line 957
    .line 958
    iget v0, v0, Ls0/q;->c:I

    .line 959
    .line 960
    move v8, v1

    .line 961
    move v1, v0

    .line 962
    move v0, v8

    .line 963
    move v8, v3

    .line 964
    goto :goto_24

    .line 965
    :cond_33
    const/4 v0, -0x1

    .line 966
    const/4 v1, -0x1

    .line 967
    const/4 v8, -0x1

    .line 968
    :goto_24
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 969
    .line 970
    .line 971
    move-result v3

    .line 972
    if-eqz v3, :cond_34

    .line 973
    .line 974
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 975
    .line 976
    .line 977
    invoke-virtual {v2}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 978
    .line 979
    .line 980
    :cond_34
    invoke-virtual {v2}, Ls0/y;->skipBit()V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v2}, Ls0/y;->readBit()Z

    .line 984
    .line 985
    .line 986
    move-result v2

    .line 987
    if-eqz v2, :cond_35

    .line 988
    .line 989
    mul-int/lit8 v14, v14, 0x2

    .line 990
    .line 991
    :cond_35
    move v5, v15

    .line 992
    move v15, v8

    .line 993
    move v8, v5

    .line 994
    move v9, v14

    .line 995
    move/from16 v5, v16

    .line 996
    .line 997
    move v14, v0

    .line 998
    move/from16 v16, v1

    .line 999
    .line 1000
    goto :goto_25

    .line 1001
    :cond_36
    move v9, v14

    .line 1002
    move v8, v15

    .line 1003
    move/from16 v5, v16

    .line 1004
    .line 1005
    const/4 v14, -0x1

    .line 1006
    const/4 v15, -0x1

    .line 1007
    const/16 v16, -0x1

    .line 1008
    .line 1009
    :goto_25
    new-instance v0, Ls0/p;

    .line 1010
    .line 1011
    move v1, v12

    .line 1012
    move v12, v4

    .line 1013
    move v4, v1

    .line 1014
    move-object/from16 v1, p3

    .line 1015
    .line 1016
    move-object/from16 v3, v17

    .line 1017
    .line 1018
    move/from16 v7, v18

    .line 1019
    .line 1020
    move/from16 v2, v23

    .line 1021
    .line 1022
    move/from16 v6, v30

    .line 1023
    .line 1024
    invoke-direct/range {v0 .. v16}, Ls0/p;-><init>(Ls0/j;ILs0/k;IIIIIIIIFIIII)V

    .line 1025
    .line 1026
    .line 1027
    return-object v0
.end method

.method public static parseH265VpsNalUnit([BII)Ls0/s;
    .locals 37

    .line 1
    new-instance v0, Ls0/y;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Ls0/y;-><init>([BII)V

    .line 2
    invoke-static {v0}, Ls0/v;->b(Ls0/y;)Ls0/j;

    move-result-object v2

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Ls0/y;->skipBits(I)V

    .line 4
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v3

    .line 5
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v4

    const/4 v5, 0x6

    .line 6
    invoke-virtual {v0, v5}, Ls0/y;->readBits(I)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x3

    .line 7
    invoke-virtual {v0, v8}, Ls0/y;->readBits(I)I

    move-result v9

    const/16 v10, 0x11

    .line 8
    invoke-virtual {v0, v10}, Ls0/y;->skipBits(I)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 9
    invoke-static {v0, v10, v9, v11}, Ls0/v;->c(Ls0/y;ZILs0/k;)Ls0/k;

    move-result-object v12

    .line 10
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_0

    move v13, v14

    goto :goto_0

    :cond_0
    move v13, v9

    :goto_0
    if-gt v13, v9, :cond_1

    .line 11
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 12
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 13
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0, v5}, Ls0/y;->readBits(I)I

    move-result v13

    .line 15
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    move-result v15

    add-int/2addr v15, v10

    .line 16
    invoke-static {v12}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v11

    move/from16 v16, v4

    .line 17
    new-instance v4, Ls0/l;

    move/from16 p1, v5

    new-array v5, v10, [I

    invoke-direct {v4, v11, v5}, Ls0/l;-><init>(Ljava/util/List;[I)V

    const/4 v5, 0x2

    if-lt v7, v5, :cond_2

    if-lt v15, v5, :cond_2

    move v11, v10

    goto :goto_1

    :cond_2
    move v11, v14

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v16, :cond_3

    move v3, v10

    goto :goto_2

    :cond_3
    move v3, v14

    :goto_2
    move/from16 p2, v10

    add-int/lit8 v10, v13, 0x1

    if-lt v10, v7, :cond_4

    move/from16 v16, p2

    goto :goto_3

    :cond_4
    move/from16 v16, v14

    :goto_3
    if-eqz v11, :cond_82

    if-eqz v3, :cond_82

    if-nez v16, :cond_5

    goto/16 :goto_60

    .line 18
    :cond_5
    new-array v3, v5, [I

    aput v10, v3, p2

    aput v15, v3, v14

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 19
    new-array v5, v15, [I

    .line 20
    new-array v8, v15, [I

    .line 21
    aget-object v17, v3, v14

    aput v14, v17, v14

    .line 22
    aput p2, v5, v14

    .line 23
    aput v14, v8, v14

    move/from16 v14, p2

    :goto_4
    if-ge v14, v15, :cond_8

    const/4 v1, 0x0

    const/16 v18, 0x0

    :goto_5
    if-gt v1, v13, :cond_7

    .line 24
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 25
    aget-object v19, v3, v14

    add-int/lit8 v20, v18, 0x1

    aput v1, v19, v18

    .line 26
    aput v1, v8, v14

    move/from16 v18, v20

    .line 27
    :cond_6
    aput v18, v5, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x4

    goto :goto_4

    .line 28
    :cond_8
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0x40

    .line 29
    invoke-virtual {v0, v1}, Ls0/y;->skipBits(I)V

    .line 30
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 31
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 32
    :cond_9
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    move-result v1

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v1, :cond_17

    .line 33
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    if-eqz v14, :cond_b

    .line 34
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v19

    if-eqz v19, :cond_a

    goto :goto_8

    :cond_a
    move/from16 v22, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_7
    const/16 v21, 0x0

    goto :goto_a

    .line 35
    :cond_b
    :goto_8
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v19

    .line 36
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v20

    if-nez v19, :cond_d

    if-eqz v20, :cond_c

    goto :goto_9

    :cond_c
    move/from16 v22, v1

    goto :goto_7

    .line 37
    :cond_d
    :goto_9
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v21

    move/from16 v22, v1

    if-eqz v21, :cond_e

    const/16 v1, 0x13

    .line 38
    invoke-virtual {v0, v1}, Ls0/y;->skipBits(I)V

    :cond_e
    const/16 v1, 0x8

    .line 39
    invoke-virtual {v0, v1}, Ls0/y;->skipBits(I)V

    if-eqz v21, :cond_f

    const/4 v1, 0x4

    .line 40
    invoke-virtual {v0, v1}, Ls0/y;->skipBits(I)V

    :cond_f
    const/16 v1, 0xf

    .line 41
    invoke-virtual {v0, v1}, Ls0/y;->skipBits(I)V

    :goto_a
    const/4 v1, 0x0

    :goto_b
    if-gt v1, v9, :cond_16

    .line 42
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v23

    if-nez v23, :cond_10

    .line 43
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v23

    :cond_10
    if-eqz v23, :cond_11

    .line 44
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    const/16 v23, 0x0

    goto :goto_c

    .line 45
    :cond_11
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v23

    :goto_c
    if-nez v23, :cond_12

    .line 46
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    move-result v23

    move/from16 v24, v23

    move/from16 v23, v1

    move/from16 v1, v24

    :goto_d
    move-object/from16 v24, v2

    goto :goto_e

    :cond_12
    move/from16 v23, v1

    const/4 v1, 0x0

    goto :goto_d

    :goto_e
    add-int v2, v19, v20

    move-object/from16 v25, v3

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_15

    move/from16 v26, v2

    const/4 v2, 0x0

    :goto_10
    if-gt v2, v1, :cond_14

    .line 47
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 48
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    if-eqz v21, :cond_13

    .line 49
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 50
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 51
    :cond_13
    invoke-virtual {v0}, Ls0/y;->skipBit()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_14
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v26

    goto :goto_f

    :cond_15
    add-int/lit8 v1, v23, 0x1

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto :goto_b

    :cond_16
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v22

    goto/16 :goto_6

    :cond_17
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    .line 52
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v1

    if-nez v1, :cond_18

    .line 53
    new-instance v1, Ls0/s;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, v24

    invoke-direct/range {v1 .. v6}, Ls0/s;-><init>(Ls0/j;Ljava/util/List;Ls0/l;Ls0/n;Ls0/r;)V

    return-object v1

    :cond_18
    move-object/from16 v2, v24

    .line 54
    invoke-virtual {v0}, Ls0/y;->byteAlign()V

    const/4 v1, 0x0

    .line 55
    invoke-static {v0, v1, v9, v12}, Ls0/v;->c(Ls0/y;ZILs0/k;)Ls0/k;

    move-result-object v3

    .line 56
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v1

    const/16 v14, 0x10

    move/from16 v19, v1

    .line 57
    new-array v1, v14, [Z

    move-object/from16 v20, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    if-ge v1, v14, :cond_1a

    .line 58
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v21

    aput-boolean v21, v20, v1

    if-eqz v21, :cond_19

    add-int/lit8 v2, v2, 0x1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1a
    if-eqz v2, :cond_1b

    .line 59
    aget-boolean v1, v20, p2

    if-nez v1, :cond_1c

    :cond_1b
    move-object/from16 v2, v24

    goto/16 :goto_5f

    .line 60
    :cond_1c
    new-array v1, v2, [I

    move-object/from16 v22, v1

    const/4 v14, 0x0

    :goto_12
    sub-int v1, v2, v19

    if-ge v14, v1, :cond_1d

    const/4 v1, 0x3

    .line 61
    invoke-virtual {v0, v1}, Ls0/y;->readBits(I)I

    move-result v23

    aput v23, v22, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    :cond_1d
    add-int/lit8 v1, v2, 0x1

    .line 62
    new-array v1, v1, [I

    if-eqz v19, :cond_20

    move/from16 v14, p2

    :goto_13
    if-ge v14, v2, :cond_1f

    move-object/from16 v23, v1

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v14, :cond_1e

    .line 63
    aget v26, v23, v14

    aget v27, v22, v1

    add-int/lit8 v27, v27, 0x1

    add-int v27, v27, v26

    aput v27, v23, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1e
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v23

    goto :goto_13

    :cond_1f
    move-object/from16 v23, v1

    .line 64
    aput p1, v23, v2

    :goto_15
    const/4 v1, 0x2

    goto :goto_16

    :cond_20
    move-object/from16 v23, v1

    goto :goto_15

    .line 65
    :goto_16
    new-array v14, v1, [I

    aput v2, v14, p2

    const/16 v17, 0x0

    aput v7, v14, v17

    invoke-static {v11, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 66
    new-array v11, v7, [I

    .line 67
    aput v17, v11, v17

    .line 68
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v14

    move-object/from16 v26, v1

    move/from16 v1, p2

    :goto_17
    if-ge v1, v7, :cond_24

    if-eqz v14, :cond_21

    move/from16 v27, v1

    move/from16 v1, p1

    .line 69
    invoke-virtual {v0, v1}, Ls0/y;->readBits(I)I

    move-result v28

    aput v28, v11, v27

    goto :goto_18

    :cond_21
    move/from16 v27, v1

    move/from16 v1, p1

    .line 70
    aput v27, v11, v27

    :goto_18
    if-nez v19, :cond_22

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v2, :cond_23

    .line 71
    aget-object v28, v26, v27

    aget v29, v22, v1

    move/from16 v30, v1

    add-int/lit8 v1, v29, 0x1

    invoke-virtual {v0, v1}, Ls0/y;->readBits(I)I

    move-result v1

    aput v1, v28, v30

    add-int/lit8 v1, v30, 0x1

    goto :goto_19

    :cond_22
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v2, :cond_23

    .line 72
    aget-object v28, v26, v27

    aget v29, v11, v27

    add-int/lit8 v30, v1, 0x1

    aget v31, v23, v30

    shl-int v31, p2, v31

    add-int/lit8 v31, v31, -0x1

    and-int v29, v29, v31

    aget v31, v23, v1

    shr-int v29, v29, v31

    aput v29, v28, v1

    move/from16 v1, v30

    goto :goto_1a

    :cond_23
    add-int/lit8 v1, v27, 0x1

    const/16 p1, 0x6

    goto :goto_17

    .line 73
    :cond_24
    new-array v1, v10, [I

    move/from16 v2, p2

    move-object/from16 v19, v1

    const/4 v14, 0x0

    :goto_1b
    const/4 v1, -0x1

    if-ge v14, v7, :cond_2b

    .line 74
    aget v22, v11, v14

    aput v1, v19, v22

    move-object/from16 p1, v4

    const/4 v1, 0x0

    const/16 v22, 0x0

    :goto_1c
    const/16 v4, 0x10

    if-ge v1, v4, :cond_27

    .line 75
    aget-boolean v4, v20, v1

    if-eqz v4, :cond_26

    move/from16 v4, p2

    if-ne v1, v4, :cond_25

    .line 76
    aget v4, v11, v14

    aget-object v23, v26, v14

    aget v23, v23, v22

    aput v23, v19, v4

    :cond_25
    add-int/lit8 v22, v22, 0x1

    :cond_26
    add-int/lit8 v1, v1, 0x1

    const/16 p2, 0x1

    goto :goto_1c

    :cond_27
    if-lez v14, :cond_2a

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v14, :cond_29

    .line 77
    aget v4, v11, v14

    aget v4, v19, v4

    aget v22, v11, v1

    move/from16 v23, v1

    aget v1, v19, v22

    if-ne v4, v1, :cond_28

    const/4 v1, 0x0

    goto :goto_1e

    :cond_28
    add-int/lit8 v1, v23, 0x1

    goto :goto_1d

    :cond_29
    const/4 v1, 0x1

    :goto_1e
    if-eqz v1, :cond_2a

    add-int/lit8 v2, v2, 0x1

    :cond_2a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p1

    const/16 p2, 0x1

    goto :goto_1b

    :cond_2b
    move-object/from16 p1, v4

    const/4 v4, 0x4

    .line 78
    invoke-virtual {v0, v4}, Ls0/y;->readBits(I)I

    move-result v14

    const/4 v4, 0x2

    if-lt v2, v4, :cond_2c

    if-nez v14, :cond_2d

    :cond_2c
    move-object/from16 v4, p1

    move-object/from16 v2, v24

    goto/16 :goto_5e

    .line 79
    :cond_2d
    new-array v4, v2, [I

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v2, :cond_2e

    .line 80
    invoke-virtual {v0, v14}, Ls0/y;->readBits(I)I

    move-result v22

    aput v22, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 81
    :cond_2e
    new-array v1, v10, [I

    const/4 v14, 0x0

    :goto_20
    if-ge v14, v7, :cond_2f

    move-object/from16 v22, v1

    .line 82
    aget v1, v11, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v14, v22, v1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v22

    goto :goto_20

    :cond_2f
    move-object/from16 v22, v1

    .line 83
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()LQ3/s;

    move-result-object v1

    const/4 v14, 0x0

    :goto_21
    if-gt v14, v13, :cond_31

    move/from16 v23, v2

    .line 84
    aget v2, v19, v14

    move-object/from16 v27, v4

    const/16 v26, 0x1

    add-int/lit8 v4, v23, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ltz v2, :cond_30

    .line 85
    aget v2, v27, v2

    goto :goto_22

    :cond_30
    const/4 v2, -0x1

    .line 86
    :goto_22
    new-instance v4, Ls0/i;

    move-object/from16 v26, v5

    aget v5, v22, v14

    invoke-direct {v4, v5, v2}, Ls0/i;-><init>(II)V

    invoke-virtual {v1, v4}, LQ3/s;->add(Ljava/lang/Object;)LQ3/s;

    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v23

    move-object/from16 v5, v26

    move-object/from16 v4, v27

    goto :goto_21

    :cond_31
    move-object/from16 v26, v5

    .line 87
    invoke-virtual {v1}, LQ3/s;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    .line 88
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls0/i;

    iget v2, v4, Ls0/i;->b:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_32

    .line 89
    new-instance v1, Ls0/s;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v2, v24

    invoke-direct/range {v1 .. v6}, Ls0/s;-><init>(Ls0/j;Ljava/util/List;Ls0/l;Ls0/n;Ls0/r;)V

    return-object v1

    :cond_32
    move-object/from16 v4, p1

    const/4 v5, 0x1

    :goto_23
    move-object/from16 v2, v24

    if-gt v5, v13, :cond_34

    .line 90
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ls0/i;

    iget v14, v14, Ls0/i;->b:I

    move-object/from16 v24, v2

    const/4 v2, -0x1

    if-eq v14, v2, :cond_33

    goto :goto_24

    :cond_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_34
    move-object/from16 v24, v2

    const/4 v2, -0x1

    move v5, v2

    :goto_24
    if-ne v5, v2, :cond_35

    .line 91
    new-instance v1, Ls0/s;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, v24

    invoke-direct/range {v1 .. v6}, Ls0/s;-><init>(Ls0/j;Ljava/util/List;Ls0/l;Ls0/n;Ls0/r;)V

    return-object v1

    :cond_35
    move-object/from16 v2, v24

    const/4 v13, 0x2

    .line 92
    new-array v14, v13, [I

    const/16 v19, 0x1

    aput v7, v14, v19

    const/16 v17, 0x0

    aput v7, v14, v17

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[Z

    move-object/from16 p1, v4

    const/4 v2, 0x2

    .line 93
    new-array v4, v2, [I

    aput v7, v4, v19

    aput v7, v4, v17

    invoke-static {v13, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    const/4 v4, 0x1

    :goto_25
    if-ge v4, v7, :cond_37

    move-object/from16 v19, v2

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v4, :cond_36

    .line 94
    aget-object v20, v14, v4

    aget-object v22, v19, v4

    .line 95
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v23

    aput-boolean v23, v22, v2

    aput-boolean v23, v20, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_36
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v19

    goto :goto_25

    :cond_37
    move-object/from16 v19, v2

    const/4 v2, 0x1

    :goto_27
    if-ge v2, v7, :cond_3b

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v6, :cond_3a

    move/from16 v20, v4

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v2, :cond_39

    .line 96
    aget-object v22, v19, v2

    aget-boolean v23, v22, v4

    if-eqz v23, :cond_38

    aget-object v23, v19, v4

    aget-boolean v23, v23, v20

    if-eqz v23, :cond_38

    const/16 v23, 0x1

    .line 97
    aput-boolean v23, v22, v20

    goto :goto_2a

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_39
    :goto_2a
    add-int/lit8 v4, v20, 0x1

    goto :goto_28

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 98
    :cond_3b
    new-array v2, v10, [I

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v7, :cond_3d

    move-object/from16 v20, v2

    const/4 v2, 0x0

    const/16 v22, 0x0

    :goto_2c
    if-ge v2, v4, :cond_3c

    .line 99
    aget-object v23, v14, v4

    aget-boolean v23, v23, v2

    add-int v22, v22, v23

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 100
    :cond_3c
    aget v2, v11, v4

    aput v22, v20, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v20

    goto :goto_2b

    :cond_3d
    move-object/from16 v20, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_2d
    if-ge v2, v7, :cond_3f

    .line 101
    aget v22, v11, v2

    aget v22, v20, v22

    if-nez v22, :cond_3e

    add-int/lit8 v4, v4, 0x1

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_3f
    const/4 v2, 0x1

    if-le v4, v2, :cond_40

    .line 102
    new-instance v1, Ls0/s;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v2, v24

    invoke-direct/range {v1 .. v6}, Ls0/s;-><init>(Ls0/j;Ljava/util/List;Ls0/l;Ls0/n;Ls0/r;)V

    return-object v1

    :cond_40
    move-object/from16 v4, p1

    .line 103
    new-array v2, v7, [I

    .line 104
    new-array v4, v15, [I

    .line 105
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v22

    if-eqz v22, :cond_41

    move-object/from16 v22, v4

    const/4 v4, 0x0

    :goto_2e
    if-ge v4, v7, :cond_42

    move/from16 v23, v4

    const/4 v4, 0x3

    .line 106
    invoke-virtual {v0, v4}, Ls0/y;->readBits(I)I

    move-result v27

    aput v27, v2, v23

    add-int/lit8 v4, v23, 0x1

    goto :goto_2e

    :cond_41
    move-object/from16 v22, v4

    const/4 v4, 0x0

    .line 107
    invoke-static {v2, v4, v7, v9}, Ljava/util/Arrays;->fill([IIII)V

    :cond_42
    const/4 v4, 0x0

    :goto_2f
    if-ge v4, v15, :cond_44

    move-object/from16 v23, v2

    move/from16 v27, v4

    move-object/from16 v28, v8

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 108
    :goto_30
    aget v8, v26, v27

    if-ge v2, v8, :cond_43

    .line 109
    aget-object v8, v25, v27

    aget v8, v8, v2

    .line 110
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls0/i;

    iget v8, v8, Ls0/i;->a:I

    aget v8, v23, v8

    .line 111
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_43
    add-int/lit8 v4, v4, 0x1

    .line 112
    aput v4, v22, v27

    add-int/lit8 v4, v27, 0x1

    move-object/from16 v2, v23

    move-object/from16 v8, v28

    goto :goto_2f

    :cond_44
    move-object/from16 v28, v8

    .line 113
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v2

    if-eqz v2, :cond_47

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v6, :cond_47

    add-int/lit8 v4, v2, 0x1

    move v8, v4

    :goto_32
    if-ge v8, v7, :cond_46

    .line 114
    aget-object v23, v14, v8

    aget-boolean v23, v23, v2

    if-eqz v23, :cond_45

    move/from16 v23, v2

    const/4 v2, 0x3

    .line 115
    invoke-virtual {v0, v2}, Ls0/y;->skipBits(I)V

    goto :goto_33

    :cond_45
    move/from16 v23, v2

    :goto_33
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v23

    goto :goto_32

    :cond_46
    move v2, v4

    goto :goto_31

    .line 116
    :cond_47
    invoke-virtual {v0}, Ls0/y;->skipBit()V

    .line 117
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 118
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()LQ3/s;

    move-result-object v6

    .line 119
    invoke-virtual {v6, v12}, LQ3/s;->add(Ljava/lang/Object;)LQ3/s;

    if-le v2, v4, :cond_48

    .line 120
    invoke-virtual {v6, v3}, LQ3/s;->add(Ljava/lang/Object;)LQ3/s;

    const/4 v4, 0x2

    :goto_34
    if-ge v4, v2, :cond_48

    .line 121
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v8

    .line 122
    invoke-static {v0, v8, v9, v3}, Ls0/v;->c(Ls0/y;ZILs0/k;)Ls0/k;

    move-result-object v3

    .line 123
    invoke-virtual {v6, v3}, LQ3/s;->add(Ljava/lang/Object;)LQ3/s;

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 124
    :cond_48
    invoke-virtual {v6}, LQ3/s;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 125
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    move-result v4

    add-int/2addr v4, v15

    if-le v4, v15, :cond_49

    .line 126
    new-instance v1, Ls0/s;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v2, v24

    invoke-direct/range {v1 .. v6}, Ls0/s;-><init>(Ls0/j;Ljava/util/List;Ls0/l;Ls0/n;Ls0/r;)V

    return-object v1

    :cond_49
    move-object/from16 v6, p1

    const/4 v8, 0x2

    .line 127
    invoke-virtual {v0, v8}, Ls0/y;->readBits(I)I

    move-result v9

    .line 128
    new-array v12, v8, [I

    const/16 v23, 0x1

    aput v10, v12, v23

    const/4 v8, 0x0

    aput v4, v12, v8

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Z

    move/from16 v17, v8

    .line 129
    new-array v8, v4, [I

    .line 130
    new-array v6, v4, [I

    move-object/from16 v23, v6

    move/from16 v6, v17

    :goto_35
    if-ge v6, v15, :cond_4e

    .line 131
    aput v17, v8, v6

    .line 132
    aget v27, v28, v6

    aput v27, v23, v6

    if-nez v9, :cond_4a

    move/from16 v27, v6

    .line 133
    aget-object v6, v12, v27

    move-object/from16 v29, v8

    aget v8, v26, v27

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move/from16 v12, v17

    const/4 v11, 0x1

    invoke-static {v6, v12, v8, v11}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 134
    aget v6, v26, v27

    aput v6, v29, v27

    :goto_36
    const/16 v17, 0x0

    goto :goto_39

    :cond_4a
    move/from16 v27, v6

    move-object/from16 v29, v8

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    const/4 v11, 0x1

    if-ne v9, v11, :cond_4d

    .line 135
    aget v6, v28, v27

    const/4 v8, 0x0

    .line 136
    :goto_37
    aget v11, v26, v27

    if-ge v8, v11, :cond_4c

    .line 137
    aget-object v11, v31, v27

    aget-object v12, v25, v27

    aget v12, v12, v8

    if-ne v12, v6, :cond_4b

    const/4 v12, 0x1

    goto :goto_38

    :cond_4b
    const/4 v12, 0x0

    :goto_38
    aput-boolean v12, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    :cond_4c
    const/4 v11, 0x1

    .line 138
    aput v11, v29, v27

    goto :goto_36

    :cond_4d
    const/16 v17, 0x0

    .line 139
    aget-object v6, v31, v17

    aput-boolean v11, v6, v17

    .line 140
    aput v11, v29, v17

    :goto_39
    add-int/lit8 v6, v27, 0x1

    move-object/from16 v8, v29

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    goto :goto_35

    :cond_4e
    move-object/from16 v29, v8

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    const/4 v11, 0x1

    .line 141
    new-array v6, v10, [I

    const/4 v8, 0x2

    .line 142
    new-array v12, v8, [I

    aput v10, v12, v11

    aput v4, v12, v17

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_3a
    if-ge v11, v4, :cond_5b

    if-ne v9, v8, :cond_50

    const/4 v8, 0x0

    .line 143
    :goto_3b
    aget v13, v26, v11

    if-ge v8, v13, :cond_50

    .line 144
    aget-object v13, v31, v11

    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v27

    aput-boolean v27, v13, v8

    .line 145
    aget v13, v29, v11

    aget-object v27, v31, v11

    aget-boolean v27, v27, v8

    add-int v13, v13, v27

    aput v13, v29, v11

    if-eqz v27, :cond_4f

    .line 146
    aget-object v13, v25, v11

    aget v13, v13, v8

    aput v13, v23, v11

    :cond_4f
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    :cond_50
    if-nez v12, :cond_52

    .line 147
    aget-object v8, v25, v11

    const/16 v17, 0x0

    aget v8, v8, v17

    if-nez v8, :cond_53

    aget-object v8, v31, v11

    aget-boolean v8, v8, v17

    if-eqz v8, :cond_53

    const/4 v8, 0x1

    .line 148
    :goto_3c
    aget v13, v26, v11

    if-ge v8, v13, :cond_53

    .line 149
    aget-object v13, v25, v11

    aget v13, v13, v8

    if-ne v13, v5, :cond_51

    aget-object v13, v31, v11

    aget-boolean v13, v13, v5

    if-eqz v13, :cond_51

    move v12, v11

    :cond_51
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    :cond_52
    const/16 v17, 0x0

    :cond_53
    move/from16 v8, v17

    .line 150
    :goto_3d
    aget v13, v26, v11

    if-ge v8, v13, :cond_59

    const/4 v13, 0x1

    if-le v2, v13, :cond_57

    .line 151
    aget-object v13, v10, v11

    aget-object v27, v31, v11

    aget-boolean v27, v27, v8

    aput-boolean v27, v13, v8

    move v13, v9

    move-object/from16 v27, v10

    int-to-double v9, v2

    move/from16 v28, v2

    .line 152
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v9, v10, v2}, LS3/c;->log2(DLjava/math/RoundingMode;)I

    move-result v2

    .line 153
    aget-object v9, v27, v11

    aget-boolean v9, v9, v8

    if-nez v9, :cond_55

    .line 154
    aget-object v9, v25, v11

    aget v9, v9, v8

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ls0/i;

    iget v9, v9, Ls0/i;->a:I

    move/from16 v10, v17

    :goto_3e
    if-ge v10, v8, :cond_55

    .line 155
    aget-object v32, v25, v11

    move/from16 v33, v5

    aget v5, v32, v10

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/i;

    iget v5, v5, Ls0/i;->a:I

    .line 156
    aget-object v32, v19, v9

    aget-boolean v5, v32, v5

    if-eqz v5, :cond_54

    .line 157
    aget-object v5, v27, v11

    const/4 v9, 0x1

    aput-boolean v9, v5, v8

    goto :goto_3f

    :cond_54
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v33

    goto :goto_3e

    :cond_55
    move/from16 v33, v5

    .line 158
    :goto_3f
    aget-object v5, v27, v11

    aget-boolean v5, v5, v8

    if-eqz v5, :cond_58

    if-lez v12, :cond_56

    if-ne v11, v12, :cond_56

    .line 159
    invoke-virtual {v0, v2}, Ls0/y;->readBits(I)I

    move-result v2

    aput v2, v6, v8

    goto :goto_40

    .line 160
    :cond_56
    invoke-virtual {v0, v2}, Ls0/y;->skipBits(I)V

    goto :goto_40

    :cond_57
    move/from16 v28, v2

    move/from16 v33, v5

    move v13, v9

    move-object/from16 v27, v10

    :cond_58
    :goto_40
    add-int/lit8 v8, v8, 0x1

    move v9, v13

    move-object/from16 v10, v27

    move/from16 v2, v28

    move/from16 v5, v33

    goto :goto_3d

    :cond_59
    move/from16 v28, v2

    move/from16 v33, v5

    move v13, v9

    move-object/from16 v27, v10

    .line 161
    aget v2, v29, v11

    const/4 v9, 0x1

    if-ne v2, v9, :cond_5a

    aget v2, v23, v11

    aget v2, v20, v2

    if-lez v2, :cond_5a

    .line 162
    invoke-virtual {v0}, Ls0/y;->skipBit()V

    :cond_5a
    add-int/lit8 v11, v11, 0x1

    move v9, v13

    move-object/from16 v10, v27

    move/from16 v2, v28

    move/from16 v5, v33

    const/4 v8, 0x2

    goto/16 :goto_3a

    :cond_5b
    move-object/from16 v27, v10

    const/16 v17, 0x0

    if-nez v12, :cond_5c

    .line 163
    new-instance v1, Ls0/s;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v2, v24

    invoke-direct/range {v1 .. v6}, Ls0/s;-><init>(Ls0/j;Ljava/util/List;Ls0/l;Ls0/n;Ls0/r;)V

    return-object v1

    :cond_5c
    move-object/from16 v2, v24

    .line 164
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    move-result v5

    add-int/lit8 v8, v5, 0x1

    .line 165
    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)LQ3/s;

    move-result-object v9

    .line 166
    new-array v10, v7, [I

    move/from16 v11, v17

    :goto_41
    if-ge v11, v8, :cond_63

    const/16 v12, 0x10

    .line 167
    invoke-virtual {v0, v12}, Ls0/y;->readBits(I)I

    move-result v13

    .line 168
    invoke-virtual {v0, v12}, Ls0/y;->readBits(I)I

    move-result v19

    .line 169
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v21

    move-object/from16 p1, v1

    if-eqz v21, :cond_5e

    const/4 v12, 0x2

    .line 170
    invoke-virtual {v0, v12}, Ls0/y;->readBits(I)I

    move-result v1

    const/4 v12, 0x3

    if-ne v1, v12, :cond_5d

    .line 171
    invoke-virtual {v0}, Ls0/y;->skipBit()V

    :cond_5d
    const/4 v12, 0x4

    .line 172
    invoke-virtual {v0, v12}, Ls0/y;->readBits(I)I

    move-result v23

    .line 173
    invoke-virtual {v0, v12}, Ls0/y;->readBits(I)I

    move-result v24

    move/from16 v33, v23

    move/from16 v34, v24

    goto :goto_42

    :cond_5e
    move/from16 v1, v17

    move/from16 v33, v1

    move/from16 v34, v33

    .line 174
    :goto_42
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v12

    if-eqz v12, :cond_62

    .line 175
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 176
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    move-result v23

    .line 177
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    move-result v24

    .line 178
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    move-result v25

    move-object/from16 v28, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_60

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5f

    goto :goto_43

    :cond_5f
    const/4 v2, 0x1

    goto :goto_44

    :cond_60
    :goto_43
    const/4 v2, 0x2

    :goto_44
    add-int v12, v12, v23

    mul-int/2addr v12, v2

    sub-int/2addr v13, v12

    const/4 v2, 0x1

    if-ne v1, v2, :cond_61

    const/4 v2, 0x2

    goto :goto_45

    :cond_61
    const/4 v2, 0x1

    :goto_45
    add-int v24, v24, v25

    mul-int v24, v24, v2

    sub-int v19, v19, v24

    :goto_46
    move/from16 v35, v13

    move/from16 v36, v19

    goto :goto_47

    :cond_62
    move-object/from16 v28, v2

    goto :goto_46

    .line 179
    :goto_47
    new-instance v31, Ls0/m;

    move/from16 v32, v1

    invoke-direct/range {v31 .. v36}, Ls0/m;-><init>(IIIII)V

    move-object/from16 v1, v31

    .line 180
    invoke-virtual {v9, v1}, LQ3/s;->add(Ljava/lang/Object;)LQ3/s;

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    goto :goto_41

    :cond_63
    move-object/from16 p1, v1

    move-object/from16 v28, v2

    const/4 v2, 0x1

    if-le v8, v2, :cond_64

    .line 181
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v1

    if-eqz v1, :cond_64

    int-to-double v1, v8

    .line 182
    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v1, v2, v5}, LS3/c;->log2(DLjava/math/RoundingMode;)I

    move-result v1

    const/4 v2, 0x1

    :goto_48
    if-ge v2, v7, :cond_65

    .line 183
    invoke-virtual {v0, v1}, Ls0/y;->readBits(I)I

    move-result v5

    aput v5, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_64
    const/4 v1, 0x1

    :goto_49
    if-ge v1, v7, :cond_65

    .line 184
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 185
    :cond_65
    new-instance v5, Ls0/n;

    invoke-virtual {v9}, LQ3/s;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v5, v1, v10}, Ls0/n;-><init>(Ljava/util/List;[I)V

    const/4 v2, 0x2

    .line 186
    invoke-virtual {v0, v2}, Ls0/y;->skipBits(I)V

    const/4 v1, 0x1

    :goto_4a
    if-ge v1, v7, :cond_67

    .line 187
    aget v2, v30, v1

    aget v2, v20, v2

    if-nez v2, :cond_66

    .line 188
    invoke-virtual {v0}, Ls0/y;->skipBit()V

    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_67
    const/4 v1, 0x1

    :goto_4b
    if-ge v1, v4, :cond_6e

    .line 189
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v2

    move/from16 v8, v17

    .line 190
    :goto_4c
    aget v9, v22, v1

    if-ge v8, v9, :cond_6d

    if-lez v8, :cond_68

    if-eqz v2, :cond_68

    .line 191
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v9

    goto :goto_4d

    :cond_68
    if-nez v8, :cond_69

    const/4 v9, 0x1

    goto :goto_4d

    :cond_69
    move/from16 v9, v17

    :goto_4d
    if-eqz v9, :cond_6c

    move/from16 v9, v17

    .line 192
    :goto_4e
    aget v10, v26, v1

    if-ge v9, v10, :cond_6b

    .line 193
    aget-object v10, v27, v1

    aget-boolean v10, v10, v9

    if-eqz v10, :cond_6a

    .line 194
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    :cond_6a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4e

    .line 195
    :cond_6b
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 196
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    :cond_6c
    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    :cond_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 197
    :cond_6e
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    move-result v1

    const/16 v16, 0x2

    add-int/lit8 v1, v1, 0x2

    .line 198
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 199
    invoke-virtual {v0, v1}, Ls0/y;->skipBits(I)V

    goto :goto_51

    :cond_6f
    const/4 v2, 0x1

    :goto_4f
    if-ge v2, v7, :cond_72

    move/from16 v4, v17

    :goto_50
    if-ge v4, v2, :cond_71

    .line 200
    aget-object v8, v14, v2

    aget-boolean v8, v8, v4

    if-eqz v8, :cond_70

    .line 201
    invoke-virtual {v0, v1}, Ls0/y;->skipBits(I)V

    :cond_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 202
    :cond_72
    :goto_51
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    move-result v1

    const/4 v2, 0x1

    :goto_52
    if-gt v2, v1, :cond_73

    const/16 v4, 0x8

    .line 203
    invoke-virtual {v0, v4}, Ls0/y;->skipBits(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 204
    :cond_73
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 205
    invoke-virtual {v0}, Ls0/y;->byteAlign()V

    .line 206
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v1

    if-nez v1, :cond_74

    .line 207
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v1

    goto :goto_53

    :cond_74
    const/4 v1, 0x1

    :goto_53
    if-eqz v1, :cond_75

    .line 208
    invoke-virtual {v0}, Ls0/y;->skipBit()V

    .line 209
    :cond_75
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v1

    .line 210
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v2

    if-nez v1, :cond_76

    if-eqz v2, :cond_7c

    :cond_76
    move/from16 v4, v17

    :goto_54
    if-ge v4, v15, :cond_7c

    move/from16 v8, v17

    .line 211
    :goto_55
    aget v9, v22, v4

    if-ge v8, v9, :cond_7b

    if-eqz v1, :cond_77

    .line 212
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v9

    goto :goto_56

    :cond_77
    move/from16 v9, v17

    :goto_56
    if-eqz v2, :cond_78

    .line 213
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v10

    goto :goto_57

    :cond_78
    move/from16 v10, v17

    :goto_57
    if-eqz v9, :cond_79

    const/16 v9, 0x20

    .line 214
    invoke-virtual {v0, v9}, Ls0/y;->skipBits(I)V

    :cond_79
    if-eqz v10, :cond_7a

    const/16 v9, 0x12

    .line 215
    invoke-virtual {v0, v9}, Ls0/y;->skipBits(I)V

    :cond_7a
    add-int/lit8 v8, v8, 0x1

    goto :goto_55

    :cond_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 216
    :cond_7c
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v4, 0x4

    .line 217
    invoke-virtual {v0, v4}, Ls0/y;->readBits(I)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    goto :goto_58

    :cond_7d
    move v2, v7

    .line 218
    :goto_58
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)LQ3/s;

    move-result-object v4

    .line 219
    new-array v8, v7, [I

    move/from16 v9, v17

    :goto_59
    if-ge v9, v2, :cond_7f

    const/4 v12, 0x3

    .line 220
    invoke-virtual {v0, v12}, Ls0/y;->skipBits(I)V

    .line 221
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    move-result v10

    if-eqz v10, :cond_7e

    const/4 v10, 0x1

    :goto_5a
    const/16 v11, 0x8

    goto :goto_5b

    :cond_7e
    move/from16 v10, v16

    goto :goto_5a

    .line 222
    :goto_5b
    invoke-virtual {v0, v11}, Ls0/y;->readBits(I)I

    move-result v13

    invoke-static {v13}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v13

    .line 223
    invoke-virtual {v0, v11}, Ls0/y;->readBits(I)I

    move-result v14

    .line 224
    invoke-static {v14}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v14

    .line 225
    invoke-virtual {v0, v11}, Ls0/y;->skipBits(I)V

    .line 226
    new-instance v15, Ls0/q;

    invoke-direct {v15, v13, v10, v14}, Ls0/q;-><init>(III)V

    .line 227
    invoke-virtual {v4, v15}, LQ3/s;->add(Ljava/lang/Object;)LQ3/s;

    add-int/lit8 v9, v9, 0x1

    goto :goto_59

    :cond_7f
    if-eqz v1, :cond_80

    const/4 v9, 0x1

    if-le v2, v9, :cond_80

    move/from16 v14, v17

    :goto_5c
    if-ge v14, v7, :cond_80

    const/4 v1, 0x4

    .line 228
    invoke-virtual {v0, v1}, Ls0/y;->readBits(I)I

    move-result v2

    aput v2, v8, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_5c

    .line 229
    :cond_80
    new-instance v11, Ls0/r;

    invoke-virtual {v4}, LQ3/s;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v11, v0, v8}, Ls0/r;-><init>(Ljava/util/List;[I)V

    goto :goto_5d

    :cond_81
    const/4 v11, 0x0

    .line 230
    :goto_5d
    new-instance v1, Ls0/s;

    new-instance v4, Ls0/l;

    invoke-direct {v4, v3, v6}, Ls0/l;-><init>(Ljava/util/List;[I)V

    move-object/from16 v3, p1

    move-object v6, v11

    move-object/from16 v2, v28

    invoke-direct/range {v1 .. v6}, Ls0/s;-><init>(Ls0/j;Ljava/util/List;Ls0/l;Ls0/n;Ls0/r;)V

    return-object v1

    .line 231
    :goto_5e
    new-instance v1, Ls0/s;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Ls0/s;-><init>(Ls0/j;Ljava/util/List;Ls0/l;Ls0/n;Ls0/r;)V

    return-object v1

    .line 232
    :goto_5f
    new-instance v1, Ls0/s;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Ls0/s;-><init>(Ls0/j;Ljava/util/List;Ls0/l;Ls0/n;Ls0/r;)V

    return-object v1

    .line 233
    :cond_82
    :goto_60
    new-instance v1, Ls0/s;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Ls0/s;-><init>(Ls0/j;Ljava/util/List;Ls0/l;Ls0/n;Ls0/r;)V

    return-object v1
.end method

.method public static parsePpsNalUnit([BII)Ls0/t;
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Ls0/v;->parsePpsNalUnitPayload([BII)Ls0/t;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static parsePpsNalUnitPayload([BII)Ls0/t;
    .locals 1

    .line 1
    new-instance v0, Ls0/y;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Ls0/y;-><init>([BII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {v0}, Ls0/y;->skipBit()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    new-instance v0, Ls0/t;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1, p2}, Ls0/t;-><init>(IIZ)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static parseSpsNalUnit([BII)Ls0/u;
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Ls0/v;->parseSpsNalUnitPayload([BII)Ls0/u;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static parseSpsNalUnitPayload([BII)Ls0/u;
    .locals 32

    .line 1
    new-instance v0, Ls0/y;

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p1

    .line 6
    .line 7
    move/from16 v3, p2

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Ls0/y;-><init>([BII)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ls0/y;->readBits(I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v0, v1}, Ls0/y;->readBits(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {v0, v1}, Ls0/y;->readBits(I)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/16 v2, 0x56

    .line 31
    .line 32
    const/16 v7, 0x2c

    .line 33
    .line 34
    const/16 v8, 0xf4

    .line 35
    .line 36
    const/16 v9, 0x7a

    .line 37
    .line 38
    const/16 v10, 0x6e

    .line 39
    .line 40
    const/4 v11, 0x3

    .line 41
    const/4 v13, 0x1

    .line 42
    const/16 v15, 0x64

    .line 43
    .line 44
    if-eq v3, v15, :cond_1

    .line 45
    .line 46
    if-eq v3, v10, :cond_1

    .line 47
    .line 48
    if-eq v3, v9, :cond_1

    .line 49
    .line 50
    if-eq v3, v8, :cond_1

    .line 51
    .line 52
    if-eq v3, v7, :cond_1

    .line 53
    .line 54
    const/16 v14, 0x53

    .line 55
    .line 56
    if-eq v3, v14, :cond_1

    .line 57
    .line 58
    if-eq v3, v2, :cond_1

    .line 59
    .line 60
    const/16 v14, 0x76

    .line 61
    .line 62
    if-eq v3, v14, :cond_1

    .line 63
    .line 64
    const/16 v14, 0x80

    .line 65
    .line 66
    if-eq v3, v14, :cond_1

    .line 67
    .line 68
    const/16 v14, 0x8a

    .line 69
    .line 70
    if-ne v3, v14, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    move v14, v13

    .line 74
    const/16 p1, 0x10

    .line 75
    .line 76
    const/4 v12, 0x0

    .line 77
    const/16 v16, 0x0

    .line 78
    .line 79
    const/16 v17, 0x0

    .line 80
    .line 81
    goto/16 :goto_8

    .line 82
    .line 83
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    if-ne v14, v11, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 90
    .line 91
    .line 92
    move-result v16

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/16 v16, 0x0

    .line 95
    .line 96
    :goto_1
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 97
    .line 98
    .line 99
    move-result v17

    .line 100
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 101
    .line 102
    .line 103
    move-result v18

    .line 104
    invoke-virtual {v0}, Ls0/y;->skipBit()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 108
    .line 109
    .line 110
    move-result v19

    .line 111
    if-eqz v19, :cond_8

    .line 112
    .line 113
    if-eq v14, v11, :cond_3

    .line 114
    .line 115
    move v12, v1

    .line 116
    :goto_2
    const/16 p1, 0x10

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_3
    const/16 v19, 0xc

    .line 120
    .line 121
    move/from16 v12, v19

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :goto_3
    const/4 v1, 0x0

    .line 125
    :goto_4
    if-ge v1, v12, :cond_9

    .line 126
    .line 127
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 128
    .line 129
    .line 130
    move-result v19

    .line 131
    if-eqz v19, :cond_7

    .line 132
    .line 133
    const/4 v8, 0x6

    .line 134
    if-ge v1, v8, :cond_4

    .line 135
    .line 136
    move/from16 v8, p1

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_4
    const/16 v8, 0x40

    .line 140
    .line 141
    :goto_5
    const/4 v9, 0x0

    .line 142
    const/16 v20, 0x8

    .line 143
    .line 144
    const/16 v21, 0x8

    .line 145
    .line 146
    :goto_6
    if-ge v9, v8, :cond_7

    .line 147
    .line 148
    if-eqz v20, :cond_5

    .line 149
    .line 150
    invoke-virtual {v0}, Ls0/y;->readSignedExpGolombCodedInt()I

    .line 151
    .line 152
    .line 153
    move-result v20

    .line 154
    add-int v10, v20, v21

    .line 155
    .line 156
    add-int/lit16 v10, v10, 0x100

    .line 157
    .line 158
    rem-int/lit16 v10, v10, 0x100

    .line 159
    .line 160
    move/from16 v20, v10

    .line 161
    .line 162
    :cond_5
    if-nez v20, :cond_6

    .line 163
    .line 164
    goto :goto_7

    .line 165
    :cond_6
    move/from16 v21, v20

    .line 166
    .line 167
    :goto_7
    add-int/lit8 v9, v9, 0x1

    .line 168
    .line 169
    const/16 v10, 0x6e

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 173
    .line 174
    const/16 v8, 0xf4

    .line 175
    .line 176
    const/16 v9, 0x7a

    .line 177
    .line 178
    const/16 v10, 0x6e

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_8
    const/16 p1, 0x10

    .line 182
    .line 183
    :cond_9
    move/from16 v12, v18

    .line 184
    .line 185
    :goto_8
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    add-int/lit8 v1, v1, 0x4

    .line 190
    .line 191
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    if-nez v8, :cond_a

    .line 196
    .line 197
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    add-int/lit8 v9, v9, 0x4

    .line 202
    .line 203
    move/from16 v23, v8

    .line 204
    .line 205
    :goto_9
    const/16 v18, 0x0

    .line 206
    .line 207
    goto :goto_b

    .line 208
    :cond_a
    if-ne v8, v13, :cond_c

    .line 209
    .line 210
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    invoke-virtual {v0}, Ls0/y;->readSignedExpGolombCodedInt()I

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Ls0/y;->readSignedExpGolombCodedInt()I

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    move/from16 v18, v3

    .line 225
    .line 226
    int-to-long v2, v10

    .line 227
    move/from16 v23, v8

    .line 228
    .line 229
    const/4 v10, 0x0

    .line 230
    :goto_a
    int-to-long v7, v10

    .line 231
    cmp-long v7, v7, v2

    .line 232
    .line 233
    if-gez v7, :cond_b

    .line 234
    .line 235
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 236
    .line 237
    .line 238
    add-int/lit8 v10, v10, 0x1

    .line 239
    .line 240
    goto :goto_a

    .line 241
    :cond_b
    move/from16 v3, v18

    .line 242
    .line 243
    move/from16 v18, v9

    .line 244
    .line 245
    const/4 v9, 0x0

    .line 246
    goto :goto_b

    .line 247
    :cond_c
    move/from16 v23, v8

    .line 248
    .line 249
    const/4 v9, 0x0

    .line 250
    goto :goto_9

    .line 251
    :goto_b
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    invoke-virtual {v0}, Ls0/y;->skipBit()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    add-int/2addr v2, v13

    .line 263
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    add-int/2addr v8, v13

    .line 268
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 269
    .line 270
    .line 271
    move-result v10

    .line 272
    rsub-int/lit8 v24, v10, 0x2

    .line 273
    .line 274
    mul-int v24, v24, v8

    .line 275
    .line 276
    if-nez v10, :cond_d

    .line 277
    .line 278
    invoke-virtual {v0}, Ls0/y;->skipBit()V

    .line 279
    .line 280
    .line 281
    :cond_d
    invoke-virtual {v0}, Ls0/y;->skipBit()V

    .line 282
    .line 283
    .line 284
    mul-int/lit8 v2, v2, 0x10

    .line 285
    .line 286
    mul-int/lit8 v24, v24, 0x10

    .line 287
    .line 288
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 289
    .line 290
    .line 291
    move-result v8

    .line 292
    const/16 v25, 0x2

    .line 293
    .line 294
    if-eqz v8, :cond_11

    .line 295
    .line 296
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 301
    .line 302
    .line 303
    move-result v26

    .line 304
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 305
    .line 306
    .line 307
    move-result v27

    .line 308
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 309
    .line 310
    .line 311
    move-result v28

    .line 312
    if-nez v14, :cond_e

    .line 313
    .line 314
    rsub-int/lit8 v14, v10, 0x2

    .line 315
    .line 316
    move/from16 v29, v13

    .line 317
    .line 318
    goto :goto_e

    .line 319
    :cond_e
    if-ne v14, v11, :cond_f

    .line 320
    .line 321
    move/from16 v29, v13

    .line 322
    .line 323
    goto :goto_c

    .line 324
    :cond_f
    move/from16 v29, v25

    .line 325
    .line 326
    :goto_c
    if-ne v14, v13, :cond_10

    .line 327
    .line 328
    move/from16 v14, v25

    .line 329
    .line 330
    goto :goto_d

    .line 331
    :cond_10
    move v14, v13

    .line 332
    :goto_d
    rsub-int/lit8 v30, v10, 0x2

    .line 333
    .line 334
    mul-int v14, v14, v30

    .line 335
    .line 336
    :goto_e
    add-int v8, v8, v26

    .line 337
    .line 338
    mul-int v8, v8, v29

    .line 339
    .line 340
    sub-int/2addr v2, v8

    .line 341
    add-int v27, v27, v28

    .line 342
    .line 343
    mul-int v27, v27, v14

    .line 344
    .line 345
    sub-int v24, v24, v27

    .line 346
    .line 347
    :cond_11
    move v8, v2

    .line 348
    const/16 v2, 0x2c

    .line 349
    .line 350
    if-eq v3, v2, :cond_12

    .line 351
    .line 352
    const/16 v2, 0x56

    .line 353
    .line 354
    if-eq v3, v2, :cond_12

    .line 355
    .line 356
    if-eq v3, v15, :cond_12

    .line 357
    .line 358
    const/16 v2, 0x6e

    .line 359
    .line 360
    if-eq v3, v2, :cond_12

    .line 361
    .line 362
    const/16 v2, 0x7a

    .line 363
    .line 364
    if-eq v3, v2, :cond_12

    .line 365
    .line 366
    const/16 v2, 0xf4

    .line 367
    .line 368
    if-ne v3, v2, :cond_13

    .line 369
    .line 370
    :cond_12
    and-int/lit8 v2, v4, 0x10

    .line 371
    .line 372
    if-eqz v2, :cond_13

    .line 373
    .line 374
    const/4 v14, 0x0

    .line 375
    goto :goto_f

    .line 376
    :cond_13
    move/from16 v14, p1

    .line 377
    .line 378
    :goto_f
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    const/high16 v19, 0x3f800000    # 1.0f

    .line 383
    .line 384
    if-eqz v2, :cond_22

    .line 385
    .line 386
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    if-eqz v2, :cond_16

    .line 391
    .line 392
    const/16 v2, 0x8

    .line 393
    .line 394
    invoke-virtual {v0, v2}, Ls0/y;->readBits(I)I

    .line 395
    .line 396
    .line 397
    move-result v13

    .line 398
    const/16 v2, 0xff

    .line 399
    .line 400
    if-ne v13, v2, :cond_14

    .line 401
    .line 402
    move/from16 v2, p1

    .line 403
    .line 404
    invoke-virtual {v0, v2}, Ls0/y;->readBits(I)I

    .line 405
    .line 406
    .line 407
    move-result v13

    .line 408
    invoke-virtual {v0, v2}, Ls0/y;->readBits(I)I

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    if-eqz v13, :cond_16

    .line 413
    .line 414
    if-eqz v2, :cond_16

    .line 415
    .line 416
    int-to-float v13, v13

    .line 417
    int-to-float v2, v2

    .line 418
    div-float v19, v13, v2

    .line 419
    .line 420
    goto :goto_10

    .line 421
    :cond_14
    const/16 v2, 0x11

    .line 422
    .line 423
    if-ge v13, v2, :cond_15

    .line 424
    .line 425
    sget-object v2, Ls0/v;->b:[F

    .line 426
    .line 427
    aget v19, v2, v13

    .line 428
    .line 429
    goto :goto_10

    .line 430
    :cond_15
    const-string v2, "Unexpected aspect_ratio_idc value: "

    .line 431
    .line 432
    const-string v15, "NalUnitUtil"

    .line 433
    .line 434
    invoke-static {v13, v2, v15}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    :cond_16
    :goto_10
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    if-eqz v2, :cond_17

    .line 442
    .line 443
    invoke-virtual {v0}, Ls0/y;->skipBit()V

    .line 444
    .line 445
    .line 446
    :cond_17
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    if-eqz v2, :cond_1a

    .line 451
    .line 452
    invoke-virtual {v0, v11}, Ls0/y;->skipBits(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    if-eqz v2, :cond_18

    .line 460
    .line 461
    const/4 v13, 0x1

    .line 462
    goto :goto_11

    .line 463
    :cond_18
    move/from16 v13, v25

    .line 464
    .line 465
    :goto_11
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    if-eqz v2, :cond_19

    .line 470
    .line 471
    const/16 v2, 0x8

    .line 472
    .line 473
    invoke-virtual {v0, v2}, Ls0/y;->readBits(I)I

    .line 474
    .line 475
    .line 476
    move-result v11

    .line 477
    invoke-virtual {v0, v2}, Ls0/y;->readBits(I)I

    .line 478
    .line 479
    .line 480
    move-result v15

    .line 481
    invoke-virtual {v0, v2}, Ls0/y;->skipBits(I)V

    .line 482
    .line 483
    .line 484
    invoke-static {v11}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    invoke-static {v15}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    .line 489
    .line 490
    .line 491
    move-result v15

    .line 492
    move/from16 v31, v15

    .line 493
    .line 494
    move v15, v2

    .line 495
    move/from16 v2, v31

    .line 496
    .line 497
    goto :goto_13

    .line 498
    :cond_19
    const/4 v2, -0x1

    .line 499
    :goto_12
    const/4 v15, -0x1

    .line 500
    goto :goto_13

    .line 501
    :cond_1a
    const/4 v2, -0x1

    .line 502
    const/4 v13, -0x1

    .line 503
    goto :goto_12

    .line 504
    :goto_13
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 505
    .line 506
    .line 507
    move-result v11

    .line 508
    if-eqz v11, :cond_1b

    .line 509
    .line 510
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 514
    .line 515
    .line 516
    :cond_1b
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 517
    .line 518
    .line 519
    move-result v11

    .line 520
    if-eqz v11, :cond_1c

    .line 521
    .line 522
    const/16 v11, 0x41

    .line 523
    .line 524
    invoke-virtual {v0, v11}, Ls0/y;->skipBits(I)V

    .line 525
    .line 526
    .line 527
    :cond_1c
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 528
    .line 529
    .line 530
    move-result v11

    .line 531
    if-eqz v11, :cond_1d

    .line 532
    .line 533
    invoke-static {v0}, Ls0/v;->d(Ls0/y;)V

    .line 534
    .line 535
    .line 536
    :cond_1d
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 537
    .line 538
    .line 539
    move-result v20

    .line 540
    if-eqz v20, :cond_1e

    .line 541
    .line 542
    invoke-static {v0}, Ls0/v;->d(Ls0/y;)V

    .line 543
    .line 544
    .line 545
    :cond_1e
    if-nez v11, :cond_1f

    .line 546
    .line 547
    if-eqz v20, :cond_20

    .line 548
    .line 549
    :cond_1f
    invoke-virtual {v0}, Ls0/y;->skipBit()V

    .line 550
    .line 551
    .line 552
    :cond_20
    invoke-virtual {v0}, Ls0/y;->skipBit()V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0}, Ls0/y;->readBit()Z

    .line 556
    .line 557
    .line 558
    move-result v11

    .line 559
    if-eqz v11, :cond_21

    .line 560
    .line 561
    invoke-virtual {v0}, Ls0/y;->skipBit()V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 571
    .line 572
    .line 573
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 574
    .line 575
    .line 576
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 577
    .line 578
    .line 579
    move-result v14

    .line 580
    invoke-virtual {v0}, Ls0/y;->readUnsignedExpGolombCodedInt()I

    .line 581
    .line 582
    .line 583
    :cond_21
    move/from16 v21, v2

    .line 584
    .line 585
    move/from16 v20, v13

    .line 586
    .line 587
    move/from16 v22, v14

    .line 588
    .line 589
    move v14, v10

    .line 590
    move/from16 v10, v19

    .line 591
    .line 592
    move/from16 v19, v15

    .line 593
    .line 594
    goto :goto_14

    .line 595
    :cond_22
    move/from16 v22, v14

    .line 596
    .line 597
    const/16 v20, -0x1

    .line 598
    .line 599
    const/16 v21, -0x1

    .line 600
    .line 601
    move v14, v10

    .line 602
    move/from16 v10, v19

    .line 603
    .line 604
    const/16 v19, -0x1

    .line 605
    .line 606
    :goto_14
    new-instance v2, Ls0/u;

    .line 607
    .line 608
    move v15, v1

    .line 609
    move/from16 v13, v16

    .line 610
    .line 611
    move/from16 v11, v17

    .line 612
    .line 613
    move/from16 v16, v23

    .line 614
    .line 615
    move/from16 v17, v9

    .line 616
    .line 617
    move/from16 v9, v24

    .line 618
    .line 619
    invoke-direct/range {v2 .. v22}, Ls0/u;-><init>(IIIIIIIFIIZZIIIZIIII)V

    .line 620
    .line 621
    .line 622
    return-object v2
.end method

.method public static unescapeStream([BI)I
    .locals 8

    .line 1
    sget-object v0, Ls0/v;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    move v3, v2

    .line 7
    :cond_0
    :goto_0
    if-ge v2, p1, :cond_4

    .line 8
    .line 9
    :goto_1
    add-int/lit8 v4, p1, -0x2

    .line 10
    .line 11
    if-ge v2, v4, :cond_2

    .line 12
    .line 13
    :try_start_0
    aget-byte v4, p0, v2

    .line 14
    .line 15
    if-nez v4, :cond_1

    .line 16
    .line 17
    add-int/lit8 v4, v2, 0x1

    .line 18
    .line 19
    aget-byte v4, p0, v4

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    add-int/lit8 v4, v2, 0x2

    .line 24
    .line 25
    aget-byte v4, p0, v4

    .line 26
    .line 27
    const/4 v5, 0x3

    .line 28
    if-ne v4, v5, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v2, p1

    .line 35
    :goto_2
    if-ge v2, p1, :cond_0

    .line 36
    .line 37
    sget-object v4, Ls0/v;->d:[I

    .line 38
    .line 39
    array-length v5, v4

    .line 40
    if-gt v5, v3, :cond_3

    .line 41
    .line 42
    array-length v5, v4

    .line 43
    mul-int/lit8 v5, v5, 0x2

    .line 44
    .line 45
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    sput-object v4, Ls0/v;->d:[I

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_5

    .line 54
    :cond_3
    :goto_3
    sget-object v4, Ls0/v;->d:[I

    .line 55
    .line 56
    add-int/lit8 v5, v3, 0x1

    .line 57
    .line 58
    aput v2, v4, v3

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x3

    .line 61
    .line 62
    move v3, v5

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    sub-int/2addr p1, v3

    .line 65
    move v2, v1

    .line 66
    move v4, v2

    .line 67
    move v5, v4

    .line 68
    :goto_4
    if-ge v2, v3, :cond_5

    .line 69
    .line 70
    sget-object v6, Ls0/v;->d:[I

    .line 71
    .line 72
    aget v6, v6, v2

    .line 73
    .line 74
    sub-int/2addr v6, v5

    .line 75
    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    .line 77
    .line 78
    add-int/2addr v4, v6

    .line 79
    add-int/lit8 v7, v4, 0x1

    .line 80
    .line 81
    aput-byte v1, p0, v4

    .line 82
    .line 83
    add-int/lit8 v4, v4, 0x2

    .line 84
    .line 85
    aput-byte v1, p0, v7

    .line 86
    .line 87
    add-int/lit8 v6, v6, 0x3

    .line 88
    .line 89
    add-int/2addr v5, v6

    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    sub-int v1, p1, v4

    .line 94
    .line 95
    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    .line 97
    .line 98
    monitor-exit v0

    .line 99
    return p1

    .line 100
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p0
.end method
