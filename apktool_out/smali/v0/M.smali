.class public abstract Lv0/M;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static checkAndPeekStreamMarker(Lv0/D;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-interface {p0, v2, v3, v1}, Lv0/D;->peekFully([BII)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-wide/32 v4, 0x664c6143

    .line 20
    .line 21
    .line 22
    cmp-long p0, v0, v4

    .line 23
    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_0
    return v3
.end method

.method public static getFrameStartMarker(Lv0/D;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lv0/D;->resetPeekPosition()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-interface {p0, v2, v3, v1}, Lv0/D;->peekFully([BII)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    shr-int/lit8 v1, v0, 0x2

    .line 23
    .line 24
    const/16 v2, 0x3ffe

    .line 25
    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    invoke-interface {p0}, Lv0/D;->resetPeekPosition()V

    .line 29
    .line 30
    .line 31
    return v0

    .line 32
    :cond_0
    invoke-interface {p0}, Lv0/D;->resetPeekPosition()V

    .line 33
    .line 34
    .line 35
    const-string p0, "First frame does not start with sync code."

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-static {p0, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    throw p0
.end method

.method public static peekId3Metadata(Lv0/D;Z)Landroidx/media3/common/Metadata;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    move-object p1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, LJ0/j;->b:LJ0/g;

    .line 7
    .line 8
    :goto_0
    new-instance v1, Lv0/W;

    .line 9
    .line 10
    invoke-direct {v1}, Lv0/W;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, p0, p1, v2}, Lv0/W;->peekId3Data(Lv0/D;LJ0/h;I)Landroidx/media3/common/Metadata;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/media3/common/Metadata;->length()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    return-object p0

    .line 28
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static readId3Metadata(Lv0/D;Z)Landroidx/media3/common/Metadata;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lv0/D;->resetPeekPosition()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lv0/D;->getPeekPosition()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-static {p0, p1}, Lv0/M;->peekId3Metadata(Lv0/D;Z)Landroidx/media3/common/Metadata;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p0}, Lv0/D;->getPeekPosition()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    sub-long/2addr v2, v0

    .line 17
    long-to-int v0, v2

    .line 18
    invoke-interface {p0, v0}, Lv0/D;->skipFully(I)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method public static readMetadataBlock(Lv0/D;Lv0/L;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lv0/D;->resetPeekPosition()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    invoke-direct {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-interface {p0, v2, v3, v1}, Lv0/D;->peekFully([BII)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v4, 0x7

    .line 23
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/16 v5, 0x18

    .line 28
    .line 29
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v0, v1

    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    const/16 v0, 0x26

    .line 37
    .line 38
    new-array v4, v0, [B

    .line 39
    .line 40
    invoke-interface {p0, v4, v3, v0}, Lv0/D;->readFully([BII)V

    .line 41
    .line 42
    .line 43
    new-instance p0, Lv0/P;

    .line 44
    .line 45
    invoke-direct {p0, v4, v1}, Lv0/P;-><init>([BI)V

    .line 46
    .line 47
    .line 48
    iput-object p0, p1, Lv0/L;->a:Lv0/P;

    .line 49
    .line 50
    return v2

    .line 51
    :cond_0
    iget-object v5, p1, Lv0/L;->a:Lv0/P;

    .line 52
    .line 53
    if-eqz v5, :cond_4

    .line 54
    .line 55
    const/4 v6, 0x3

    .line 56
    if-ne v4, v6, :cond_1

    .line 57
    .line 58
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-interface {p0, v4, v3, v0}, Lv0/D;->readFully([BII)V

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lv0/M;->readSeekTableMetadataBlock(Landroidx/media3/common/util/ParsableByteArray;)Lv0/O;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v5, p0}, Lv0/P;->copyWithSeekTable(Lv0/O;)Lv0/P;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iput-object p0, p1, Lv0/L;->a:Lv0/P;

    .line 79
    .line 80
    return v2

    .line 81
    :cond_1
    if-ne v4, v1, :cond_2

    .line 82
    .line 83
    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    .line 84
    .line 85
    invoke-direct {v4, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-interface {p0, v6, v3, v0}, Lv0/D;->readFully([BII)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 96
    .line 97
    .line 98
    invoke-static {v4, v3, v3}, Lv0/x0;->readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;ZZ)Lv0/u0;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    iget-object p0, p0, Lv0/u0;->a:[Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {v5, p0}, Lv0/P;->copyWithVorbisComments(Ljava/util/List;)Lv0/P;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    iput-object p0, p1, Lv0/L;->a:Lv0/P;

    .line 113
    .line 114
    return v2

    .line 115
    :cond_2
    const/4 v6, 0x6

    .line 116
    if-ne v4, v6, :cond_3

    .line 117
    .line 118
    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    .line 119
    .line 120
    invoke-direct {v4, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-interface {p0, v6, v3, v0}, Lv0/D;->readFully([BII)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 131
    .line 132
    .line 133
    invoke-static {v4}, LH0/a;->fromPictureBlock(Landroidx/media3/common/util/ParsableByteArray;)LH0/a;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {v5, p0}, Lv0/P;->copyWithPictureFrames(Ljava/util/List;)Lv0/P;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    iput-object p0, p1, Lv0/L;->a:Lv0/P;

    .line 146
    .line 147
    return v2

    .line 148
    :cond_3
    invoke-interface {p0, v0}, Lv0/D;->skipFully(I)V

    .line 149
    .line 150
    .line 151
    return v2

    .line 152
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 155
    .line 156
    .line 157
    throw p0
.end method

.method public static readSeekTableMetadataBlock(Landroidx/media3/common/util/ParsableByteArray;)Lv0/O;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-long v1, v1

    .line 14
    int-to-long v3, v0

    .line 15
    add-long/2addr v1, v3

    .line 16
    div-int/lit8 v0, v0, 0x12

    .line 17
    .line 18
    new-array v3, v0, [J

    .line 19
    .line 20
    new-array v4, v0, [J

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    :goto_0
    if-ge v5, v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    const-wide/16 v8, -0x1

    .line 30
    .line 31
    cmp-long v8, v6, v8

    .line 32
    .line 33
    if-nez v8, :cond_0

    .line 34
    .line 35
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    aput-wide v6, v3, v5

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    aput-wide v6, v4, v5

    .line 51
    .line 52
    const/4 v6, 0x2

    .line 53
    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    int-to-long v5, v0

    .line 64
    sub-long/2addr v1, v5

    .line 65
    long-to-int v0, v1

    .line 66
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 67
    .line 68
    .line 69
    new-instance p0, Lv0/O;

    .line 70
    .line 71
    invoke-direct {p0, v3, v4}, Lv0/O;-><init>([J[J)V

    .line 72
    .line 73
    .line 74
    return-object p0
.end method

.method public static readStreamMarker(Lv0/D;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-interface {p0, v2, v3, v1}, Lv0/D;->readFully([BII)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-wide/32 v2, 0x664c6143

    .line 20
    .line 21
    .line 22
    cmp-long p0, v0, v2

    .line 23
    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p0, "Failed to read FLAC stream marker."

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-static {p0, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    throw p0
.end method
