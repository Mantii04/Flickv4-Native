.class public abstract Landroidx/datastore/preferences/protobuf/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public final a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/k0;)Z
    .locals 7

    .line 1
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/k0;->getTag()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/K0;->getTagFieldNumber(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/K0;->getTagWireType(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x3

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v0, :cond_8

    .line 16
    .line 17
    if-eq v0, v3, :cond_7

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    if-eq v0, v4, :cond_6

    .line 21
    .line 22
    if-eq v0, v2, :cond_2

    .line 23
    .line 24
    const/4 v4, 0x4

    .line 25
    if-eq v0, v4, :cond_1

    .line 26
    .line 27
    const/4 v4, 0x5

    .line 28
    if-ne v0, v4, :cond_0

    .line 29
    .line 30
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/k0;->readFixed32()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    check-cast p1, Landroidx/datastore/preferences/protobuf/x0;

    .line 35
    .line 36
    shl-int/lit8 v0, v1, 0x3

    .line 37
    .line 38
    or-int/2addr v0, v4

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, v0, p2}, Landroidx/datastore/preferences/protobuf/x0;->b(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return v3

    .line 47
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    throw p1

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    return p1

    .line 54
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/x0;->a()Landroidx/datastore/preferences/protobuf/x0;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    shl-int/2addr v1, v2

    .line 59
    or-int/lit8 v4, v1, 0x4

    .line 60
    .line 61
    :cond_3
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/k0;->getFieldNumber()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    const v6, 0x7fffffff

    .line 66
    .line 67
    .line 68
    if-eq v5, v6, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/w0;->a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/k0;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_3

    .line 75
    .line 76
    :cond_4
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/k0;->getTag()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-ne v4, p2, :cond_5

    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/x0;->makeImmutable()V

    .line 83
    .line 84
    .line 85
    check-cast p1, Landroidx/datastore/preferences/protobuf/x0;

    .line 86
    .line 87
    or-int/lit8 p2, v1, 0x3

    .line 88
    .line 89
    invoke-virtual {p1, p2, v0}, Landroidx/datastore/preferences/protobuf/x0;->b(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return v3

    .line 93
    :cond_5
    new-instance p1, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 94
    .line 95
    const-string p2, "Protocol message end-group tag did not match expected tag."

    .line 96
    .line 97
    invoke-direct {p1, p2}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_6
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/k0;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p1, Landroidx/datastore/preferences/protobuf/x0;

    .line 106
    .line 107
    shl-int/lit8 v0, v1, 0x3

    .line 108
    .line 109
    or-int/2addr v0, v4

    .line 110
    invoke-virtual {p1, v0, p2}, Landroidx/datastore/preferences/protobuf/x0;->b(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    return v3

    .line 114
    :cond_7
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/k0;->readFixed64()J

    .line 115
    .line 116
    .line 117
    move-result-wide v4

    .line 118
    check-cast p1, Landroidx/datastore/preferences/protobuf/x0;

    .line 119
    .line 120
    shl-int/lit8 p2, v1, 0x3

    .line 121
    .line 122
    or-int/2addr p2, v3

    .line 123
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p1, p2, v0}, Landroidx/datastore/preferences/protobuf/x0;->b(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    return v3

    .line 131
    :cond_8
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/k0;->readInt64()J

    .line 132
    .line 133
    .line 134
    move-result-wide v4

    .line 135
    check-cast p1, Landroidx/datastore/preferences/protobuf/x0;

    .line 136
    .line 137
    shl-int/lit8 p2, v1, 0x3

    .line 138
    .line 139
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p1, p2, v0}, Landroidx/datastore/preferences/protobuf/x0;->b(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    return v3
.end method

.method public abstract b()Landroidx/datastore/preferences/protobuf/x0;
.end method
