.class public abstract Lv0/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getVorbisToAndroidChannelLayoutMapping(I)[I
    .locals 9

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x6

    .line 6
    const/4 v4, 0x5

    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x2

    .line 10
    const/4 v8, 0x1

    .line 11
    if-eq p0, v5, :cond_4

    .line 12
    .line 13
    if-eq p0, v4, :cond_3

    .line 14
    .line 15
    if-eq p0, v3, :cond_2

    .line 16
    .line 17
    if-eq p0, v1, :cond_1

    .line 18
    .line 19
    if-eq p0, v0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_0
    new-array p0, v0, [I

    .line 24
    .line 25
    fill-array-data p0, :array_0

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    new-array p0, v1, [I

    .line 30
    .line 31
    fill-array-data p0, :array_1

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    new-array p0, v3, [I

    .line 36
    .line 37
    fill-array-data p0, :array_2

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    filled-new-array {v6, v7, v8, v5, v2}, [I

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_4
    filled-new-array {v6, v7, v8}, [I

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x7
        0x5
        0x6
        0x3
        0x4
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 4
        0x0
        0x2
        0x1
        0x6
        0x5
        0x3
        0x4
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_2
    .array-data 4
        0x0
        0x2
        0x1
        0x5
        0x3
        0x4
    .end array-data
.end method

.method public static iLog(I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-lez p0, :cond_0

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    ushr-int/lit8 p0, p0, 0x1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    return v0
.end method

.method public static parseVorbisComments(Ljava/util/List;)Landroidx/media3/common/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/common/Metadata;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v2, v3, :cond_2

    .line 13
    .line 14
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Ljava/lang/String;

    .line 19
    .line 20
    const-string v4, "="

    .line 21
    .line 22
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    array-length v5, v4

    .line 27
    const/4 v6, 0x2

    .line 28
    const-string v7, "VorbisUtil"

    .line 29
    .line 30
    if-eq v5, v6, :cond_0

    .line 31
    .line 32
    const-string v4, "Failed to parse Vorbis comment: "

    .line 33
    .line 34
    invoke-static {v4, v3, v7}, LA/i;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    aget-object v3, v4, v1

    .line 39
    .line 40
    const-string v5, "METADATA_BLOCK_PICTURE"

    .line 41
    .line 42
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v5, 0x1

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    :try_start_0
    aget-object v3, v4, v5

    .line 50
    .line 51
    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    .line 56
    .line 57
    invoke-direct {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 58
    .line 59
    .line 60
    invoke-static {v4}, LH0/a;->fromPictureBlock(Landroidx/media3/common/util/ParsableByteArray;)LH0/a;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v3

    .line 69
    const-string v4, "Failed to parse vorbis picture"

    .line 70
    .line 71
    invoke-static {v7, v4, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    new-instance v3, LM0/a;

    .line 76
    .line 77
    aget-object v6, v4, v1

    .line 78
    .line 79
    aget-object v4, v4, v5

    .line 80
    .line 81
    invoke-direct {v3, v6, v4}, LM0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_3

    .line 95
    .line 96
    const/4 p0, 0x0

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    new-instance p0, Landroidx/media3/common/Metadata;

    .line 99
    .line 100
    invoke-direct {p0, v0}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    :goto_2
    return-object p0
.end method

.method public static parseVorbisCsdFromEsdsInitializationData([B)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/collect/ImmutableList<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/16 v5, 0xff

    .line 17
    .line 18
    if-lez v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ne v4, v5, :cond_0

    .line 25
    .line 26
    add-int/lit16 v3, v3, 0xff

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    add-int/2addr v4, v3

    .line 37
    move v3, v2

    .line 38
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-lez v6, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-ne v6, v5, :cond_1

    .line 49
    .line 50
    add-int/lit16 v3, v3, 0xff

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v1, v3

    .line 61
    new-array v3, v4, [B

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {p0, v0, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .line 69
    .line 70
    add-int/2addr v0, v4

    .line 71
    add-int/2addr v0, v1

    .line 72
    array-length v1, p0

    .line 73
    sub-int/2addr v1, v0

    .line 74
    new-array v4, v1, [B

    .line 75
    .line 76
    invoke-static {p0, v0, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    invoke-static {v3, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public static readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;)Lv0/u0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, v0}, Lv0/x0;->readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;ZZ)Lv0/u0;

    move-result-object p0

    return-object p0
.end method

.method public static readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;ZZ)Lv0/u0;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 2
    invoke-static {p1, p0, v0}, Lv0/x0;->verifyVorbisHeaderCapturePattern(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v1

    long-to-int p1, v1

    .line 4
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    long-to-int v4, v2

    .line 7
    new-array v4, v4, [Ljava/lang/String;

    add-int/lit8 v1, v1, 0xf

    :goto_0
    int-to-long v5, v0

    cmp-long v5, v5, v2

    if-gez v5, :cond_1

    .line 8
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/lit8 v1, v1, 0x4

    .line 9
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 10
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    const-string p0, "framing bit expected to be set"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 13
    new-instance p0, Lv0/u0;

    invoke-direct {p0, p1, v4, v1}, Lv0/u0;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0
.end method

.method public static readVorbisIdentificationHeader(Landroidx/media3/common/util/ParsableByteArray;)Lv0/w0;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, v1}, Lv0/x0;->verifyVorbisHeaderCapturePattern(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v6, -0x1

    .line 23
    if-gtz v2, :cond_0

    .line 24
    .line 25
    move v2, v6

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-gtz v7, :cond_1

    .line 31
    .line 32
    move v7, v6

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-gtz v8, :cond_2

    .line 38
    .line 39
    move v8, v6

    .line 40
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    and-int/lit8 v9, v6, 0xf

    .line 45
    .line 46
    int-to-double v9, v9

    .line 47
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 48
    .line 49
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 50
    .line 51
    .line 52
    move-result-wide v9

    .line 53
    double-to-int v9, v9

    .line 54
    and-int/lit16 v6, v6, 0xf0

    .line 55
    .line 56
    shr-int/lit8 v6, v6, 0x4

    .line 57
    .line 58
    int-to-double v13, v6

    .line 59
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 60
    .line 61
    .line 62
    move-result-wide v10

    .line 63
    double-to-int v10, v10

    .line 64
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    and-int/2addr v6, v0

    .line 69
    if-lez v6, :cond_3

    .line 70
    .line 71
    move v11, v0

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    move v11, v1

    .line 74
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    move v6, v2

    .line 87
    new-instance v2, Lv0/w0;

    .line 88
    .line 89
    invoke-direct/range {v2 .. v12}, Lv0/w0;-><init>(IIIIIIIIZ[B)V

    .line 90
    .line 91
    .line 92
    return-object v2
.end method

.method public static readVorbisModes(Landroidx/media3/common/util/ParsableByteArray;I)[Lv0/v0;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    move-object/from16 v3, p0

    .line 6
    .line 7
    invoke-static {v1, v3, v2}, Lv0/x0;->verifyVorbisHeaderCapturePattern(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x1

    .line 15
    add-int/2addr v4, v5

    .line 16
    new-instance v6, Lv0/t0;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    invoke-direct {v6, v7}, Lv0/t0;-><init>([B)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/16 v7, 0x8

    .line 30
    .line 31
    mul-int/2addr v3, v7

    .line 32
    invoke-virtual {v6, v3}, Lv0/t0;->skipBits(I)V

    .line 33
    .line 34
    .line 35
    move v3, v2

    .line 36
    :goto_0
    const/16 v8, 0x18

    .line 37
    .line 38
    const/4 v9, 0x4

    .line 39
    const/4 v10, 0x2

    .line 40
    const/16 v11, 0x10

    .line 41
    .line 42
    const/4 v12, 0x0

    .line 43
    if-ge v3, v4, :cond_a

    .line 44
    .line 45
    invoke-virtual {v6, v8}, Lv0/t0;->readBits(I)I

    .line 46
    .line 47
    .line 48
    move-result v13

    .line 49
    const v14, 0x564342

    .line 50
    .line 51
    .line 52
    if-ne v13, v14, :cond_9

    .line 53
    .line 54
    invoke-virtual {v6, v11}, Lv0/t0;->readBits(I)I

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    invoke-virtual {v6, v8}, Lv0/t0;->readBits(I)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    invoke-virtual {v6}, Lv0/t0;->readBit()Z

    .line 63
    .line 64
    .line 65
    move-result v13

    .line 66
    if-nez v13, :cond_2

    .line 67
    .line 68
    invoke-virtual {v6}, Lv0/t0;->readBit()Z

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    move v14, v2

    .line 73
    :goto_1
    if-ge v14, v8, :cond_3

    .line 74
    .line 75
    if-eqz v13, :cond_0

    .line 76
    .line 77
    invoke-virtual {v6}, Lv0/t0;->readBit()Z

    .line 78
    .line 79
    .line 80
    move-result v15

    .line 81
    if-eqz v15, :cond_1

    .line 82
    .line 83
    invoke-virtual {v6, v1}, Lv0/t0;->skipBits(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_0
    invoke-virtual {v6, v1}, Lv0/t0;->skipBits(I)V

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_2
    add-int/lit8 v14, v14, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {v6, v1}, Lv0/t0;->skipBits(I)V

    .line 94
    .line 95
    .line 96
    move v13, v2

    .line 97
    :goto_3
    if-ge v13, v8, :cond_3

    .line 98
    .line 99
    sub-int v14, v8, v13

    .line 100
    .line 101
    invoke-static {v14}, Lv0/x0;->iLog(I)I

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    invoke-virtual {v6, v14}, Lv0/t0;->readBits(I)I

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    add-int/2addr v13, v14

    .line 110
    goto :goto_3

    .line 111
    :cond_3
    invoke-virtual {v6, v9}, Lv0/t0;->readBits(I)I

    .line 112
    .line 113
    .line 114
    move-result v13

    .line 115
    if-gt v13, v10, :cond_8

    .line 116
    .line 117
    if-eq v13, v5, :cond_4

    .line 118
    .line 119
    if-ne v13, v10, :cond_7

    .line 120
    .line 121
    :cond_4
    const/16 v10, 0x20

    .line 122
    .line 123
    invoke-virtual {v6, v10}, Lv0/t0;->skipBits(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v10}, Lv0/t0;->skipBits(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v9}, Lv0/t0;->readBits(I)I

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    add-int/2addr v9, v5

    .line 134
    invoke-virtual {v6, v5}, Lv0/t0;->skipBits(I)V

    .line 135
    .line 136
    .line 137
    if-ne v13, v5, :cond_6

    .line 138
    .line 139
    if-eqz v11, :cond_5

    .line 140
    .line 141
    int-to-long v12, v8

    .line 142
    int-to-long v10, v11

    .line 143
    long-to-double v12, v12

    .line 144
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 145
    .line 146
    long-to-double v10, v10

    .line 147
    div-double/2addr v14, v10

    .line 148
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 149
    .line 150
    .line 151
    move-result-wide v10

    .line 152
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    .line 153
    .line 154
    .line 155
    move-result-wide v10

    .line 156
    double-to-long v10, v10

    .line 157
    goto :goto_4

    .line 158
    :cond_5
    const-wide/16 v10, 0x0

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_6
    int-to-long v12, v8

    .line 162
    int-to-long v10, v11

    .line 163
    mul-long/2addr v10, v12

    .line 164
    :goto_4
    int-to-long v8, v9

    .line 165
    mul-long/2addr v10, v8

    .line 166
    long-to-int v8, v10

    .line 167
    invoke-virtual {v6, v8}, Lv0/t0;->skipBits(I)V

    .line 168
    .line 169
    .line 170
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v1, "lookup type greater than 2 not decodable: "

    .line 177
    .line 178
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v0, v12}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    throw v0

    .line 193
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v1, "expected code book to start with [0x56, 0x43, 0x42] at "

    .line 196
    .line 197
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6}, Lv0/t0;->getPosition()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0, v12}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    throw v0

    .line 216
    :cond_a
    const/4 v3, 0x6

    .line 217
    invoke-virtual {v6, v3}, Lv0/t0;->readBits(I)I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    add-int/2addr v4, v5

    .line 222
    move v13, v2

    .line 223
    :goto_5
    if-ge v13, v4, :cond_c

    .line 224
    .line 225
    invoke-virtual {v6, v11}, Lv0/t0;->readBits(I)I

    .line 226
    .line 227
    .line 228
    move-result v14

    .line 229
    if-nez v14, :cond_b

    .line 230
    .line 231
    add-int/lit8 v13, v13, 0x1

    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_b
    const-string v0, "placeholder of time domain transforms not zeroed out"

    .line 235
    .line 236
    invoke-static {v0, v12}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    throw v0

    .line 241
    :cond_c
    invoke-virtual {v6, v3}, Lv0/t0;->readBits(I)I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    add-int/2addr v4, v5

    .line 246
    move v13, v2

    .line 247
    :goto_6
    const/4 v14, 0x3

    .line 248
    if-ge v13, v4, :cond_16

    .line 249
    .line 250
    invoke-virtual {v6, v11}, Lv0/t0;->readBits(I)I

    .line 251
    .line 252
    .line 253
    move-result v15

    .line 254
    if-eqz v15, :cond_14

    .line 255
    .line 256
    if-ne v15, v5, :cond_13

    .line 257
    .line 258
    invoke-virtual {v6, v1}, Lv0/t0;->readBits(I)I

    .line 259
    .line 260
    .line 261
    move-result v15

    .line 262
    new-array v2, v15, [I

    .line 263
    .line 264
    const/16 v16, -0x1

    .line 265
    .line 266
    move/from16 v17, v5

    .line 267
    .line 268
    move/from16 v5, v16

    .line 269
    .line 270
    const/4 v1, 0x0

    .line 271
    :goto_7
    if-ge v1, v15, :cond_e

    .line 272
    .line 273
    invoke-virtual {v6, v9}, Lv0/t0;->readBits(I)I

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    aput v8, v2, v1

    .line 278
    .line 279
    if-le v8, v5, :cond_d

    .line 280
    .line 281
    move v5, v8

    .line 282
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 283
    .line 284
    const/16 v8, 0x18

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 288
    .line 289
    new-array v1, v5, [I

    .line 290
    .line 291
    const/4 v8, 0x0

    .line 292
    :goto_8
    if-ge v8, v5, :cond_11

    .line 293
    .line 294
    invoke-virtual {v6, v14}, Lv0/t0;->readBits(I)I

    .line 295
    .line 296
    .line 297
    move-result v18

    .line 298
    add-int/lit8 v18, v18, 0x1

    .line 299
    .line 300
    aput v18, v1, v8

    .line 301
    .line 302
    invoke-virtual {v6, v10}, Lv0/t0;->readBits(I)I

    .line 303
    .line 304
    .line 305
    move-result v18

    .line 306
    if-lez v18, :cond_f

    .line 307
    .line 308
    invoke-virtual {v6, v7}, Lv0/t0;->skipBits(I)V

    .line 309
    .line 310
    .line 311
    :cond_f
    const/4 v14, 0x0

    .line 312
    :goto_9
    shl-int v3, v17, v18

    .line 313
    .line 314
    if-ge v14, v3, :cond_10

    .line 315
    .line 316
    invoke-virtual {v6, v7}, Lv0/t0;->skipBits(I)V

    .line 317
    .line 318
    .line 319
    add-int/lit8 v14, v14, 0x1

    .line 320
    .line 321
    goto :goto_9

    .line 322
    :cond_10
    add-int/lit8 v8, v8, 0x1

    .line 323
    .line 324
    const/4 v3, 0x6

    .line 325
    const/4 v14, 0x3

    .line 326
    goto :goto_8

    .line 327
    :cond_11
    invoke-virtual {v6, v10}, Lv0/t0;->skipBits(I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v6, v9}, Lv0/t0;->readBits(I)I

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    const/4 v5, 0x0

    .line 335
    const/4 v8, 0x0

    .line 336
    const/4 v14, 0x0

    .line 337
    :goto_a
    if-ge v5, v15, :cond_15

    .line 338
    .line 339
    aget v18, v2, v5

    .line 340
    .line 341
    aget v18, v1, v18

    .line 342
    .line 343
    add-int v8, v8, v18

    .line 344
    .line 345
    :goto_b
    if-ge v14, v8, :cond_12

    .line 346
    .line 347
    invoke-virtual {v6, v3}, Lv0/t0;->skipBits(I)V

    .line 348
    .line 349
    .line 350
    add-int/lit8 v14, v14, 0x1

    .line 351
    .line 352
    goto :goto_b

    .line 353
    :cond_12
    add-int/lit8 v5, v5, 0x1

    .line 354
    .line 355
    goto :goto_a

    .line 356
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    const-string v1, "floor type greater than 1 not decodable: "

    .line 359
    .line 360
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-static {v0, v12}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    throw v0

    .line 375
    :cond_14
    move/from16 v17, v5

    .line 376
    .line 377
    invoke-virtual {v6, v7}, Lv0/t0;->skipBits(I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v6, v11}, Lv0/t0;->skipBits(I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v6, v11}, Lv0/t0;->skipBits(I)V

    .line 384
    .line 385
    .line 386
    const/4 v1, 0x6

    .line 387
    invoke-virtual {v6, v1}, Lv0/t0;->skipBits(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v6, v7}, Lv0/t0;->skipBits(I)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v6, v9}, Lv0/t0;->readBits(I)I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    add-int/lit8 v1, v1, 0x1

    .line 398
    .line 399
    const/4 v2, 0x0

    .line 400
    :goto_c
    if-ge v2, v1, :cond_15

    .line 401
    .line 402
    invoke-virtual {v6, v7}, Lv0/t0;->skipBits(I)V

    .line 403
    .line 404
    .line 405
    add-int/lit8 v2, v2, 0x1

    .line 406
    .line 407
    goto :goto_c

    .line 408
    :cond_15
    add-int/lit8 v13, v13, 0x1

    .line 409
    .line 410
    move/from16 v5, v17

    .line 411
    .line 412
    const/4 v1, 0x5

    .line 413
    const/4 v2, 0x0

    .line 414
    const/4 v3, 0x6

    .line 415
    const/16 v8, 0x18

    .line 416
    .line 417
    goto/16 :goto_6

    .line 418
    .line 419
    :cond_16
    move v1, v3

    .line 420
    move/from16 v17, v5

    .line 421
    .line 422
    invoke-virtual {v6, v1}, Lv0/t0;->readBits(I)I

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    add-int/lit8 v2, v2, 0x1

    .line 427
    .line 428
    const/4 v3, 0x0

    .line 429
    :goto_d
    if-ge v3, v2, :cond_1d

    .line 430
    .line 431
    invoke-virtual {v6, v11}, Lv0/t0;->readBits(I)I

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    if-gt v4, v10, :cond_1c

    .line 436
    .line 437
    const/16 v4, 0x18

    .line 438
    .line 439
    invoke-virtual {v6, v4}, Lv0/t0;->skipBits(I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v6, v4}, Lv0/t0;->skipBits(I)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v6, v4}, Lv0/t0;->skipBits(I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v6, v1}, Lv0/t0;->readBits(I)I

    .line 449
    .line 450
    .line 451
    move-result v5

    .line 452
    add-int/lit8 v5, v5, 0x1

    .line 453
    .line 454
    invoke-virtual {v6, v7}, Lv0/t0;->skipBits(I)V

    .line 455
    .line 456
    .line 457
    new-array v1, v5, [I

    .line 458
    .line 459
    const/4 v8, 0x0

    .line 460
    :goto_e
    if-ge v8, v5, :cond_18

    .line 461
    .line 462
    const/4 v13, 0x3

    .line 463
    invoke-virtual {v6, v13}, Lv0/t0;->readBits(I)I

    .line 464
    .line 465
    .line 466
    move-result v14

    .line 467
    invoke-virtual {v6}, Lv0/t0;->readBit()Z

    .line 468
    .line 469
    .line 470
    move-result v15

    .line 471
    if-eqz v15, :cond_17

    .line 472
    .line 473
    const/4 v15, 0x5

    .line 474
    invoke-virtual {v6, v15}, Lv0/t0;->readBits(I)I

    .line 475
    .line 476
    .line 477
    move-result v16

    .line 478
    goto :goto_f

    .line 479
    :cond_17
    const/4 v15, 0x5

    .line 480
    const/16 v16, 0x0

    .line 481
    .line 482
    :goto_f
    mul-int/lit8 v16, v16, 0x8

    .line 483
    .line 484
    add-int v16, v16, v14

    .line 485
    .line 486
    aput v16, v1, v8

    .line 487
    .line 488
    add-int/lit8 v8, v8, 0x1

    .line 489
    .line 490
    goto :goto_e

    .line 491
    :cond_18
    const/4 v13, 0x3

    .line 492
    const/4 v15, 0x5

    .line 493
    const/4 v8, 0x0

    .line 494
    :goto_10
    if-ge v8, v5, :cond_1b

    .line 495
    .line 496
    const/4 v14, 0x0

    .line 497
    :goto_11
    if-ge v14, v7, :cond_1a

    .line 498
    .line 499
    aget v16, v1, v8

    .line 500
    .line 501
    shl-int v18, v17, v14

    .line 502
    .line 503
    and-int v16, v16, v18

    .line 504
    .line 505
    if-eqz v16, :cond_19

    .line 506
    .line 507
    invoke-virtual {v6, v7}, Lv0/t0;->skipBits(I)V

    .line 508
    .line 509
    .line 510
    :cond_19
    add-int/lit8 v14, v14, 0x1

    .line 511
    .line 512
    goto :goto_11

    .line 513
    :cond_1a
    add-int/lit8 v8, v8, 0x1

    .line 514
    .line 515
    goto :goto_10

    .line 516
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    .line 517
    .line 518
    const/4 v1, 0x6

    .line 519
    goto :goto_d

    .line 520
    :cond_1c
    const-string v0, "residueType greater than 2 is not decodable"

    .line 521
    .line 522
    invoke-static {v0, v12}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    throw v0

    .line 527
    :cond_1d
    invoke-virtual {v6, v1}, Lv0/t0;->readBits(I)I

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    add-int/lit8 v2, v2, 0x1

    .line 532
    .line 533
    const/4 v1, 0x0

    .line 534
    :goto_12
    if-ge v1, v2, :cond_24

    .line 535
    .line 536
    invoke-virtual {v6, v11}, Lv0/t0;->readBits(I)I

    .line 537
    .line 538
    .line 539
    move-result v3

    .line 540
    if-eqz v3, :cond_1e

    .line 541
    .line 542
    new-instance v4, Ljava/lang/StringBuilder;

    .line 543
    .line 544
    const-string v5, "mapping type other than 0 not supported: "

    .line 545
    .line 546
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    const-string v4, "VorbisUtil"

    .line 557
    .line 558
    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    goto :goto_17

    .line 562
    :cond_1e
    invoke-virtual {v6}, Lv0/t0;->readBit()Z

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    if-eqz v3, :cond_1f

    .line 567
    .line 568
    invoke-virtual {v6, v9}, Lv0/t0;->readBits(I)I

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    add-int/lit8 v3, v3, 0x1

    .line 573
    .line 574
    goto :goto_13

    .line 575
    :cond_1f
    move/from16 v3, v17

    .line 576
    .line 577
    :goto_13
    invoke-virtual {v6}, Lv0/t0;->readBit()Z

    .line 578
    .line 579
    .line 580
    move-result v4

    .line 581
    if-eqz v4, :cond_20

    .line 582
    .line 583
    invoke-virtual {v6, v7}, Lv0/t0;->readBits(I)I

    .line 584
    .line 585
    .line 586
    move-result v4

    .line 587
    add-int/lit8 v4, v4, 0x1

    .line 588
    .line 589
    const/4 v5, 0x0

    .line 590
    :goto_14
    if-ge v5, v4, :cond_20

    .line 591
    .line 592
    add-int/lit8 v8, v0, -0x1

    .line 593
    .line 594
    invoke-static {v8}, Lv0/x0;->iLog(I)I

    .line 595
    .line 596
    .line 597
    move-result v13

    .line 598
    invoke-virtual {v6, v13}, Lv0/t0;->skipBits(I)V

    .line 599
    .line 600
    .line 601
    invoke-static {v8}, Lv0/x0;->iLog(I)I

    .line 602
    .line 603
    .line 604
    move-result v8

    .line 605
    invoke-virtual {v6, v8}, Lv0/t0;->skipBits(I)V

    .line 606
    .line 607
    .line 608
    add-int/lit8 v5, v5, 0x1

    .line 609
    .line 610
    goto :goto_14

    .line 611
    :cond_20
    invoke-virtual {v6, v10}, Lv0/t0;->readBits(I)I

    .line 612
    .line 613
    .line 614
    move-result v4

    .line 615
    if-nez v4, :cond_23

    .line 616
    .line 617
    move/from16 v4, v17

    .line 618
    .line 619
    if-le v3, v4, :cond_21

    .line 620
    .line 621
    const/4 v4, 0x0

    .line 622
    :goto_15
    if-ge v4, v0, :cond_21

    .line 623
    .line 624
    invoke-virtual {v6, v9}, Lv0/t0;->skipBits(I)V

    .line 625
    .line 626
    .line 627
    add-int/lit8 v4, v4, 0x1

    .line 628
    .line 629
    goto :goto_15

    .line 630
    :cond_21
    const/4 v4, 0x0

    .line 631
    :goto_16
    if-ge v4, v3, :cond_22

    .line 632
    .line 633
    invoke-virtual {v6, v7}, Lv0/t0;->skipBits(I)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v6, v7}, Lv0/t0;->skipBits(I)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v6, v7}, Lv0/t0;->skipBits(I)V

    .line 640
    .line 641
    .line 642
    add-int/lit8 v4, v4, 0x1

    .line 643
    .line 644
    goto :goto_16

    .line 645
    :cond_22
    :goto_17
    add-int/lit8 v1, v1, 0x1

    .line 646
    .line 647
    const/16 v17, 0x1

    .line 648
    .line 649
    goto :goto_12

    .line 650
    :cond_23
    const-string v0, "to reserved bits must be zero after mapping coupling steps"

    .line 651
    .line 652
    invoke-static {v0, v12}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    throw v0

    .line 657
    :cond_24
    const/4 v1, 0x6

    .line 658
    invoke-virtual {v6, v1}, Lv0/t0;->readBits(I)I

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    const/16 v17, 0x1

    .line 663
    .line 664
    add-int/lit8 v0, v0, 0x1

    .line 665
    .line 666
    new-array v1, v0, [Lv0/v0;

    .line 667
    .line 668
    const/4 v2, 0x0

    .line 669
    :goto_18
    if-ge v2, v0, :cond_25

    .line 670
    .line 671
    invoke-virtual {v6}, Lv0/t0;->readBit()Z

    .line 672
    .line 673
    .line 674
    move-result v3

    .line 675
    invoke-virtual {v6, v11}, Lv0/t0;->readBits(I)I

    .line 676
    .line 677
    .line 678
    move-result v4

    .line 679
    invoke-virtual {v6, v11}, Lv0/t0;->readBits(I)I

    .line 680
    .line 681
    .line 682
    move-result v5

    .line 683
    invoke-virtual {v6, v7}, Lv0/t0;->readBits(I)I

    .line 684
    .line 685
    .line 686
    move-result v8

    .line 687
    new-instance v9, Lv0/v0;

    .line 688
    .line 689
    invoke-direct {v9, v3, v4, v5, v8}, Lv0/v0;-><init>(ZIII)V

    .line 690
    .line 691
    .line 692
    aput-object v9, v1, v2

    .line 693
    .line 694
    add-int/lit8 v2, v2, 0x1

    .line 695
    .line 696
    goto :goto_18

    .line 697
    :cond_25
    invoke-virtual {v6}, Lv0/t0;->readBit()Z

    .line 698
    .line 699
    .line 700
    move-result v0

    .line 701
    if-eqz v0, :cond_26

    .line 702
    .line 703
    return-object v1

    .line 704
    :cond_26
    const-string v0, "framing bit after modes not set as expected"

    .line 705
    .line 706
    invoke-static {v0, v12}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    throw v0
.end method

.method public static verifyVorbisHeaderCapturePattern(ILandroidx/media3/common/util/ParsableByteArray;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p2, "too short header: "

    .line 16
    .line 17
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    throw p0

    .line 36
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eq v0, p0, :cond_3

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    return v3

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p2, "expected header type "

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    throw p0

    .line 68
    :cond_3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    const/16 v0, 0x76

    .line 73
    .line 74
    if-ne p0, v0, :cond_5

    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    const/16 v0, 0x6f

    .line 81
    .line 82
    if-ne p0, v0, :cond_5

    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    const/16 v0, 0x72

    .line 89
    .line 90
    if-ne p0, v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    const/16 v0, 0x62

    .line 97
    .line 98
    if-ne p0, v0, :cond_5

    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    const/16 v0, 0x69

    .line 105
    .line 106
    if-ne p0, v0, :cond_5

    .line 107
    .line 108
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    const/16 p1, 0x73

    .line 113
    .line 114
    if-eq p0, p1, :cond_4

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    const/4 p0, 0x1

    .line 118
    return p0

    .line 119
    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    .line 120
    .line 121
    return v3

    .line 122
    :cond_6
    const-string p0, "expected characters \'vorbis\'"

    .line 123
    .line 124
    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    throw p0
.end method
