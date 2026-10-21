.class public abstract Lv0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static consume(JLandroidx/media3/common/util/ParsableByteArray;[Lv0/r0;)V
    .locals 10

    .line 1
    :goto_0
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-le v0, v1, :cond_d

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    move v2, v0

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/16 v4, 0xff

    .line 15
    .line 16
    const/4 v5, -0x1

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    move v3, v5

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    add-int/2addr v2, v3

    .line 26
    if-eq v3, v4, :cond_0

    .line 27
    .line 28
    move v3, v2

    .line 29
    :goto_1
    move v2, v0

    .line 30
    :cond_2
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-nez v6, :cond_3

    .line 35
    .line 36
    move v2, v5

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    add-int/2addr v2, v6

    .line 43
    if-eq v6, v4, :cond_2

    .line 44
    .line 45
    :goto_2
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    add-int/2addr v4, v2

    .line 50
    if-eq v2, v5, :cond_b

    .line 51
    .line 52
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-le v2, v5, :cond_4

    .line 57
    .line 58
    goto :goto_6

    .line 59
    :cond_4
    const/4 v5, 0x4

    .line 60
    if-ne v3, v5, :cond_c

    .line 61
    .line 62
    const/16 v3, 0x8

    .line 63
    .line 64
    if-lt v2, v3, :cond_c

    .line 65
    .line 66
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const/16 v5, 0x31

    .line 75
    .line 76
    if-ne v3, v5, :cond_5

    .line 77
    .line 78
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    goto :goto_3

    .line 83
    :cond_5
    move v6, v0

    .line 84
    :goto_3
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    const/16 v8, 0x2f

    .line 89
    .line 90
    if-ne v3, v8, :cond_6

    .line 91
    .line 92
    invoke-virtual {p2, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 93
    .line 94
    .line 95
    :cond_6
    const/16 v9, 0xb5

    .line 96
    .line 97
    if-ne v2, v9, :cond_8

    .line 98
    .line 99
    if-eq v3, v5, :cond_7

    .line 100
    .line 101
    if-ne v3, v8, :cond_8

    .line 102
    .line 103
    :cond_7
    const/4 v2, 0x3

    .line 104
    if-ne v7, v2, :cond_8

    .line 105
    .line 106
    move v2, v1

    .line 107
    goto :goto_4

    .line 108
    :cond_8
    move v2, v0

    .line 109
    :goto_4
    if-ne v3, v5, :cond_a

    .line 110
    .line 111
    const v3, 0x47413934

    .line 112
    .line 113
    .line 114
    if-ne v6, v3, :cond_9

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_9
    move v1, v0

    .line 118
    :goto_5
    and-int/2addr v2, v1

    .line 119
    :cond_a
    if-eqz v2, :cond_c

    .line 120
    .line 121
    invoke-static {p0, p1, p2, p3}, Lv0/q;->consumeCcData(JLandroidx/media3/common/util/ParsableByteArray;[Lv0/r0;)V

    .line 122
    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_b
    :goto_6
    const-string v0, "CeaUtil"

    .line 126
    .line 127
    const-string v1, "Skipping remainder of malformed SEI NAL unit."

    .line 128
    .line 129
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    :cond_c
    :goto_7
    invoke-virtual {p2, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :cond_d
    return-void
.end method

.method public static consumeCcData(JLandroidx/media3/common/util/ParsableByteArray;[Lv0/r0;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x40

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    and-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p2, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 13
    .line 14
    .line 15
    mul-int/lit8 v6, v0, 0x3

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    array-length v9, p3

    .line 22
    const/4 v10, 0x0

    .line 23
    move v11, v10

    .line 24
    :goto_0
    if-ge v11, v9, :cond_1

    .line 25
    .line 26
    aget-object v2, p3, v11

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v2, p2, v6}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 32
    .line 33
    .line 34
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    cmp-long v3, p0, v3

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    move v3, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    move v3, v10

    .line 46
    :goto_1
    invoke-static {v3}, LP3/v;->checkState(Z)V

    .line 47
    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v5, 0x1

    .line 52
    move-wide v3, p0

    .line 53
    invoke-interface/range {v2 .. v8}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v11, v11, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method
