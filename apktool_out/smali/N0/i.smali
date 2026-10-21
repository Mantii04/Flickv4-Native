.class public final LN0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LN0/i;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lv0/D;)J
    .locals 7

    .line 1
    iget-object v0, p0, LN0/i;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-interface {p1, v1, v2, v3}, Lv0/D;->peekFully([BII)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    aget-byte v1, v1, v2

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-wide/high16 v0, -0x8000000000000000L

    .line 23
    .line 24
    return-wide v0

    .line 25
    :cond_0
    const/16 v4, 0x80

    .line 26
    .line 27
    move v5, v2

    .line 28
    :goto_0
    and-int v6, v1, v4

    .line 29
    .line 30
    if-nez v6, :cond_1

    .line 31
    .line 32
    shr-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    add-int/lit8 v5, v5, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    not-int v4, v4

    .line 38
    and-int/2addr v1, v4

    .line 39
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-interface {p1, v4, v3, v5}, Lv0/D;->peekFully([BII)V

    .line 44
    .line 45
    .line 46
    :goto_1
    if-ge v2, v5, :cond_2

    .line 47
    .line 48
    shl-int/lit8 p1, v1, 0x8

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    aget-byte v1, v1, v2

    .line 57
    .line 58
    and-int/lit16 v1, v1, 0xff

    .line 59
    .line 60
    add-int/2addr v1, p1

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget p1, p0, LN0/i;->b:I

    .line 63
    .line 64
    add-int/2addr v5, v3

    .line 65
    add-int/2addr v5, p1

    .line 66
    iput v5, p0, LN0/i;->b:I

    .line 67
    .line 68
    int-to-long v0, v1

    .line 69
    return-wide v0
.end method

.method public sniff(Lv0/D;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lv0/D;->getLength()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v3, 0x400

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    cmp-long v5, v0, v3

    .line 14
    .line 15
    if-lez v5, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-wide v3, v0

    .line 19
    :cond_1
    :goto_0
    long-to-int v3, v3

    .line 20
    iget-object v4, p0, LN0/i;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 21
    .line 22
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x4

    .line 28
    invoke-interface {p1, v5, v6, v7}, Lv0/D;->peekFully([BII)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 32
    .line 33
    .line 34
    move-result-wide v8

    .line 35
    iput v7, p0, LN0/i;->b:I

    .line 36
    .line 37
    :goto_1
    const-wide/32 v10, 0x1a45dfa3

    .line 38
    .line 39
    .line 40
    cmp-long v5, v8, v10

    .line 41
    .line 42
    const/4 v7, 0x1

    .line 43
    if-eqz v5, :cond_3

    .line 44
    .line 45
    iget v5, p0, LN0/i;->b:I

    .line 46
    .line 47
    add-int/2addr v5, v7

    .line 48
    iput v5, p0, LN0/i;->b:I

    .line 49
    .line 50
    if-ne v5, v3, :cond_2

    .line 51
    .line 52
    return v6

    .line 53
    :cond_2
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-interface {p1, v5, v6, v7}, Lv0/D;->peekFully([BII)V

    .line 58
    .line 59
    .line 60
    const/16 v5, 0x8

    .line 61
    .line 62
    shl-long v7, v8, v5

    .line 63
    .line 64
    const-wide/16 v9, -0x100

    .line 65
    .line 66
    and-long/2addr v7, v9

    .line 67
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    aget-byte v5, v5, v6

    .line 72
    .line 73
    and-int/lit16 v5, v5, 0xff

    .line 74
    .line 75
    int-to-long v9, v5

    .line 76
    or-long/2addr v7, v9

    .line 77
    move-wide v8, v7

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p0, p1}, LN0/i;->a(Lv0/D;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    iget v5, p0, LN0/i;->b:I

    .line 84
    .line 85
    int-to-long v8, v5

    .line 86
    const-wide/high16 v10, -0x8000000000000000L

    .line 87
    .line 88
    cmp-long v5, v3, v10

    .line 89
    .line 90
    if-eqz v5, :cond_9

    .line 91
    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    add-long v12, v8, v3

    .line 95
    .line 96
    cmp-long v0, v12, v0

    .line 97
    .line 98
    if-ltz v0, :cond_4

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_4
    :goto_2
    iget v0, p0, LN0/i;->b:I

    .line 102
    .line 103
    int-to-long v1, v0

    .line 104
    add-long v12, v8, v3

    .line 105
    .line 106
    cmp-long v1, v1, v12

    .line 107
    .line 108
    if-gez v1, :cond_8

    .line 109
    .line 110
    invoke-virtual {p0, p1}, LN0/i;->a(Lv0/D;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    cmp-long v0, v0, v10

    .line 115
    .line 116
    if-nez v0, :cond_5

    .line 117
    .line 118
    return v6

    .line 119
    :cond_5
    invoke-virtual {p0, p1}, LN0/i;->a(Lv0/D;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    const-wide/16 v12, 0x0

    .line 124
    .line 125
    cmp-long v2, v0, v12

    .line 126
    .line 127
    if-ltz v2, :cond_7

    .line 128
    .line 129
    const-wide/32 v12, 0x7fffffff

    .line 130
    .line 131
    .line 132
    cmp-long v5, v0, v12

    .line 133
    .line 134
    if-lez v5, :cond_6

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_6
    if-eqz v2, :cond_4

    .line 138
    .line 139
    long-to-int v0, v0

    .line 140
    invoke-interface {p1, v0}, Lv0/D;->advancePeekPosition(I)V

    .line 141
    .line 142
    .line 143
    iget v1, p0, LN0/i;->b:I

    .line 144
    .line 145
    add-int/2addr v1, v0

    .line 146
    iput v1, p0, LN0/i;->b:I

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_7
    :goto_3
    return v6

    .line 150
    :cond_8
    int-to-long v0, v0

    .line 151
    cmp-long p1, v0, v12

    .line 152
    .line 153
    if-nez p1, :cond_9

    .line 154
    .line 155
    return v7

    .line 156
    :cond_9
    :goto_4
    return v6
.end method
