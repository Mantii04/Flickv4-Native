.class public LR3/d;
.super LR3/e;
.source "SourceFile"


# instance fields
.field public final b:LR3/a;

.field public final c:Ljava/lang/Character;

.field public volatile d:LR3/e;

.field public volatile e:LR3/e;


# direct methods
.method public constructor <init>(LR3/a;Ljava/lang/Character;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR3/a;

    iput-object v0, p0, LR3/d;->b:LR3/a;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, LR3/a;->matches(C)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "Padding character %s was already in alphabet"

    .line 4
    invoke-static {p1, v0, p2}, LP3/v;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 5
    iput-object p2, p0, LR3/d;->c:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 6
    new-instance v1, LR3/a;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v1, p1, p2}, LR3/a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v1, v0}, LR3/d;-><init>(LR3/a;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public a([BLjava/lang/CharSequence;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p2

    .line 7
    .line 8
    invoke-virtual {v0, v1}, LR3/d;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, v0, LR3/d;->b:LR3/a;

    .line 17
    .line 18
    iget v4, v3, LR3/a;->e:I

    .line 19
    .line 20
    rem-int/2addr v2, v4

    .line 21
    iget-object v4, v3, LR3/a;->h:[Z

    .line 22
    .line 23
    aget-boolean v2, v4, v2

    .line 24
    .line 25
    if-eqz v2, :cond_4

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    move v4, v2

    .line 29
    move v5, v4

    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-ge v4, v6, :cond_3

    .line 35
    .line 36
    const-wide/16 v6, 0x0

    .line 37
    .line 38
    move v8, v2

    .line 39
    move v9, v8

    .line 40
    :goto_1
    iget v10, v3, LR3/a;->d:I

    .line 41
    .line 42
    iget v11, v3, LR3/a;->e:I

    .line 43
    .line 44
    if-ge v8, v11, :cond_1

    .line 45
    .line 46
    shl-long/2addr v6, v10

    .line 47
    add-int v10, v4, v8

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    if-ge v10, v11, :cond_0

    .line 54
    .line 55
    add-int/lit8 v10, v9, 0x1

    .line 56
    .line 57
    add-int/2addr v9, v4

    .line 58
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    invoke-virtual {v3, v9}, LR3/a;->a(C)I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    int-to-long v11, v9

    .line 67
    or-long/2addr v6, v11

    .line 68
    move v9, v10

    .line 69
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iget v8, v3, LR3/a;->f:I

    .line 73
    .line 74
    mul-int/lit8 v12, v8, 0x8

    .line 75
    .line 76
    mul-int/2addr v9, v10

    .line 77
    sub-int/2addr v12, v9

    .line 78
    add-int/lit8 v8, v8, -0x1

    .line 79
    .line 80
    mul-int/lit8 v8, v8, 0x8

    .line 81
    .line 82
    :goto_2
    if-lt v8, v12, :cond_2

    .line 83
    .line 84
    add-int/lit8 v9, v5, 0x1

    .line 85
    .line 86
    ushr-long v13, v6, v8

    .line 87
    .line 88
    const-wide/16 v15, 0xff

    .line 89
    .line 90
    and-long/2addr v13, v15

    .line 91
    long-to-int v10, v13

    .line 92
    int-to-byte v10, v10

    .line 93
    aput-byte v10, p1, v5

    .line 94
    .line 95
    add-int/lit8 v8, v8, -0x8

    .line 96
    .line 97
    move v5, v9

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    add-int/2addr v4, v11

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    return v5

    .line 102
    :cond_4
    new-instance v2, Lcom/google/common/io/BaseEncoding$DecodingException;

    .line 103
    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v4, "Invalid input length "

    .line 107
    .line 108
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v2
.end method

.method public b(Ljava/lang/StringBuilder;[BII)V
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
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-ge v0, p4, :cond_0

    .line 12
    .line 13
    add-int v1, p3, v0

    .line 14
    .line 15
    iget-object v2, p0, LR3/d;->b:LR3/a;

    .line 16
    .line 17
    iget v3, v2, LR3/a;->f:I

    .line 18
    .line 19
    sub-int v4, p4, v0

    .line 20
    .line 21
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {p0, p1, p2, v1, v3}, LR3/d;->d(Ljava/lang/StringBuilder;[BII)V

    .line 26
    .line 27
    .line 28
    iget v1, v2, LR3/a;->f:I

    .line 29
    .line 30
    add-int/2addr v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LR3/d;->c:Ljava/lang/Character;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eq v2, v0, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public final d(Ljava/lang/StringBuilder;[BII)V
    .locals 8

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
    iget-object v0, p0, LR3/d;->b:LR3/a;

    .line 11
    .line 12
    iget v1, v0, LR3/a;->f:I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-gt p4, v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    invoke-static {v1}, LP3/v;->checkArgument(Z)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    move v1, v2

    .line 26
    :goto_1
    const/16 v5, 0x8

    .line 27
    .line 28
    if-ge v1, p4, :cond_1

    .line 29
    .line 30
    add-int v6, p3, v1

    .line 31
    .line 32
    aget-byte v6, p2, v6

    .line 33
    .line 34
    and-int/lit16 v6, v6, 0xff

    .line 35
    .line 36
    int-to-long v6, v6

    .line 37
    or-long/2addr v3, v6

    .line 38
    shl-long/2addr v3, v5

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 p2, p4, 0x1

    .line 43
    .line 44
    mul-int/2addr p2, v5

    .line 45
    iget p3, v0, LR3/a;->d:I

    .line 46
    .line 47
    sub-int/2addr p2, p3

    .line 48
    :goto_2
    mul-int/lit8 v1, p4, 0x8

    .line 49
    .line 50
    if-ge v2, v1, :cond_2

    .line 51
    .line 52
    sub-int v1, p2, v2

    .line 53
    .line 54
    ushr-long v6, v3, v1

    .line 55
    .line 56
    long-to-int v1, v6

    .line 57
    iget v6, v0, LR3/a;->c:I

    .line 58
    .line 59
    and-int/2addr v1, v6

    .line 60
    iget-object v6, v0, LR3/a;->b:[C

    .line 61
    .line 62
    aget-char v1, v6, v1

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 65
    .line 66
    .line 67
    add-int/2addr v2, p3

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    iget-object p2, p0, LR3/d;->c:Ljava/lang/Character;

    .line 70
    .line 71
    if-eqz p2, :cond_3

    .line 72
    .line 73
    :goto_3
    iget p4, v0, LR3/a;->f:I

    .line 74
    .line 75
    mul-int/2addr p4, v5

    .line 76
    if-ge v2, p4, :cond_3

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    .line 79
    .line 80
    .line 81
    move-result p4

    .line 82
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 83
    .line 84
    .line 85
    add-int/2addr v2, p3

    .line 86
    goto :goto_3

    .line 87
    :cond_3
    return-void
.end method

.method public e(LR3/a;Ljava/lang/Character;)LR3/e;
    .locals 1

    .line 1
    new-instance v0, LR3/d;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, LR3/d;-><init>(LR3/a;Ljava/lang/Character;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, LR3/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, LR3/d;

    .line 7
    .line 8
    iget-object v0, p1, LR3/d;->b:LR3/a;

    .line 9
    .line 10
    iget-object v2, p0, LR3/d;->b:LR3/a;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, LR3/a;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, LR3/d;->c:Ljava/lang/Character;

    .line 19
    .line 20
    iget-object p1, p1, LR3/d;->c:Ljava/lang/Character;

    .line 21
    .line 22
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, LR3/d;->b:LR3/a;

    .line 2
    .line 3
    invoke-virtual {v0}, LR3/a;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, LR3/d;->c:Ljava/lang/Character;

    .line 8
    .line 9
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public ignoreCase()LR3/e;
    .locals 2

    .line 1
    iget-object v0, p0, LR3/d;->e:LR3/e;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, LR3/d;->b:LR3/a;

    .line 6
    .line 7
    invoke-virtual {v0}, LR3/a;->b()LR3/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, LR3/d;->b:LR3/a;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, LR3/d;->c:Ljava/lang/Character;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, LR3/d;->e(LR3/a;Ljava/lang/Character;)LR3/e;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    iput-object v0, p0, LR3/d;->e:LR3/e;

    .line 24
    .line 25
    :cond_1
    return-object v0
.end method

.method public lowerCase()LR3/e;
    .locals 7

    .line 1
    iget-object v0, p0, LR3/d;->d:LR3/e;

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, LR3/d;->b:LR3/a;

    .line 6
    .line 7
    iget-object v1, v0, LR3/a;->b:[C

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_0
    if-ge v4, v2, :cond_5

    .line 13
    .line 14
    aget-char v5, v1, v4

    .line 15
    .line 16
    invoke-static {v5}, LP3/a;->isUpperCase(C)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_4

    .line 21
    .line 22
    array-length v2, v1

    .line 23
    move v4, v3

    .line 24
    :goto_1
    const/4 v5, 0x1

    .line 25
    if-ge v4, v2, :cond_1

    .line 26
    .line 27
    aget-char v6, v1, v4

    .line 28
    .line 29
    invoke-static {v6}, LP3/a;->isLowerCase(C)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    move v2, v5

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v2, v3

    .line 41
    :goto_2
    xor-int/2addr v2, v5

    .line 42
    const-string v4, "Cannot call lowerCase() on a mixed-case alphabet"

    .line 43
    .line 44
    invoke-static {v2, v4}, LP3/v;->checkState(ZLjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    array-length v2, v1

    .line 48
    new-array v2, v2, [C

    .line 49
    .line 50
    :goto_3
    array-length v4, v1

    .line 51
    if-ge v3, v4, :cond_2

    .line 52
    .line 53
    aget-char v4, v1, v3

    .line 54
    .line 55
    invoke-static {v4}, LP3/a;->toLowerCase(C)C

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    aput-char v4, v2, v3

    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_2
    new-instance v1, LR3/a;

    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v4, v0, LR3/a;->a:Ljava/lang/String;

    .line 72
    .line 73
    const-string v5, ".lowerCase()"

    .line 74
    .line 75
    invoke-static {v3, v4, v5}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-direct {v1, v3, v2}, LR3/a;-><init>(Ljava/lang/String;[C)V

    .line 80
    .line 81
    .line 82
    iget-boolean v0, v0, LR3/a;->i:Z

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    invoke-virtual {v1}, LR3/a;->b()LR3/a;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    goto :goto_4

    .line 91
    :cond_3
    move-object v0, v1

    .line 92
    goto :goto_4

    .line 93
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    :goto_4
    iget-object v1, p0, LR3/d;->b:LR3/a;

    .line 97
    .line 98
    if-ne v0, v1, :cond_6

    .line 99
    .line 100
    move-object v0, p0

    .line 101
    goto :goto_5

    .line 102
    :cond_6
    iget-object v1, p0, LR3/d;->c:Ljava/lang/Character;

    .line 103
    .line 104
    invoke-virtual {p0, v0, v1}, LR3/d;->e(LR3/a;Ljava/lang/Character;)LR3/e;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :goto_5
    iput-object v0, p0, LR3/d;->d:LR3/e;

    .line 109
    .line 110
    :cond_7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BaseEncoding."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, LR3/d;->b:LR3/a;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    iget v1, v1, LR3/a;->d:I

    .line 16
    .line 17
    rem-int/2addr v2, v1

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, LR3/d;->c:Ljava/lang/Character;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    const-string v1, ".omitPadding()"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v2, ".withPadChar(\'"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "\')"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
