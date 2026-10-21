.class public final LR3/c;
.super LR3/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(LR3/a;Ljava/lang/Character;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LR3/d;-><init>(LR3/a;Ljava/lang/Character;)V

    .line 3
    iget-object p1, p1, LR3/a;->b:[C

    array-length p1, p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, LP3/v;->checkArgument(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 1
    new-instance v1, LR3/a;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v1, p1, p2}, LR3/a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v1, v0}, LR3/c;-><init>(LR3/a;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public final a([BLjava/lang/CharSequence;)I
    .locals 8

    .line 1
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, LR3/d;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, LR3/d;->b:LR3/a;

    .line 13
    .line 14
    iget v2, v1, LR3/a;->e:I

    .line 15
    .line 16
    rem-int/2addr v0, v2

    .line 17
    iget-object v2, v1, LR3/a;->h:[Z

    .line 18
    .line 19
    aget-boolean v0, v2, v0

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    move v2, v0

    .line 25
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ge v0, v3, :cond_2

    .line 30
    .line 31
    add-int/lit8 v3, v0, 0x1

    .line 32
    .line 33
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {v1, v4}, LR3/a;->a(C)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    shl-int/lit8 v4, v4, 0x12

    .line 42
    .line 43
    add-int/lit8 v5, v0, 0x2

    .line 44
    .line 45
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {v1, v3}, LR3/a;->a(C)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    shl-int/lit8 v3, v3, 0xc

    .line 54
    .line 55
    or-int/2addr v3, v4

    .line 56
    add-int/lit8 v4, v2, 0x1

    .line 57
    .line 58
    ushr-int/lit8 v6, v3, 0x10

    .line 59
    .line 60
    int-to-byte v6, v6

    .line 61
    aput-byte v6, p1, v2

    .line 62
    .line 63
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-ge v5, v6, :cond_1

    .line 68
    .line 69
    add-int/lit8 v6, v0, 0x3

    .line 70
    .line 71
    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    invoke-virtual {v1, v5}, LR3/a;->a(C)I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    shl-int/lit8 v5, v5, 0x6

    .line 80
    .line 81
    or-int/2addr v3, v5

    .line 82
    add-int/lit8 v5, v2, 0x2

    .line 83
    .line 84
    ushr-int/lit8 v7, v3, 0x8

    .line 85
    .line 86
    and-int/lit16 v7, v7, 0xff

    .line 87
    .line 88
    int-to-byte v7, v7

    .line 89
    aput-byte v7, p1, v4

    .line 90
    .line 91
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-ge v6, v4, :cond_0

    .line 96
    .line 97
    add-int/lit8 v0, v0, 0x4

    .line 98
    .line 99
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-virtual {v1, v4}, LR3/a;->a(C)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    or-int/2addr v3, v4

    .line 108
    add-int/lit8 v2, v2, 0x3

    .line 109
    .line 110
    and-int/lit16 v3, v3, 0xff

    .line 111
    .line 112
    int-to-byte v3, v3

    .line 113
    aput-byte v3, p1, v5

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    move v2, v5

    .line 117
    move v0, v6

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    move v2, v4

    .line 120
    move v0, v5

    .line 121
    goto :goto_0

    .line 122
    :cond_2
    return v2

    .line 123
    :cond_3
    new-instance p1, Lcom/google/common/io/BaseEncoding$DecodingException;

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v1, "Invalid input length "

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p1
.end method

.method public final b(Ljava/lang/StringBuilder;[BII)V
    .locals 5

    .line 1
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    add-int v0, p3, p4

    .line 5
    .line 6
    array-length v1, p2

    .line 7
    invoke-static {p3, v0, v1}, LP3/v;->checkPositionIndexes(III)V

    .line 8
    .line 9
    .line 10
    :goto_0
    const/4 v1, 0x3

    .line 11
    if-lt p4, v1, :cond_0

    .line 12
    .line 13
    add-int/lit8 v1, p3, 0x1

    .line 14
    .line 15
    aget-byte v2, p2, p3

    .line 16
    .line 17
    and-int/lit16 v2, v2, 0xff

    .line 18
    .line 19
    shl-int/lit8 v2, v2, 0x10

    .line 20
    .line 21
    add-int/lit8 v3, p3, 0x2

    .line 22
    .line 23
    aget-byte v1, p2, v1

    .line 24
    .line 25
    and-int/lit16 v1, v1, 0xff

    .line 26
    .line 27
    shl-int/lit8 v1, v1, 0x8

    .line 28
    .line 29
    or-int/2addr v1, v2

    .line 30
    add-int/lit8 p3, p3, 0x3

    .line 31
    .line 32
    aget-byte v2, p2, v3

    .line 33
    .line 34
    and-int/lit16 v2, v2, 0xff

    .line 35
    .line 36
    or-int/2addr v1, v2

    .line 37
    ushr-int/lit8 v2, v1, 0x12

    .line 38
    .line 39
    iget-object v3, p0, LR3/d;->b:LR3/a;

    .line 40
    .line 41
    iget-object v4, v3, LR3/a;->b:[C

    .line 42
    .line 43
    aget-char v2, v4, v2

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 46
    .line 47
    .line 48
    ushr-int/lit8 v2, v1, 0xc

    .line 49
    .line 50
    and-int/lit8 v2, v2, 0x3f

    .line 51
    .line 52
    iget-object v3, v3, LR3/a;->b:[C

    .line 53
    .line 54
    aget-char v2, v3, v2

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 57
    .line 58
    .line 59
    ushr-int/lit8 v2, v1, 0x6

    .line 60
    .line 61
    and-int/lit8 v2, v2, 0x3f

    .line 62
    .line 63
    aget-char v2, v3, v2

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 66
    .line 67
    .line 68
    and-int/lit8 v1, v1, 0x3f

    .line 69
    .line 70
    aget-char v1, v3, v1

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 73
    .line 74
    .line 75
    add-int/lit8 p4, p4, -0x3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    if-ge p3, v0, :cond_1

    .line 79
    .line 80
    sub-int/2addr v0, p3

    .line 81
    invoke-virtual {p0, p1, p2, p3, v0}, LR3/d;->d(Ljava/lang/StringBuilder;[BII)V

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void
.end method

.method public final e(LR3/a;Ljava/lang/Character;)LR3/e;
    .locals 1

    .line 1
    new-instance v0, LR3/c;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, LR3/c;-><init>(LR3/a;Ljava/lang/Character;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
