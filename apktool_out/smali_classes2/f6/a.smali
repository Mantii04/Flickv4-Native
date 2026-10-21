.class public abstract Lf6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0123456789abcdef"

    .line 2
    .line 3
    invoke-static {v0}, Le6/Q;->asUtf8ToByteArray(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lf6/a;->a:[B

    .line 8
    .line 9
    return-void
.end method

.method public static final commonReadAndWriteUnsafe(Le6/l;Le6/i;)Le6/i;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "unsafeCursor"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Le6/b;->resolveDefaultParameter(Le6/i;)Le6/i;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p1, Le6/i;->b:Le6/l;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iput-object p0, p1, Le6/i;->b:Le6/l;

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    iput-boolean p0, p1, Le6/i;->e:Z

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string p1, "already attached to a buffer"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public static final getHEX_DIGIT_BYTES()[B
    .locals 1

    .line 1
    sget-object v0, Lf6/a;->a:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public static final rangeEquals(Le6/H;I[BII)Z
    .locals 5

    .line 1
    const-string v0, "segment"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bytes"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Le6/H;->c:I

    .line 12
    .line 13
    iget-object v1, p0, Le6/H;->a:[B

    .line 14
    .line 15
    :goto_0
    if-ge p3, p4, :cond_2

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Le6/H;->f:Le6/H;

    .line 20
    .line 21
    invoke-static {p0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Le6/H;->a:[B

    .line 25
    .line 26
    iget v0, p0, Le6/H;->b:I

    .line 27
    .line 28
    iget v1, p0, Le6/H;->c:I

    .line 29
    .line 30
    move v4, v1

    .line 31
    move-object v1, p1

    .line 32
    move p1, v0

    .line 33
    move v0, v4

    .line 34
    :cond_0
    aget-byte v2, v1, p1

    .line 35
    .line 36
    aget-byte v3, p2, p3

    .line 37
    .line 38
    if-eq v2, v3, :cond_1

    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return p0

    .line 42
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    add-int/lit8 p3, p3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p0, 0x1

    .line 48
    return p0
.end method

.method public static final readUtf8Line(Le6/l;J)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    const-wide/16 v1, 0x1

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    sub-long v3, p1, v1

    .line 15
    .line 16
    invoke-virtual {p0, v3, v4}, Le6/l;->getByte(J)B

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v5, 0xd

    .line 21
    .line 22
    if-ne v0, v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v3, v4}, Le6/l;->readUtf8(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-wide/16 v0, 0x2

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Le6/l;->skip(J)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    invoke-virtual {p0, p1, p2}, Le6/l;->readUtf8(J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, v1, v2}, Le6/l;->skip(J)V

    .line 39
    .line 40
    .line 41
    return-object p1
.end method

.method public static final selectPrefix(Le6/l;Le6/A;Z)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "options"

    .line 9
    .line 10
    move-object/from16 v2, p1

    .line 11
    .line 12
    invoke-static {v2, v1}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Le6/l;->b:Le6/H;

    .line 16
    .line 17
    const/4 v1, -0x2

    .line 18
    const/4 v3, -0x1

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    return v3

    .line 25
    :cond_1
    iget v4, v0, Le6/H;->b:I

    .line 26
    .line 27
    iget v5, v0, Le6/H;->c:I

    .line 28
    .line 29
    invoke-virtual {v2}, Le6/A;->getTrie$okio()[I

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v6, 0x0

    .line 34
    iget-object v7, v0, Le6/H;->a:[B

    .line 35
    .line 36
    move-object v9, v0

    .line 37
    move v10, v3

    .line 38
    move v8, v6

    .line 39
    :goto_0
    add-int/lit8 v11, v8, 0x1

    .line 40
    .line 41
    aget v12, v2, v8

    .line 42
    .line 43
    add-int/lit8 v8, v8, 0x2

    .line 44
    .line 45
    aget v11, v2, v11

    .line 46
    .line 47
    if-eq v11, v3, :cond_2

    .line 48
    .line 49
    move v10, v11

    .line 50
    :cond_2
    if-nez v9, :cond_3

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    const/4 v11, 0x0

    .line 54
    if-gez v12, :cond_a

    .line 55
    .line 56
    mul-int/lit8 v12, v12, -0x1

    .line 57
    .line 58
    add-int v13, v12, v8

    .line 59
    .line 60
    :goto_1
    add-int/lit8 v12, v4, 0x1

    .line 61
    .line 62
    aget-byte v4, v7, v4

    .line 63
    .line 64
    and-int/lit16 v4, v4, 0xff

    .line 65
    .line 66
    add-int/lit8 v14, v8, 0x1

    .line 67
    .line 68
    aget v8, v2, v8

    .line 69
    .line 70
    if-eq v4, v8, :cond_4

    .line 71
    .line 72
    goto :goto_6

    .line 73
    :cond_4
    if-ne v14, v13, :cond_5

    .line 74
    .line 75
    const/4 v4, 0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    move v4, v6

    .line 78
    :goto_2
    if-ne v12, v5, :cond_8

    .line 79
    .line 80
    invoke-static {v9}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v5, v9, Le6/H;->f:Le6/H;

    .line 84
    .line 85
    invoke-static {v5}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget v7, v5, Le6/H;->b:I

    .line 89
    .line 90
    iget v8, v5, Le6/H;->c:I

    .line 91
    .line 92
    iget-object v9, v5, Le6/H;->a:[B

    .line 93
    .line 94
    if-ne v5, v0, :cond_7

    .line 95
    .line 96
    if-eqz v4, :cond_6

    .line 97
    .line 98
    move v5, v8

    .line 99
    move-object v8, v11

    .line 100
    goto :goto_4

    .line 101
    :cond_6
    :goto_3
    if-eqz p2, :cond_b

    .line 102
    .line 103
    return v1

    .line 104
    :cond_7
    move/from16 v16, v8

    .line 105
    .line 106
    move-object v8, v5

    .line 107
    move/from16 v5, v16

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_8
    move-object v8, v9

    .line 111
    move-object v9, v7

    .line 112
    move v7, v12

    .line 113
    :goto_4
    if-eqz v4, :cond_9

    .line 114
    .line 115
    aget v4, v2, v14

    .line 116
    .line 117
    move/from16 v16, v7

    .line 118
    .line 119
    move v7, v5

    .line 120
    move/from16 v5, v16

    .line 121
    .line 122
    move-object/from16 v16, v9

    .line 123
    .line 124
    move-object v9, v8

    .line 125
    move-object/from16 v8, v16

    .line 126
    .line 127
    goto :goto_7

    .line 128
    :cond_9
    move v4, v7

    .line 129
    move-object v7, v9

    .line 130
    move-object v9, v8

    .line 131
    move v8, v14

    .line 132
    goto :goto_1

    .line 133
    :cond_a
    add-int/lit8 v13, v4, 0x1

    .line 134
    .line 135
    aget-byte v4, v7, v4

    .line 136
    .line 137
    and-int/lit16 v4, v4, 0xff

    .line 138
    .line 139
    add-int v14, v8, v12

    .line 140
    .line 141
    :goto_5
    if-ne v8, v14, :cond_c

    .line 142
    .line 143
    :cond_b
    :goto_6
    return v10

    .line 144
    :cond_c
    aget v15, v2, v8

    .line 145
    .line 146
    if-ne v4, v15, :cond_10

    .line 147
    .line 148
    add-int/2addr v8, v12

    .line 149
    aget v4, v2, v8

    .line 150
    .line 151
    if-ne v13, v5, :cond_d

    .line 152
    .line 153
    iget-object v9, v9, Le6/H;->f:Le6/H;

    .line 154
    .line 155
    invoke-static {v9}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    iget v5, v9, Le6/H;->b:I

    .line 159
    .line 160
    iget v7, v9, Le6/H;->c:I

    .line 161
    .line 162
    iget-object v8, v9, Le6/H;->a:[B

    .line 163
    .line 164
    if-ne v9, v0, :cond_e

    .line 165
    .line 166
    move-object v9, v11

    .line 167
    goto :goto_7

    .line 168
    :cond_d
    move-object v8, v7

    .line 169
    move v7, v5

    .line 170
    move v5, v13

    .line 171
    :cond_e
    :goto_7
    if-ltz v4, :cond_f

    .line 172
    .line 173
    return v4

    .line 174
    :cond_f
    neg-int v4, v4

    .line 175
    move-object/from16 v16, v8

    .line 176
    .line 177
    move v8, v4

    .line 178
    move v4, v5

    .line 179
    move v5, v7

    .line 180
    move-object/from16 v7, v16

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_10
    add-int/lit8 v8, v8, 0x1

    .line 185
    .line 186
    goto :goto_5
.end method

.method public static synthetic selectPrefix$default(Le6/l;Le6/A;ZILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Lf6/a;->selectPrefix(Le6/l;Le6/A;Z)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method
