.class public final LQ0/d;
.super LQ0/l;
.source "SourceFile"


# instance fields
.field public n:Lv0/P;

.field public o:LQ0/c;


# direct methods
.method public static verifyBitstreamType(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x7f

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/32 v2, 0x464c4143

    .line 21
    .line 22
    .line 23
    cmp-long p0, v0, v2

    .line 24
    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method


# virtual methods
.method public preparePayload(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-ne v0, v2, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x2

    .line 16
    aget-byte v0, v0, v2

    .line 17
    .line 18
    and-int/lit16 v0, v0, 0xff

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    shr-int/2addr v0, v2

    .line 22
    const/4 v3, 0x6

    .line 23
    if-eq v0, v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x7

    .line 26
    if-ne v0, v3, :cond_1

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUtf8EncodedLong()J

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {p1, v0}, Lv0/K;->readFrameBlockSizeSamplesFromKey(Landroidx/media3/common/util/ParsableByteArray;I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 39
    .line 40
    .line 41
    int-to-long v0, v0

    .line 42
    return-wide v0

    .line 43
    :cond_2
    const-wide/16 v0, -0x1

    .line 44
    .line 45
    return-wide v0
.end method

.method public readHeaders(Landroidx/media3/common/util/ParsableByteArray;JLQ0/j;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LQ0/d;->n:Lv0/P;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance p2, Lv0/P;

    .line 11
    .line 12
    const/16 p3, 0x11

    .line 13
    .line 14
    invoke-direct {p2, v0, p3}, Lv0/P;-><init>([BI)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, LQ0/d;->n:Lv0/P;

    .line 18
    .line 19
    const/16 p3, 0x9

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {v0, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 p3, 0x0

    .line 30
    invoke-virtual {p2, p1, p3}, Lv0/P;->getFormat([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, "audio/ogg"

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p4, LQ0/j;->a:Landroidx/media3/common/Format;

    .line 49
    .line 50
    return v2

    .line 51
    :cond_0
    const/4 v3, 0x0

    .line 52
    aget-byte v0, v0, v3

    .line 53
    .line 54
    and-int/lit8 v4, v0, 0x7f

    .line 55
    .line 56
    const/4 v5, 0x3

    .line 57
    if-ne v4, v5, :cond_1

    .line 58
    .line 59
    invoke-static {p1}, Lv0/M;->readSeekTableMetadataBlock(Landroidx/media3/common/util/ParsableByteArray;)Lv0/O;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, p1}, Lv0/P;->copyWithSeekTable(Lv0/O;)Lv0/P;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iput-object p2, p0, LQ0/d;->n:Lv0/P;

    .line 68
    .line 69
    new-instance p3, LQ0/c;

    .line 70
    .line 71
    invoke-direct {p3, p2, p1}, LQ0/c;-><init>(Lv0/P;Lv0/O;)V

    .line 72
    .line 73
    .line 74
    iput-object p3, p0, LQ0/d;->o:LQ0/c;

    .line 75
    .line 76
    return v2

    .line 77
    :cond_1
    const/4 p1, -0x1

    .line 78
    if-ne v0, p1, :cond_3

    .line 79
    .line 80
    iget-object p1, p0, LQ0/d;->o:LQ0/c;

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    invoke-virtual {p1, p2, p3}, LQ0/c;->setFirstFrameOffset(J)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, LQ0/d;->o:LQ0/c;

    .line 88
    .line 89
    iput-object p1, p4, LQ0/j;->b:LQ0/c;

    .line 90
    .line 91
    :cond_2
    iget-object p1, p4, LQ0/j;->a:Landroidx/media3/common/Format;

    .line 92
    .line 93
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    return v3

    .line 97
    :cond_3
    return v2
.end method

.method public reset(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, LQ0/l;->reset(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, LQ0/d;->n:Lv0/P;

    .line 8
    .line 9
    iput-object p1, p0, LQ0/d;->o:LQ0/c;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
