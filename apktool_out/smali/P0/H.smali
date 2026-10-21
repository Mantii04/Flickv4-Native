.class public abstract LP0/H;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static parseSmta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0xc

    .line 4
    .line 5
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-ge v3, p1, :cond_c

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const v7, 0x73617574

    .line 28
    .line 29
    .line 30
    if-ne v6, v7, :cond_b

    .line 31
    .line 32
    const/16 v3, 0x10

    .line 33
    .line 34
    if-ge v5, v3, :cond_0

    .line 35
    .line 36
    return-object v4

    .line 37
    :cond_0
    const/4 v3, 0x4

    .line 38
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 39
    .line 40
    .line 41
    const/4 v3, -0x1

    .line 42
    move v5, v0

    .line 43
    move v6, v5

    .line 44
    :goto_1
    const/4 v7, 0x2

    .line 45
    if-ge v5, v7, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-nez v7, :cond_1

    .line 56
    .line 57
    move v3, v8

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    if-ne v7, v1, :cond_2

    .line 60
    .line 61
    move v6, v8

    .line 62
    :cond_2
    :goto_2
    add-int/2addr v5, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const v5, -0x7fffffff

    .line 65
    .line 66
    .line 67
    if-ne v3, v2, :cond_4

    .line 68
    .line 69
    const/16 p0, 0xf0

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_4
    const/16 v7, 0xd

    .line 73
    .line 74
    if-ne v3, v7, :cond_5

    .line 75
    .line 76
    const/16 p0, 0x78

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    const/16 v7, 0x15

    .line 80
    .line 81
    if-eq v3, v7, :cond_7

    .line 82
    .line 83
    :cond_6
    :goto_3
    move p0, v5

    .line 84
    goto :goto_4

    .line 85
    :cond_7
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    const/16 v7, 0x8

    .line 90
    .line 91
    if-lt v3, v7, :cond_6

    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    add-int/2addr v3, v7

    .line 98
    if-le v3, p1, :cond_8

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_8
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-lt p1, v2, :cond_6

    .line 110
    .line 111
    const p1, 0x73726672

    .line 112
    .line 113
    .line 114
    if-eq v3, p1, :cond_9

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_9
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    :goto_4
    if-ne p0, v5, :cond_a

    .line 122
    .line 123
    return-object v4

    .line 124
    :cond_a
    new-instance p1, Landroidx/media3/common/Metadata;

    .line 125
    .line 126
    new-instance v2, LK0/d;

    .line 127
    .line 128
    int-to-float p0, p0

    .line 129
    invoke-direct {v2, p0, v6}, LK0/d;-><init>(FI)V

    .line 130
    .line 131
    .line 132
    new-array p0, v1, [Landroidx/media3/common/Metadata$Entry;

    .line 133
    .line 134
    aput-object v2, p0, v0

    .line 135
    .line 136
    invoke-direct {p1, p0}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 137
    .line 138
    .line 139
    return-object p1

    .line 140
    :cond_b
    add-int/2addr v3, v5

    .line 141
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_c
    return-object v4
.end method
