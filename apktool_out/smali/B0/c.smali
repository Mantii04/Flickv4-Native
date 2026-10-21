.class public final LB0/c;
.super LB0/d;
.source "SourceFile"


# instance fields
.field public b:J

.field public c:[J

.field public d:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lv0/y;

    .line 2
    .line 3
    invoke-direct {v0}, Lv0/y;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, LB0/d;-><init>(Lv0/r0;)V

    .line 7
    .line 8
    .line 9
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iput-wide v0, p0, LB0/c;->b:J

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    new-array v1, v0, [J

    .line 18
    .line 19
    iput-object v1, p0, LB0/c;->c:[J

    .line 20
    .line 21
    new-array v0, v0, [J

    .line 22
    .line 23
    iput-object v0, p0, LB0/c;->d:[J

    .line 24
    .line 25
    return-void
.end method

.method public static a(ILandroidx/media3/common/util/ParsableByteArray;)Ljava/io/Serializable;
    .locals 3

    .line 1
    if-eqz p0, :cond_b

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eq p0, v0, :cond_9

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p0, v0, :cond_8

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq p0, v2, :cond_5

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    if-eq p0, v2, :cond_4

    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    if-eq p0, v2, :cond_1

    .line 20
    .line 21
    const/16 v1, 0xb

    .line 22
    .line 23
    if-eq p0, v1, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :cond_0
    new-instance p0, Ljava/util/Date;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    double-to-long v1, v1

    .line 38
    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    if-ge v1, p0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v2, p1}, LB0/c;->a(ILandroidx/media3/common/util/ParsableByteArray;)Ljava/io/Serializable;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    return-object v0

    .line 73
    :cond_4
    invoke-static {p1}, LB0/c;->b(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/HashMap;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_5
    new-instance p0, Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    :cond_6
    :goto_1
    invoke-static {p1}, LB0/c;->c(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/16 v2, 0x9

    .line 92
    .line 93
    if-ne v1, v2, :cond_7

    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_7
    invoke-static {v1, p1}, LB0/c;->a(ILandroidx/media3/common/util/ParsableByteArray;)Ljava/io/Serializable;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_8
    invoke-static {p1}, LB0/c;->c(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_9
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-ne p0, v0, :cond_a

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_a
    move v0, v1

    .line 119
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :cond_b
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    .line 125
    .line 126
    .line 127
    move-result-wide p0

    .line 128
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 129
    .line 130
    .line 131
    move-result-wide p0

    .line 132
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0
.end method

.method public static b(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/HashMap;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    invoke-static {p0}, LB0/c;->c(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-static {v4, p0}, LB0/c;->a(ILandroidx/media3/common/util/ParsableByteArray;)Ljava/io/Serializable;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object v1
.end method

.method public static c(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([BII)V

    .line 19
    .line 20
    .line 21
    return-object v2
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, LB0/c;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getKeyFrameTagPositions()[J
    .locals 1

    .line 1
    iget-object v0, p0, LB0/c;->d:[J

    .line 2
    .line 3
    return-object v0
.end method

.method public getKeyFrameTimesUs()[J
    .locals 1

    .line 1
    iget-object v0, p0, LB0/c;->c:[J

    .line 2
    .line 3
    return-object v0
.end method

.method public parseHeader(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public parsePayload(Landroidx/media3/common/util/ParsableByteArray;J)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 p3, 0x2

    .line 6
    const/4 v0, 0x0

    .line 7
    if-eq p2, p3, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    invoke-static {p1}, LB0/c;->c(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const-string p3, "onMetaData"

    .line 15
    .line 16
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    const/16 p3, 0x8

    .line 35
    .line 36
    if-eq p2, p3, :cond_3

    .line 37
    .line 38
    return v0

    .line 39
    :cond_3
    invoke-static {p1}, LB0/c;->b(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/HashMap;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "duration"

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    instance-of p3, p2, Ljava/lang/Double;

    .line 50
    .line 51
    const-wide v1, 0x412e848000000000L    # 1000000.0

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    if-eqz p3, :cond_4

    .line 57
    .line 58
    check-cast p2, Ljava/lang/Double;

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 61
    .line 62
    .line 63
    move-result-wide p2

    .line 64
    const-wide/16 v3, 0x0

    .line 65
    .line 66
    cmpl-double v3, p2, v3

    .line 67
    .line 68
    if-lez v3, :cond_4

    .line 69
    .line 70
    mul-double/2addr p2, v1

    .line 71
    double-to-long p2, p2

    .line 72
    iput-wide p2, p0, LB0/c;->b:J

    .line 73
    .line 74
    :cond_4
    const-string p2, "keyframes"

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    instance-of p2, p1, Ljava/util/Map;

    .line 81
    .line 82
    if-eqz p2, :cond_6

    .line 83
    .line 84
    check-cast p1, Ljava/util/Map;

    .line 85
    .line 86
    const-string p2, "filepositions"

    .line 87
    .line 88
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    const-string p3, "times"

    .line 93
    .line 94
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    instance-of p3, p2, Ljava/util/List;

    .line 99
    .line 100
    if-eqz p3, :cond_6

    .line 101
    .line 102
    instance-of p3, p1, Ljava/util/List;

    .line 103
    .line 104
    if-eqz p3, :cond_6

    .line 105
    .line 106
    check-cast p2, Ljava/util/List;

    .line 107
    .line 108
    check-cast p1, Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    new-array v3, p3, [J

    .line 115
    .line 116
    iput-object v3, p0, LB0/c;->c:[J

    .line 117
    .line 118
    new-array v3, p3, [J

    .line 119
    .line 120
    iput-object v3, p0, LB0/c;->d:[J

    .line 121
    .line 122
    move v3, v0

    .line 123
    :goto_0
    if-ge v3, p3, :cond_6

    .line 124
    .line 125
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    instance-of v6, v5, Ljava/lang/Double;

    .line 134
    .line 135
    if-eqz v6, :cond_5

    .line 136
    .line 137
    instance-of v6, v4, Ljava/lang/Double;

    .line 138
    .line 139
    if-eqz v6, :cond_5

    .line 140
    .line 141
    iget-object v6, p0, LB0/c;->c:[J

    .line 142
    .line 143
    check-cast v5, Ljava/lang/Double;

    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 146
    .line 147
    .line 148
    move-result-wide v7

    .line 149
    mul-double/2addr v7, v1

    .line 150
    double-to-long v7, v7

    .line 151
    aput-wide v7, v6, v3

    .line 152
    .line 153
    iget-object v5, p0, LB0/c;->d:[J

    .line 154
    .line 155
    check-cast v4, Ljava/lang/Double;

    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/Double;->longValue()J

    .line 158
    .line 159
    .line 160
    move-result-wide v6

    .line 161
    aput-wide v6, v5, v3

    .line 162
    .line 163
    add-int/lit8 v3, v3, 0x1

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_5
    new-array p1, v0, [J

    .line 167
    .line 168
    iput-object p1, p0, LB0/c;->c:[J

    .line 169
    .line 170
    new-array p1, v0, [J

    .line 171
    .line 172
    iput-object p1, p0, LB0/c;->d:[J

    .line 173
    .line 174
    :cond_6
    return v0
.end method
