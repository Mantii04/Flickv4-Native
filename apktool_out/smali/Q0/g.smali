.class public final LQ0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:I

.field public e:I

.field public final f:[I

.field public final g:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xff

    .line 5
    .line 6
    new-array v1, v0, [I

    .line 7
    .line 8
    iput-object v1, p0, LQ0/g;->f:[I

    .line 9
    .line 10
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, LQ0/g;->g:Landroidx/media3/common/util/ParsableByteArray;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public populate(Lv0/D;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LQ0/g;->reset()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LQ0/g;->g:Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    const/16 v1, 0x1b

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {p1, v2, v3, v1, p2}, Lv0/G;->peekFullyQuietly(Lv0/D;[BIIZ)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_5

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    const-wide/32 v4, 0x4f676753

    .line 27
    .line 28
    .line 29
    cmp-long v1, v1, v4

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p1, "unsupported bit stream revision"

    .line 44
    .line 45
    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iput v1, p0, LQ0/g;->a:I

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianLong()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    iput-wide v1, p0, LQ0/g;->b:J

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iput v1, p0, LQ0/g;->c:I

    .line 76
    .line 77
    add-int/lit8 v2, v1, 0x1b

    .line 78
    .line 79
    iput v2, p0, LQ0/g;->d:I

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget v2, p0, LQ0/g;->c:I

    .line 89
    .line 90
    invoke-static {p1, v1, v3, v2, p2}, Lv0/G;->peekFullyQuietly(Lv0/D;[BIIZ)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_3

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    :goto_0
    iget p1, p0, LQ0/g;->c:I

    .line 98
    .line 99
    if-ge v3, p1, :cond_4

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iget-object p2, p0, LQ0/g;->f:[I

    .line 106
    .line 107
    aput p1, p2, v3

    .line 108
    .line 109
    iget p2, p0, LQ0/g;->e:I

    .line 110
    .line 111
    add-int/2addr p2, p1

    .line 112
    iput p2, p0, LQ0/g;->e:I

    .line 113
    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    const/4 p1, 0x1

    .line 118
    return p1

    .line 119
    :cond_5
    :goto_1
    return v3
.end method

.method public reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LQ0/g;->a:I

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    iput-wide v1, p0, LQ0/g;->b:J

    .line 7
    .line 8
    iput v0, p0, LQ0/g;->c:I

    .line 9
    .line 10
    iput v0, p0, LQ0/g;->d:I

    .line 11
    .line 12
    iput v0, p0, LQ0/g;->e:I

    .line 13
    .line 14
    return-void
.end method

.method public skipToNextPage(Lv0/D;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, LQ0/g;->skipToNextPage(Lv0/D;J)Z

    move-result p1

    return p1
.end method

.method public skipToNextPage(Lv0/D;J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lv0/D;->getPosition()J

    move-result-wide v0

    invoke-interface {p1}, Lv0/D;->getPeekPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, LP3/v;->checkArgument(Z)V

    .line 3
    iget-object v0, p0, LQ0/g;->g:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    :goto_1
    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_1

    .line 4
    invoke-interface {p1}, Lv0/D;->getPosition()J

    move-result-wide v5

    const-wide/16 v7, 0x4

    add-long/2addr v5, v7

    cmp-long v5, v5, p2

    if-gez v5, :cond_3

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    .line 6
    invoke-static {p1, v5, v1, v3, v2}, Lv0/G;->peekFullyQuietly(Lv0/D;[BIIZ)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 8
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/32 v6, 0x4f676753

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 9
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    return v2

    .line 10
    :cond_2
    invoke-interface {p1, v2}, Lv0/D;->skipFully(I)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 11
    invoke-interface {p1}, Lv0/D;->getPosition()J

    move-result-wide v5

    cmp-long v0, v5, p2

    if-gez v0, :cond_5

    .line 12
    :cond_4
    invoke-interface {p1, v2}, Lv0/D;->skip(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    goto :goto_2

    :cond_5
    return v1
.end method
