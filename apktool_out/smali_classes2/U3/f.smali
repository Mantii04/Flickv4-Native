.class public abstract LU3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs concat([[J)[J
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    move v4, v3

    .line 6
    :goto_0
    if-ge v4, v0, :cond_0

    .line 7
    .line 8
    aget-object v5, p0, v4

    .line 9
    .line 10
    array-length v5, v5

    .line 11
    int-to-long v5, v5

    .line 12
    add-long/2addr v1, v5

    .line 13
    add-int/lit8 v4, v4, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    long-to-int v0, v1

    .line 17
    int-to-long v4, v0

    .line 18
    cmp-long v4, v1, v4

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v4, v3

    .line 25
    :goto_1
    const-string v5, "the total number of elements (%s) in the arrays must fit in an int"

    .line 26
    .line 27
    invoke-static {v4, v5, v1, v2}, LP3/v;->checkArgument(ZLjava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    new-array v0, v0, [J

    .line 31
    .line 32
    array-length v1, p0

    .line 33
    move v2, v3

    .line 34
    move v4, v2

    .line 35
    :goto_2
    if-ge v2, v1, :cond_2

    .line 36
    .line 37
    aget-object v5, p0, v2

    .line 38
    .line 39
    array-length v6, v5

    .line 40
    invoke-static {v5, v3, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    array-length v5, v5

    .line 44
    add-int/2addr v4, v5

    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    return-object v0
.end method

.method public static hashCode(J)I
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    ushr-long v0, p0, v0

    .line 4
    .line 5
    xor-long/2addr p0, v0

    .line 6
    long-to-int p0, p0

    .line 7
    return p0
.end method

.method public static varargs max([J)J
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    move v0, v2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    invoke-static {v0}, LP3/v;->checkArgument(Z)V

    .line 10
    .line 11
    .line 12
    aget-wide v0, p0, v1

    .line 13
    .line 14
    :goto_1
    array-length v3, p0

    .line 15
    if-ge v2, v3, :cond_2

    .line 16
    .line 17
    aget-wide v3, p0, v2

    .line 18
    .line 19
    cmp-long v5, v3, v0

    .line 20
    .line 21
    if-lez v5, :cond_1

    .line 22
    .line 23
    move-wide v0, v3

    .line 24
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    return-wide v0
.end method

.method public static varargs min([J)J
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    move v0, v2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    invoke-static {v0}, LP3/v;->checkArgument(Z)V

    .line 10
    .line 11
    .line 12
    aget-wide v0, p0, v1

    .line 13
    .line 14
    :goto_1
    array-length v3, p0

    .line 15
    if-ge v2, v3, :cond_2

    .line 16
    .line 17
    aget-wide v3, p0, v2

    .line 18
    .line 19
    cmp-long v5, v3, v0

    .line 20
    .line 21
    if-gez v5, :cond_1

    .line 22
    .line 23
    move-wide v0, v3

    .line 24
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    return-wide v0
.end method

.method public static tryParse(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    check-cast v3, Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    const/4 v3, 0x2

    .line 21
    if-lt v1, v3, :cond_c

    .line 22
    .line 23
    const/16 v3, 0x24

    .line 24
    .line 25
    if-gt v1, v3, :cond_c

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/16 v5, 0x2d

    .line 33
    .line 34
    if-ne v4, v5, :cond_1

    .line 35
    .line 36
    move v3, v2

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ne v3, v4, :cond_2

    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/4 v6, -0x1

    .line 52
    const/16 v7, 0x80

    .line 53
    .line 54
    if-ge v5, v7, :cond_3

    .line 55
    .line 56
    sget-object v8, LU3/e;->a:[B

    .line 57
    .line 58
    aget-byte v5, v8, v5

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    sget-object v5, LU3/e;->a:[B

    .line 62
    .line 63
    move v5, v6

    .line 64
    :goto_0
    if-ltz v5, :cond_b

    .line 65
    .line 66
    if-lt v5, v1, :cond_4

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    neg-int v5, v5

    .line 70
    int-to-long v8, v5

    .line 71
    int-to-long v10, v1

    .line 72
    const-wide/high16 v12, -0x8000000000000000L

    .line 73
    .line 74
    div-long v14, v12, v10

    .line 75
    .line 76
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-ge v4, v5, :cond_8

    .line 81
    .line 82
    add-int/lit8 v5, v4, 0x1

    .line 83
    .line 84
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-ge v4, v7, :cond_5

    .line 89
    .line 90
    sget-object v16, LU3/e;->a:[B

    .line 91
    .line 92
    aget-byte v4, v16, v4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    sget-object v4, LU3/e;->a:[B

    .line 96
    .line 97
    move v4, v6

    .line 98
    :goto_2
    if-ltz v4, :cond_b

    .line 99
    .line 100
    if-ge v4, v1, :cond_b

    .line 101
    .line 102
    cmp-long v16, v8, v14

    .line 103
    .line 104
    if-gez v16, :cond_6

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_6
    mul-long/2addr v8, v10

    .line 108
    move/from16 v17, v3

    .line 109
    .line 110
    int-to-long v2, v4

    .line 111
    add-long v18, v2, v12

    .line 112
    .line 113
    cmp-long v4, v8, v18

    .line 114
    .line 115
    if-gez v4, :cond_7

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_7
    sub-long/2addr v8, v2

    .line 119
    move v4, v5

    .line 120
    move/from16 v3, v17

    .line 121
    .line 122
    const/4 v2, 0x1

    .line 123
    goto :goto_1

    .line 124
    :cond_8
    move/from16 v17, v3

    .line 125
    .line 126
    if-eqz v17, :cond_9

    .line 127
    .line 128
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    return-object v0

    .line 133
    :cond_9
    cmp-long v0, v8, v12

    .line 134
    .line 135
    if-nez v0, :cond_a

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_a
    neg-long v0, v8

    .line 139
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    return-object v0

    .line 144
    :cond_b
    :goto_3
    const/4 v0, 0x0

    .line 145
    return-object v0

    .line 146
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    const-string v2, "radix must be between MIN_RADIX and MAX_RADIX but was "

    .line 149
    .line 150
    invoke-static {v1, v2}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0
.end method
