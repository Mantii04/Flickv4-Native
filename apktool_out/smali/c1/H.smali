.class public final Lc1/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc1/j;

.field public final b:Landroidx/media3/common/util/TimestampAdjuster;

.field public final c:Landroidx/media3/common/util/ParsableBitArray;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:J


# direct methods
.method public constructor <init>(Lc1/j;Landroidx/media3/common/util/TimestampAdjuster;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc1/H;->a:Lc1/j;

    .line 5
    .line 6
    iput-object p2, p0, Lc1/H;->b:Landroidx/media3/common/util/TimestampAdjuster;

    .line 7
    .line 8
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    .line 9
    .line 10
    const/16 p2, 0x40

    .line 11
    .line 12
    new-array p2, p2, [B

    .line 13
    .line 14
    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lc1/H;->c:Landroidx/media3/common/util/ParsableBitArray;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    iget-object v1, p0, Lc1/H;->c:Landroidx/media3/common/util/ParsableBitArray;

    .line 3
    .line 4
    iget-object v2, v1, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x3

    .line 8
    invoke-virtual {p1, v2, v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    iput-boolean v5, p0, Lc1/H;->d:Z

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    iput-boolean v5, p0, Lc1/H;->e:Z

    .line 30
    .line 31
    const/4 v5, 0x6

    .line 32
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget-object v5, v1, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 40
    .line 41
    invoke-virtual {p1, v5, v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 45
    .line 46
    .line 47
    const-wide/16 v5, 0x0

    .line 48
    .line 49
    iput-wide v5, p0, Lc1/H;->g:J

    .line 50
    .line 51
    iget-boolean v2, p0, Lc1/H;->d:Z

    .line 52
    .line 53
    const/4 v5, 0x4

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    int-to-long v6, v2

    .line 64
    const/16 v2, 0x1e

    .line 65
    .line 66
    shl-long/2addr v6, v2

    .line 67
    const/4 v8, 0x1

    .line 68
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 69
    .line 70
    .line 71
    const/16 v9, 0xf

    .line 72
    .line 73
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    shl-int/2addr v10, v9

    .line 78
    int-to-long v10, v10

    .line 79
    or-long/2addr v6, v10

    .line 80
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    int-to-long v10, v10

    .line 88
    or-long/2addr v6, v10

    .line 89
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 90
    .line 91
    .line 92
    iget-boolean v10, p0, Lc1/H;->f:Z

    .line 93
    .line 94
    iget-object v11, p0, Lc1/H;->b:Landroidx/media3/common/util/TimestampAdjuster;

    .line 95
    .line 96
    if-nez v10, :cond_0

    .line 97
    .line 98
    iget-boolean v10, p0, Lc1/H;->e:Z

    .line 99
    .line 100
    if-eqz v10, :cond_0

    .line 101
    .line 102
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    int-to-long v12, v4

    .line 110
    shl-long/2addr v12, v2

    .line 111
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    shl-int/2addr v2, v9

    .line 119
    int-to-long v3, v2

    .line 120
    or-long/2addr v3, v12

    .line 121
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    int-to-long v12, v2

    .line 129
    or-long/2addr v3, v12

    .line 130
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v11, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 134
    .line 135
    .line 136
    iput-boolean v8, p0, Lc1/H;->f:Z

    .line 137
    .line 138
    :cond_0
    invoke-virtual {v11, v6, v7}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 139
    .line 140
    .line 141
    move-result-wide v1

    .line 142
    iput-wide v1, p0, Lc1/H;->g:J

    .line 143
    .line 144
    :cond_1
    iget-wide v1, p0, Lc1/H;->g:J

    .line 145
    .line 146
    iget-object v3, p0, Lc1/H;->a:Lc1/j;

    .line 147
    .line 148
    invoke-interface {v3, v1, v2, v5}, Lc1/j;->packetStarted(JI)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v3, p1}, Lc1/j;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 152
    .line 153
    .line 154
    const/4 v10, 0x0

    .line 155
    invoke-interface {v3, v10}, Lc1/j;->packetFinished(Z)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public seek()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc1/H;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Lc1/H;->a:Lc1/j;

    .line 5
    .line 6
    invoke-interface {v0}, Lc1/j;->seek()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
