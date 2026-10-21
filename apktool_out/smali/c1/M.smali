.class public final Lc1/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/o;


# instance fields
.field public final a:Landroidx/media3/common/util/TimestampAdjuster;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lc1/M;->c:I

    .line 5
    .line 6
    iput-object p2, p0, Lc1/M;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 7
    .line 8
    iput p3, p0, Lc1/M;->d:I

    .line 9
    .line 10
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 11
    .line 12
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lc1/M;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public onSeekFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc1/M;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    sget-object v1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public searchForTimestamp(Lv0/D;J)Lv0/m;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, Lv0/D;->getPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget v3, v0, Lc1/M;->d:I

    .line 8
    .line 9
    int-to-long v3, v3

    .line 10
    invoke-interface/range {p1 .. p1}, Lv0/D;->getLength()J

    .line 11
    .line 12
    .line 13
    move-result-wide v5

    .line 14
    sub-long/2addr v5, v1

    .line 15
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    long-to-int v3, v3

    .line 20
    iget-object v4, v0, Lc1/M;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 21
    .line 22
    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const/4 v6, 0x0

    .line 30
    move-object/from16 v7, p1

    .line 31
    .line 32
    invoke-interface {v7, v5, v6, v3}, Lv0/D;->peekFully([BII)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const-wide/16 v5, -0x1

    .line 40
    .line 41
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    move-wide v9, v5

    .line 47
    move-wide v11, v7

    .line 48
    :goto_0
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 49
    .line 50
    .line 51
    move-result v13

    .line 52
    const/16 v14, 0xbc

    .line 53
    .line 54
    if-lt v13, v14, :cond_5

    .line 55
    .line 56
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    invoke-static {v13, v14, v3}, Lc1/Y;->findSyncBytePosition([BII)I

    .line 65
    .line 66
    .line 67
    move-result v13

    .line 68
    add-int/lit16 v14, v13, 0xbc

    .line 69
    .line 70
    if-le v14, v3, :cond_0

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_0
    iget v5, v0, Lc1/M;->c:I

    .line 74
    .line 75
    invoke-static {v4, v13, v5}, Lc1/Y;->readPcrFromPacket(Landroidx/media3/common/util/ParsableByteArray;II)J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    cmp-long v15, v5, v7

    .line 80
    .line 81
    if-eqz v15, :cond_4

    .line 82
    .line 83
    iget-object v15, v0, Lc1/M;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 84
    .line 85
    invoke-virtual {v15, v5, v6}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v5

    .line 89
    cmp-long v15, v5, p2

    .line 90
    .line 91
    if-lez v15, :cond_2

    .line 92
    .line 93
    cmp-long v3, v11, v7

    .line 94
    .line 95
    if-nez v3, :cond_1

    .line 96
    .line 97
    invoke-static {v5, v6, v1, v2}, Lv0/m;->overestimatedResult(JJ)Lv0/m;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    return-object v1

    .line 102
    :cond_1
    add-long/2addr v1, v9

    .line 103
    invoke-static {v1, v2}, Lv0/m;->targetFoundResult(J)Lv0/m;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    return-object v1

    .line 108
    :cond_2
    const-wide/32 v9, 0x186a0

    .line 109
    .line 110
    .line 111
    add-long/2addr v9, v5

    .line 112
    cmp-long v9, v9, p2

    .line 113
    .line 114
    if-lez v9, :cond_3

    .line 115
    .line 116
    int-to-long v3, v13

    .line 117
    add-long/2addr v1, v3

    .line 118
    invoke-static {v1, v2}, Lv0/m;->targetFoundResult(J)Lv0/m;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    return-object v1

    .line 123
    :cond_3
    int-to-long v9, v13

    .line 124
    move-wide v11, v5

    .line 125
    :cond_4
    invoke-virtual {v4, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 126
    .line 127
    .line 128
    int-to-long v5, v14

    .line 129
    goto :goto_0

    .line 130
    :cond_5
    :goto_1
    cmp-long v3, v11, v7

    .line 131
    .line 132
    if-eqz v3, :cond_6

    .line 133
    .line 134
    add-long/2addr v1, v5

    .line 135
    invoke-static {v11, v12, v1, v2}, Lv0/m;->underestimatedResult(JJ)Lv0/m;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    return-object v1

    .line 140
    :cond_6
    sget-object v1, Lv0/m;->d:Lv0/m;

    .line 141
    .line 142
    return-object v1
.end method
