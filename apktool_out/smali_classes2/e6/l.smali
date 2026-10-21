.class public final Le6/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/n;
.implements Le6/m;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field public b:Le6/H;

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic readAndWriteUnsafe$default(Le6/l;Le6/i;ILjava/lang/Object;)Le6/i;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {}, Le6/b;->getDEFAULT__new_UnsafeCursor()Le6/i;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Le6/l;->readAndWriteUnsafe(Le6/i;)Le6/i;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le6/l;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Le6/l;->skip(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public clone()Le6/l;
    .locals 1

    .line 2
    invoke-virtual {p0}, Le6/l;->copy()Le6/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le6/l;->clone()Le6/l;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final completeSegmentByteCount()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Le6/l;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    return-wide v2

    .line 12
    :cond_0
    iget-object v2, p0, Le6/l;->b:Le6/H;

    .line 13
    .line 14
    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v2, Le6/H;->g:Le6/H;

    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget v3, v2, Le6/H;->c:I

    .line 23
    .line 24
    const/16 v4, 0x2000

    .line 25
    .line 26
    if-ge v3, v4, :cond_1

    .line 27
    .line 28
    iget-boolean v4, v2, Le6/H;->e:Z

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    iget v2, v2, Le6/H;->b:I

    .line 33
    .line 34
    sub-int/2addr v3, v2

    .line 35
    int-to-long v2, v3

    .line 36
    sub-long/2addr v0, v2

    .line 37
    :cond_1
    return-wide v0
.end method

.method public final copy()Le6/l;
    .locals 6

    .line 1
    new-instance v0, Le6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Le6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Le6/l;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v1, v1, v3

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v1, p0, Le6/l;->b:Le6/H;

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Le6/H;->sharedCopy()Le6/H;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iput-object v2, v0, Le6/l;->b:Le6/H;

    .line 27
    .line 28
    iput-object v2, v2, Le6/H;->g:Le6/H;

    .line 29
    .line 30
    iput-object v2, v2, Le6/H;->f:Le6/H;

    .line 31
    .line 32
    iget-object v3, v1, Le6/H;->f:Le6/H;

    .line 33
    .line 34
    :goto_0
    if-eq v3, v1, :cond_1

    .line 35
    .line 36
    iget-object v4, v2, Le6/H;->g:Le6/H;

    .line 37
    .line 38
    invoke-static {v4}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v3}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Le6/H;->sharedCopy()Le6/H;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v4, v5}, Le6/H;->push(Le6/H;)Le6/H;

    .line 49
    .line 50
    .line 51
    iget-object v3, v3, Le6/H;->f:Le6/H;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Le6/l;->size()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    invoke-virtual {v0, v1, v2}, Le6/l;->setSize$okio(J)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public final copyTo(Le6/l;JJ)Le6/l;
    .locals 7

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Le6/l;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    move-wide v3, p2

    .line 11
    move-wide v5, p4

    .line 12
    invoke-static/range {v1 .. v6}, Le6/b;->checkOffsetAndCount(JJJ)V

    .line 13
    .line 14
    .line 15
    const-wide/16 p2, 0x0

    .line 16
    .line 17
    cmp-long p4, v5, p2

    .line 18
    .line 19
    if-nez p4, :cond_0

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    invoke-virtual {p1}, Le6/l;->size()J

    .line 23
    .line 24
    .line 25
    move-result-wide p4

    .line 26
    add-long/2addr p4, v5

    .line 27
    invoke-virtual {p1, p4, p5}, Le6/l;->setSize$okio(J)V

    .line 28
    .line 29
    .line 30
    iget-object p4, p0, Le6/l;->b:Le6/H;

    .line 31
    .line 32
    :goto_0
    invoke-static {p4}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget p5, p4, Le6/H;->c:I

    .line 36
    .line 37
    iget v0, p4, Le6/H;->b:I

    .line 38
    .line 39
    sub-int v1, p5, v0

    .line 40
    .line 41
    int-to-long v1, v1

    .line 42
    cmp-long v1, v3, v1

    .line 43
    .line 44
    if-ltz v1, :cond_1

    .line 45
    .line 46
    sub-int/2addr p5, v0

    .line 47
    int-to-long v0, p5

    .line 48
    sub-long/2addr v3, v0

    .line 49
    iget-object p4, p4, Le6/H;->f:Le6/H;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move-object v0, p4

    .line 53
    move-wide p4, v5

    .line 54
    :goto_1
    cmp-long v1, p4, p2

    .line 55
    .line 56
    if-lez v1, :cond_3

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Le6/H;->sharedCopy()Le6/H;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget v2, v1, Le6/H;->b:I

    .line 66
    .line 67
    long-to-int v3, v3

    .line 68
    add-int/2addr v2, v3

    .line 69
    iput v2, v1, Le6/H;->b:I

    .line 70
    .line 71
    long-to-int v3, p4

    .line 72
    add-int/2addr v2, v3

    .line 73
    iget v3, v1, Le6/H;->c:I

    .line 74
    .line 75
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    iput v2, v1, Le6/H;->c:I

    .line 80
    .line 81
    iget-object v2, p1, Le6/l;->b:Le6/H;

    .line 82
    .line 83
    if-nez v2, :cond_2

    .line 84
    .line 85
    iput-object v1, v1, Le6/H;->g:Le6/H;

    .line 86
    .line 87
    iput-object v1, v1, Le6/H;->f:Le6/H;

    .line 88
    .line 89
    iput-object v1, p1, Le6/l;->b:Le6/H;

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, v2, Le6/H;->g:Le6/H;

    .line 96
    .line 97
    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1}, Le6/H;->push(Le6/H;)Le6/H;

    .line 101
    .line 102
    .line 103
    :goto_2
    iget v2, v1, Le6/H;->c:I

    .line 104
    .line 105
    iget v1, v1, Le6/H;->b:I

    .line 106
    .line 107
    sub-int/2addr v2, v1

    .line 108
    int-to-long v1, v2

    .line 109
    sub-long/2addr p4, v1

    .line 110
    iget-object v0, v0, Le6/H;->f:Le6/H;

    .line 111
    .line 112
    move-wide v3, p2

    .line 113
    goto :goto_1

    .line 114
    :cond_3
    :goto_3
    return-object p0
.end method

.method public emit()Le6/l;
    .locals 0

    .line 2
    return-object p0
.end method

.method public bridge synthetic emit()Le6/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le6/l;->emit()Le6/l;

    move-result-object v0

    return-object v0
.end method

.method public emitCompleteSegments()Le6/l;
    .locals 0

    .line 2
    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Le6/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le6/l;->emitCompleteSegments()Le6/l;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    instance-of v3, v1, Le6/l;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    return v4

    .line 15
    :cond_1
    invoke-virtual {v0}, Le6/l;->size()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    check-cast v1, Le6/l;

    .line 20
    .line 21
    invoke-virtual {v1}, Le6/l;->size()J

    .line 22
    .line 23
    .line 24
    move-result-wide v7

    .line 25
    cmp-long v3, v5, v7

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    return v4

    .line 30
    :cond_2
    invoke-virtual {v0}, Le6/l;->size()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    const-wide/16 v7, 0x0

    .line 35
    .line 36
    cmp-long v3, v5, v7

    .line 37
    .line 38
    if-nez v3, :cond_3

    .line 39
    .line 40
    return v2

    .line 41
    :cond_3
    iget-object v3, v0, Le6/l;->b:Le6/H;

    .line 42
    .line 43
    invoke-static {v3}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v1, Le6/l;->b:Le6/H;

    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget v5, v3, Le6/H;->b:I

    .line 52
    .line 53
    iget v6, v1, Le6/H;->b:I

    .line 54
    .line 55
    move-wide v9, v7

    .line 56
    :goto_0
    invoke-virtual {v0}, Le6/l;->size()J

    .line 57
    .line 58
    .line 59
    move-result-wide v11

    .line 60
    cmp-long v11, v9, v11

    .line 61
    .line 62
    if-gez v11, :cond_8

    .line 63
    .line 64
    iget v11, v3, Le6/H;->c:I

    .line 65
    .line 66
    sub-int/2addr v11, v5

    .line 67
    iget v12, v1, Le6/H;->c:I

    .line 68
    .line 69
    sub-int/2addr v12, v6

    .line 70
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    int-to-long v11, v11

    .line 75
    move-wide v13, v7

    .line 76
    :goto_1
    cmp-long v15, v13, v11

    .line 77
    .line 78
    if-gez v15, :cond_5

    .line 79
    .line 80
    add-int/lit8 v15, v5, 0x1

    .line 81
    .line 82
    move/from16 v16, v2

    .line 83
    .line 84
    iget-object v2, v3, Le6/H;->a:[B

    .line 85
    .line 86
    aget-byte v2, v2, v5

    .line 87
    .line 88
    add-int/lit8 v5, v6, 0x1

    .line 89
    .line 90
    move/from16 v17, v4

    .line 91
    .line 92
    iget-object v4, v1, Le6/H;->a:[B

    .line 93
    .line 94
    aget-byte v4, v4, v6

    .line 95
    .line 96
    if-eq v2, v4, :cond_4

    .line 97
    .line 98
    return v17

    .line 99
    :cond_4
    const-wide/16 v18, 0x1

    .line 100
    .line 101
    add-long v13, v13, v18

    .line 102
    .line 103
    move v6, v5

    .line 104
    move v5, v15

    .line 105
    move/from16 v2, v16

    .line 106
    .line 107
    move/from16 v4, v17

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    move/from16 v16, v2

    .line 111
    .line 112
    move/from16 v17, v4

    .line 113
    .line 114
    iget v2, v3, Le6/H;->c:I

    .line 115
    .line 116
    if-ne v5, v2, :cond_6

    .line 117
    .line 118
    iget-object v2, v3, Le6/H;->f:Le6/H;

    .line 119
    .line 120
    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget v3, v2, Le6/H;->b:I

    .line 124
    .line 125
    move v5, v3

    .line 126
    move-object v3, v2

    .line 127
    :cond_6
    iget v2, v1, Le6/H;->c:I

    .line 128
    .line 129
    if-ne v6, v2, :cond_7

    .line 130
    .line 131
    iget-object v1, v1, Le6/H;->f:Le6/H;

    .line 132
    .line 133
    invoke-static {v1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    iget v2, v1, Le6/H;->b:I

    .line 137
    .line 138
    move v6, v2

    .line 139
    :cond_7
    add-long/2addr v9, v11

    .line 140
    move/from16 v2, v16

    .line 141
    .line 142
    move/from16 v4, v17

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_8
    move/from16 v16, v2

    .line 146
    .line 147
    return v16
.end method

.method public exhausted()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Le6/l;->e:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public getBuffer()Le6/l;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getByte(J)B
    .locals 6

    .line 1
    invoke-virtual {p0}, Le6/l;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v4, 0x1

    .line 6
    .line 7
    move-wide v2, p1

    .line 8
    invoke-static/range {v0 .. v5}, Le6/b;->checkOffsetAndCount(JJJ)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Le6/l;->b:Le6/H;

    .line 12
    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0}, Le6/l;->size()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    sub-long/2addr v0, v2

    .line 20
    cmp-long p2, v0, v2

    .line 21
    .line 22
    if-gez p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Le6/l;->size()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :goto_0
    cmp-long p2, v0, v2

    .line 29
    .line 30
    if-lez p2, :cond_0

    .line 31
    .line 32
    iget-object p1, p1, Le6/H;->g:Le6/H;

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget p2, p1, Le6/H;->c:I

    .line 38
    .line 39
    iget v4, p1, Le6/H;->b:I

    .line 40
    .line 41
    sub-int/2addr p2, v4

    .line 42
    int-to-long v4, p2

    .line 43
    sub-long/2addr v0, v4

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget p2, p1, Le6/H;->b:I

    .line 49
    .line 50
    int-to-long v4, p2

    .line 51
    add-long/2addr v4, v2

    .line 52
    sub-long/2addr v4, v0

    .line 53
    long-to-int p2, v4

    .line 54
    iget-object p1, p1, Le6/H;->a:[B

    .line 55
    .line 56
    aget-byte p1, p1, p2

    .line 57
    .line 58
    return p1

    .line 59
    :cond_1
    const-wide/16 v0, 0x0

    .line 60
    .line 61
    :goto_1
    iget p2, p1, Le6/H;->c:I

    .line 62
    .line 63
    iget v4, p1, Le6/H;->b:I

    .line 64
    .line 65
    sub-int/2addr p2, v4

    .line 66
    int-to-long v4, p2

    .line 67
    add-long/2addr v4, v0

    .line 68
    cmp-long p2, v4, v2

    .line 69
    .line 70
    if-gtz p2, :cond_2

    .line 71
    .line 72
    iget-object p1, p1, Le6/H;->f:Le6/H;

    .line 73
    .line 74
    invoke-static {p1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    move-wide v0, v4

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget p2, p1, Le6/H;->b:I

    .line 83
    .line 84
    int-to-long v4, p2

    .line 85
    add-long/2addr v4, v2

    .line 86
    sub-long/2addr v4, v0

    .line 87
    long-to-int p2, v4

    .line 88
    iget-object p1, p1, Le6/H;->a:[B

    .line 89
    .line 90
    aget-byte p1, p1, p2

    .line 91
    .line 92
    return p1

    .line 93
    :cond_3
    const/4 p1, 0x0

    .line 94
    invoke-static {p1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Le6/l;->b:Le6/H;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v1, 0x1

    .line 8
    :cond_1
    iget v2, v0, Le6/H;->b:I

    .line 9
    .line 10
    iget v3, v0, Le6/H;->c:I

    .line 11
    .line 12
    :goto_0
    if-ge v2, v3, :cond_2

    .line 13
    .line 14
    mul-int/lit8 v1, v1, 0x1f

    .line 15
    .line 16
    iget-object v4, v0, Le6/H;->a:[B

    .line 17
    .line 18
    aget-byte v4, v4, v2

    .line 19
    .line 20
    add-int/2addr v1, v4

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object v0, v0, Le6/H;->f:Le6/H;

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Le6/l;->b:Le6/H;

    .line 30
    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    return v1
.end method

.method public indexOf(BJJ)J
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p2

    if-gtz v2, :cond_c

    cmp-long v2, p2, p4

    if-gtz v2, :cond_c

    .line 2
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v2

    cmp-long v2, p4, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide p4

    :cond_0
    cmp-long v2, p2, p4

    const-wide/16 v3, -0x1

    if-nez v2, :cond_1

    return-wide v3

    .line 3
    :cond_1
    iget-object v2, p0, Le6/l;->b:Le6/H;

    if-nez v2, :cond_2

    return-wide v3

    .line 4
    :cond_2
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v5

    sub-long/2addr v5, p2

    cmp-long v5, v5, p2

    if-gez v5, :cond_7

    .line 5
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    :goto_0
    cmp-long v5, v0, p2

    if-lez v5, :cond_3

    .line 6
    iget-object v2, v2, Le6/H;->g:Le6/H;

    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    iget v5, v2, Le6/H;->c:I

    iget v6, v2, Le6/H;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v0, v5

    goto :goto_0

    :cond_3
    :goto_1
    cmp-long v5, v0, p4

    if-gez v5, :cond_6

    .line 8
    iget-object v5, v2, Le6/H;->a:[B

    .line 9
    iget v6, v2, Le6/H;->c:I

    int-to-long v6, v6

    iget v8, v2, Le6/H;->b:I

    int-to-long v8, v8

    add-long/2addr v8, p4

    sub-long/2addr v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    .line 10
    iget v7, v2, Le6/H;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    :goto_2
    if-ge p2, v6, :cond_5

    .line 11
    aget-byte p3, v5, p2

    if-ne p3, p1, :cond_4

    .line 12
    :goto_3
    iget p1, v2, Le6/H;->b:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v0

    return-wide p1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 13
    :cond_5
    iget p2, v2, Le6/H;->c:I

    iget p3, v2, Le6/H;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 14
    iget-object v2, v2, Le6/H;->f:Le6/H;

    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_1

    :cond_6
    return-wide v3

    .line 15
    :cond_7
    :goto_4
    iget v5, v2, Le6/H;->c:I

    iget v6, v2, Le6/H;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v5, p2

    if-gtz v7, :cond_8

    .line 16
    iget-object v2, v2, Le6/H;->f:Le6/H;

    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    move-wide v0, v5

    goto :goto_4

    :cond_8
    :goto_5
    cmp-long v5, v0, p4

    if-gez v5, :cond_b

    .line 17
    iget-object v5, v2, Le6/H;->a:[B

    .line 18
    iget v6, v2, Le6/H;->c:I

    int-to-long v6, v6

    iget v8, v2, Le6/H;->b:I

    int-to-long v8, v8

    add-long/2addr v8, p4

    sub-long/2addr v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    .line 19
    iget v7, v2, Le6/H;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    :goto_6
    if-ge p2, v6, :cond_a

    .line 20
    aget-byte p3, v5, p2

    if-ne p3, p1, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 21
    :cond_a
    iget p2, v2, Le6/H;->c:I

    iget p3, v2, Le6/H;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 22
    iget-object v2, v2, Le6/H;->f:Le6/H;

    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_5

    :cond_b
    return-wide v3

    .line 23
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "size="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " fromIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " toIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public indexOf(Lokio/ByteString;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Le6/l;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-wide/from16 v0, p2

    const-string v2, "bytes"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v2

    if-lez v2, :cond_c

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_b

    move-object/from16 v2, p0

    .line 25
    iget-object v6, v2, Le6/l;->b:Le6/H;

    const-wide/16 v7, -0x1

    if-nez v6, :cond_0

    return-wide v7

    .line 26
    :cond_0
    invoke-virtual {v2}, Le6/l;->size()J

    move-result-wide v9

    sub-long/2addr v9, v0

    cmp-long v9, v9, v0

    const-wide/16 v10, 0x1

    const/4 v12, 0x0

    if-gez v9, :cond_5

    .line 27
    invoke-virtual {v2}, Le6/l;->size()J

    move-result-wide v4

    :goto_0
    cmp-long v9, v4, v0

    if-lez v9, :cond_1

    .line 28
    iget-object v6, v6, Le6/H;->g:Le6/H;

    invoke-static {v6}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    iget v9, v6, Le6/H;->c:I

    iget v14, v6, Le6/H;->b:I

    sub-int/2addr v9, v14

    int-to-long v14, v9

    sub-long/2addr v4, v14

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v3}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v9

    .line 31
    aget-byte v12, v9, v12

    .line 32
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    .line 33
    invoke-virtual {v2}, Le6/l;->size()J

    move-result-wide v14

    move-wide/from16 v16, v7

    int-to-long v7, v3

    sub-long/2addr v14, v7

    add-long/2addr v14, v10

    :goto_1
    cmp-long v7, v4, v14

    if-gez v7, :cond_4

    .line 34
    iget-object v7, v6, Le6/H;->a:[B

    .line 35
    iget v8, v6, Le6/H;->c:I

    iget v10, v6, Le6/H;->b:I

    int-to-long v10, v10

    add-long/2addr v10, v14

    sub-long/2addr v10, v4

    move-wide/from16 v18, v14

    int-to-long v13, v8

    .line 36
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v8, v10

    .line 37
    iget v10, v6, Le6/H;->b:I

    int-to-long v10, v10

    add-long/2addr v10, v0

    sub-long/2addr v10, v4

    long-to-int v0, v10

    :goto_2
    if-ge v0, v8, :cond_3

    .line 38
    aget-byte v1, v7, v0

    if-ne v1, v12, :cond_2

    add-int/lit8 v1, v0, 0x1

    const/4 v10, 0x1

    invoke-static {v6, v1, v9, v10, v3}, Lf6/a;->rangeEquals(Le6/H;I[BII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    :goto_3
    iget v1, v6, Le6/H;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v4

    return-wide v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 40
    :cond_3
    iget v0, v6, Le6/H;->c:I

    iget v1, v6, Le6/H;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v4, v0

    .line 41
    iget-object v6, v6, Le6/H;->f:Le6/H;

    invoke-static {v6}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    move-wide v0, v4

    move-wide/from16 v14, v18

    goto :goto_1

    :cond_4
    return-wide v16

    :cond_5
    move-wide/from16 v16, v7

    .line 42
    :goto_4
    iget v7, v6, Le6/H;->c:I

    iget v8, v6, Le6/H;->b:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v4

    cmp-long v9, v7, v0

    if-gtz v9, :cond_6

    .line 43
    iget-object v6, v6, Le6/H;->f:Le6/H;

    invoke-static {v6}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    move-wide v4, v7

    goto :goto_4

    .line 44
    :cond_6
    invoke-virtual {v3}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v7

    .line 45
    aget-byte v8, v7, v12

    .line 46
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    .line 47
    invoke-virtual {v2}, Le6/l;->size()J

    move-result-wide v12

    int-to-long v14, v3

    sub-long/2addr v12, v14

    add-long/2addr v12, v10

    :goto_5
    cmp-long v9, v4, v12

    if-gez v9, :cond_a

    .line 48
    iget-object v9, v6, Le6/H;->a:[B

    .line 49
    iget v10, v6, Le6/H;->c:I

    iget v11, v6, Le6/H;->b:I

    int-to-long v14, v11

    add-long/2addr v14, v12

    sub-long/2addr v14, v4

    int-to-long v10, v10

    .line 50
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    .line 51
    iget v11, v6, Le6/H;->b:I

    int-to-long v14, v11

    add-long/2addr v14, v0

    sub-long/2addr v14, v4

    long-to-int v0, v14

    :goto_6
    if-ge v0, v10, :cond_9

    .line 52
    aget-byte v1, v9, v0

    if-ne v1, v8, :cond_7

    add-int/lit8 v1, v0, 0x1

    const/4 v11, 0x1

    invoke-static {v6, v1, v7, v11, v3}, Lf6/a;->rangeEquals(Le6/H;I[BII)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_7
    const/4 v11, 0x1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v11, 0x1

    .line 53
    iget v0, v6, Le6/H;->c:I

    iget v1, v6, Le6/H;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v4, v0

    .line 54
    iget-object v6, v6, Le6/H;->f:Le6/H;

    invoke-static {v6}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    move-wide v0, v4

    goto :goto_5

    :cond_a
    return-wide v16

    :cond_b
    move-object/from16 v2, p0

    .line 55
    const-string v3, "fromIndex < 0: "

    .line 56
    invoke-static {v3, v0, v1}, LA/i;->i(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move-object/from16 v2, p0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .locals 2

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Le6/l;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .locals 11

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_13

    .line 2
    iget-object v2, p0, Le6/l;->b:Le6/H;

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    .line 3
    :cond_0
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v5

    sub-long/2addr v5, p2

    cmp-long v5, v5, p2

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gez v5, :cond_a

    .line 4
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    :goto_0
    cmp-long v5, v0, p2

    if-lez v5, :cond_1

    .line 5
    iget-object v2, v2, Le6/H;->g:Le6/H;

    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    iget v5, v2, Le6/H;->c:I

    iget v9, v2, Le6/H;->b:I

    sub-int/2addr v5, v9

    int-to-long v9, v5

    sub-long/2addr v0, v9

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v5

    if-ne v5, v6, :cond_5

    .line 8
    invoke-virtual {p1, v7}, Lokio/ByteString;->getByte(I)B

    move-result v5

    .line 9
    invoke-virtual {p1, v8}, Lokio/ByteString;->getByte(I)B

    move-result p1

    .line 10
    :goto_1
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-gez v6, :cond_9

    .line 11
    iget-object v6, v2, Le6/H;->a:[B

    .line 12
    iget v7, v2, Le6/H;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 13
    iget p3, v2, Le6/H;->c:I

    :goto_2
    if-ge p2, p3, :cond_4

    .line 14
    aget-byte v7, v6, p2

    if-eq v7, v5, :cond_3

    if-ne v7, p1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 15
    :cond_3
    :goto_3
    iget p1, v2, Le6/H;->b:I

    :goto_4
    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v0

    return-wide p1

    .line 16
    :cond_4
    iget p2, v2, Le6/H;->c:I

    iget p3, v2, Le6/H;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 17
    iget-object v2, v2, Le6/H;->f:Le6/H;

    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_1

    .line 18
    :cond_5
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object p1

    .line 19
    :goto_5
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_9

    .line 20
    iget-object v5, v2, Le6/H;->a:[B

    .line 21
    iget v6, v2, Le6/H;->b:I

    int-to-long v8, v6

    add-long/2addr v8, p2

    sub-long/2addr v8, v0

    long-to-int p2, v8

    .line 22
    iget p3, v2, Le6/H;->c:I

    :goto_6
    if-ge p2, p3, :cond_8

    .line 23
    aget-byte v6, v5, p2

    .line 24
    array-length v8, p1

    move v9, v7

    :goto_7
    if-ge v9, v8, :cond_7

    aget-byte v10, p1, v9

    if-ne v6, v10, :cond_6

    .line 25
    :goto_8
    iget p1, v2, Le6/H;->b:I

    goto :goto_4

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 26
    :cond_8
    iget p2, v2, Le6/H;->c:I

    iget p3, v2, Le6/H;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 27
    iget-object v2, v2, Le6/H;->f:Le6/H;

    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_5

    :cond_9
    return-wide v3

    .line 28
    :cond_a
    :goto_9
    iget v5, v2, Le6/H;->c:I

    iget v9, v2, Le6/H;->b:I

    sub-int/2addr v5, v9

    int-to-long v9, v5

    add-long/2addr v9, v0

    cmp-long v5, v9, p2

    if-gtz v5, :cond_b

    .line 29
    iget-object v2, v2, Le6/H;->f:Le6/H;

    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    move-wide v0, v9

    goto :goto_9

    .line 30
    :cond_b
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v5

    if-ne v5, v6, :cond_e

    .line 31
    invoke-virtual {p1, v7}, Lokio/ByteString;->getByte(I)B

    move-result v5

    .line 32
    invoke-virtual {p1, v8}, Lokio/ByteString;->getByte(I)B

    move-result p1

    .line 33
    :goto_a
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-gez v6, :cond_12

    .line 34
    iget-object v6, v2, Le6/H;->a:[B

    .line 35
    iget v7, v2, Le6/H;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    .line 36
    iget p3, v2, Le6/H;->c:I

    :goto_b
    if-ge p2, p3, :cond_d

    .line 37
    aget-byte v7, v6, p2

    if-eq v7, v5, :cond_3

    if-ne v7, p1, :cond_c

    goto/16 :goto_3

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    .line 38
    :cond_d
    iget p2, v2, Le6/H;->c:I

    iget p3, v2, Le6/H;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 39
    iget-object v2, v2, Le6/H;->f:Le6/H;

    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_a

    .line 40
    :cond_e
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object p1

    .line 41
    :goto_c
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_12

    .line 42
    iget-object v5, v2, Le6/H;->a:[B

    .line 43
    iget v6, v2, Le6/H;->b:I

    int-to-long v8, v6

    add-long/2addr v8, p2

    sub-long/2addr v8, v0

    long-to-int p2, v8

    .line 44
    iget p3, v2, Le6/H;->c:I

    :goto_d
    if-ge p2, p3, :cond_11

    .line 45
    aget-byte v6, v5, p2

    .line 46
    array-length v8, p1

    move v9, v7

    :goto_e
    if-ge v9, v8, :cond_10

    aget-byte v10, p1, v9

    if-ne v6, v10, :cond_f

    goto/16 :goto_8

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    .line 47
    :cond_11
    iget p2, v2, Le6/H;->c:I

    iget p3, v2, Le6/H;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    .line 48
    iget-object v2, v2, Le6/H;->f:Le6/H;

    invoke-static {v2}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_c

    :cond_12
    return-wide v3

    .line 49
    :cond_13
    const-string p1, "fromIndex < 0: "

    .line 50
    invoke-static {p1, p2, p3}, LA/i;->i(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 51
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Le6/j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Le6/j;-><init>(Le6/l;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance v0, Le6/k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Le6/k;-><init>(Le6/l;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public peek()Le6/n;
    .locals 1

    .line 1
    new-instance v0, Le6/C;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Le6/C;-><init>(Le6/n;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Le6/w;->buffer(Le6/L;)Le6/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .locals 7

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v6

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Le6/l;->rangeEquals(JLokio/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .locals 6

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    if-ltz p4, :cond_3

    if-ltz p5, :cond_3

    .line 2
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v2

    sub-long/2addr v2, p1

    int-to-long v4, p5

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    .line 3
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p5, :cond_2

    int-to-long v2, v0

    add-long/2addr v2, p1

    .line 4
    invoke-virtual {p0, v2, v3}, Le6/l;->getByte(J)B

    move-result v2

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le6/l;->b:Le6/H;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Le6/H;->c:I

    iget v3, v0, Le6/H;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, v0, Le6/H;->a:[B

    iget v3, v0, Le6/H;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 4
    iget p1, v0, Le6/H;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Le6/H;->b:I

    .line 5
    iget-wide v2, p0, Le6/l;->e:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Le6/l;->e:J

    .line 6
    iget v2, v0, Le6/H;->c:I

    if-ne p1, v2, :cond_1

    .line 7
    invoke-virtual {v0}, Le6/H;->pop()Le6/H;

    move-result-object p1

    iput-object p1, p0, Le6/l;->b:Le6/H;

    .line 8
    invoke-static {v0}, Le6/I;->recycle(Le6/H;)V

    :cond_1
    return v1
.end method

.method public read([B)I
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Le6/l;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Le6/b;->checkOffsetAndCount(JJJ)V

    .line 11
    iget-object v0, p0, Le6/l;->b:Le6/H;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 12
    :cond_0
    iget v1, v0, Le6/H;->c:I

    iget v2, v0, Le6/H;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 13
    iget v1, v0, Le6/H;->b:I

    add-int v2, v1, p3

    .line 14
    iget-object v3, v0, Le6/H;->a:[B

    invoke-static {v3, p1, p2, v1, v2}, Lv5/m;->copyInto([B[BIII)[B

    .line 15
    iget p1, v0, Le6/H;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Le6/H;->b:I

    .line 16
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide p1

    int-to-long v1, p3

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Le6/l;->setSize$okio(J)V

    .line 17
    iget p1, v0, Le6/H;->b:I

    iget p2, v0, Le6/H;->c:I

    if-ne p1, p2, :cond_1

    .line 18
    invoke-virtual {v0}, Le6/H;->pop()Le6/H;

    move-result-object p1

    iput-object p1, p0, Le6/l;->b:Le6/H;

    .line 19
    invoke-static {v0}, Le6/I;->recycle(Le6/H;)V

    :cond_1
    return p3
.end method

.method public read(Le6/l;J)J
    .locals 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 20
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    .line 21
    :cond_0
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide p2

    .line 22
    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Le6/l;->write(Le6/l;J)V

    return-wide p2

    .line 23
    :cond_2
    const-string p1, "byteCount < 0: "

    .line 24
    invoke-static {p1, p2, p3}, LA/i;->i(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readAll(Le6/J;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Le6/l;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v2, v0, v2

    .line 13
    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    invoke-interface {p1, p0, v0, v1}, Le6/J;->write(Le6/l;J)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-wide v0
.end method

.method public final readAndWriteUnsafe(Le6/i;)Le6/i;
    .locals 1

    .line 1
    const-string v0, "unsafeCursor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lf6/a;->commonReadAndWriteUnsafe(Le6/l;Le6/i;)Le6/i;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public readByte()B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le6/l;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Le6/l;->b:Le6/H;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget v1, v0, Le6/H;->b:I

    .line 17
    .line 18
    iget v2, v0, Le6/H;->c:I

    .line 19
    .line 20
    add-int/lit8 v3, v1, 0x1

    .line 21
    .line 22
    iget-object v4, v0, Le6/H;->a:[B

    .line 23
    .line 24
    aget-byte v1, v4, v1

    .line 25
    .line 26
    invoke-virtual {p0}, Le6/l;->size()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    const-wide/16 v6, 0x1

    .line 31
    .line 32
    sub-long/2addr v4, v6

    .line 33
    invoke-virtual {p0, v4, v5}, Le6/l;->setSize$okio(J)V

    .line 34
    .line 35
    .line 36
    if-ne v3, v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Le6/H;->pop()Le6/H;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iput-object v2, p0, Le6/l;->b:Le6/H;

    .line 43
    .line 44
    invoke-static {v0}, Le6/I;->recycle(Le6/H;)V

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_0
    iput v3, v0, Le6/H;->b:I

    .line 49
    .line 50
    return v1

    .line 51
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method public readByteArray()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Le6/l;->readByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteArray(J)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    long-to-int p1, p1

    .line 3
    new-array p1, p1, [B

    .line 4
    invoke-virtual {p0, p1}, Le6/l;->readFully([B)V

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_1
    const-string v0, "byteCount: "

    .line 7
    invoke-static {v0, p1, p2}, LA/i;->i(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readByteString()Lokio/ByteString;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Le6/l;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-int v0, p1

    .line 3
    invoke-virtual {p0, v0}, Le6/l;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Le6/l;->skip(J)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Le6/l;->readByteArray(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ByteString;-><init>([B)V

    return-object v0

    .line 5
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_2
    const-string v0, "byteCount: "

    .line 7
    invoke-static {v0, p1, p2}, LA/i;->i(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readDecimalLong()J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Le6/l;->size()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    if-eqz v1, :cond_e

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const-wide/16 v5, -0x7

    .line 15
    .line 16
    move v2, v1

    .line 17
    move-wide v8, v3

    .line 18
    move-wide v6, v5

    .line 19
    move v5, v2

    .line 20
    :goto_0
    iget-object v10, v0, Le6/l;->b:Le6/H;

    .line 21
    .line 22
    invoke-static {v10}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v11, v10, Le6/H;->a:[B

    .line 26
    .line 27
    iget v12, v10, Le6/H;->b:I

    .line 28
    .line 29
    iget v13, v10, Le6/H;->c:I

    .line 30
    .line 31
    :goto_1
    if-ge v12, v13, :cond_5

    .line 32
    .line 33
    aget-byte v15, v11, v12

    .line 34
    .line 35
    const/16 v14, 0x30

    .line 36
    .line 37
    if-lt v15, v14, :cond_3

    .line 38
    .line 39
    const/16 v14, 0x39

    .line 40
    .line 41
    if-gt v15, v14, :cond_3

    .line 42
    .line 43
    rsub-int/lit8 v14, v15, 0x30

    .line 44
    .line 45
    const-wide v16, -0xcccccccccccccccL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    cmp-long v16, v8, v16

    .line 51
    .line 52
    if-ltz v16, :cond_1

    .line 53
    .line 54
    move-wide/from16 v17, v3

    .line 55
    .line 56
    if-nez v16, :cond_0

    .line 57
    .line 58
    int-to-long v3, v14

    .line 59
    cmp-long v3, v3, v6

    .line 60
    .line 61
    if-gez v3, :cond_0

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_0
    const-wide/16 v3, 0xa

    .line 65
    .line 66
    mul-long/2addr v8, v3

    .line 67
    int-to-long v3, v14

    .line 68
    add-long/2addr v8, v3

    .line 69
    goto :goto_3

    .line 70
    :cond_1
    :goto_2
    new-instance v1, Le6/l;

    .line 71
    .line 72
    invoke-direct {v1}, Le6/l;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v8, v9}, Le6/l;->writeDecimalLong(J)Le6/l;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v15}, Le6/l;->writeByte(I)Le6/l;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-nez v2, :cond_2

    .line 84
    .line 85
    invoke-virtual {v1}, Le6/l;->readByte()B

    .line 86
    .line 87
    .line 88
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v4, "Number too large: "

    .line 93
    .line 94
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Le6/l;->readUtf8()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v2

    .line 112
    :cond_3
    move-wide/from16 v17, v3

    .line 113
    .line 114
    const/16 v3, 0x2d

    .line 115
    .line 116
    if-ne v15, v3, :cond_4

    .line 117
    .line 118
    if-nez v1, :cond_4

    .line 119
    .line 120
    const-wide/16 v2, 0x1

    .line 121
    .line 122
    sub-long/2addr v6, v2

    .line 123
    const/4 v2, 0x1

    .line 124
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 125
    .line 126
    add-int/lit8 v1, v1, 0x1

    .line 127
    .line 128
    move-wide/from16 v3, v17

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    const/4 v5, 0x1

    .line 132
    goto :goto_4

    .line 133
    :cond_5
    move-wide/from16 v17, v3

    .line 134
    .line 135
    :goto_4
    if-ne v12, v13, :cond_6

    .line 136
    .line 137
    invoke-virtual {v10}, Le6/H;->pop()Le6/H;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    iput-object v3, v0, Le6/l;->b:Le6/H;

    .line 142
    .line 143
    invoke-static {v10}, Le6/I;->recycle(Le6/H;)V

    .line 144
    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_6
    iput v12, v10, Le6/H;->b:I

    .line 148
    .line 149
    :goto_5
    if-nez v5, :cond_8

    .line 150
    .line 151
    iget-object v3, v0, Le6/l;->b:Le6/H;

    .line 152
    .line 153
    if-nez v3, :cond_7

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_7
    move-wide/from16 v3, v17

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_8
    :goto_6
    invoke-virtual {v0}, Le6/l;->size()J

    .line 161
    .line 162
    .line 163
    move-result-wide v3

    .line 164
    int-to-long v5, v1

    .line 165
    sub-long/2addr v3, v5

    .line 166
    invoke-virtual {v0, v3, v4}, Le6/l;->setSize$okio(J)V

    .line 167
    .line 168
    .line 169
    if-eqz v2, :cond_9

    .line 170
    .line 171
    const/4 v14, 0x2

    .line 172
    goto :goto_7

    .line 173
    :cond_9
    const/4 v14, 0x1

    .line 174
    :goto_7
    if-ge v1, v14, :cond_c

    .line 175
    .line 176
    invoke-virtual {v0}, Le6/l;->size()J

    .line 177
    .line 178
    .line 179
    move-result-wide v3

    .line 180
    cmp-long v1, v3, v17

    .line 181
    .line 182
    if-eqz v1, :cond_b

    .line 183
    .line 184
    if-eqz v2, :cond_a

    .line 185
    .line 186
    const-string v1, "Expected a digit"

    .line 187
    .line 188
    goto :goto_8

    .line 189
    :cond_a
    const-string v1, "Expected a digit or \'-\'"

    .line 190
    .line 191
    :goto_8
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 192
    .line 193
    const-string v3, " but was 0x"

    .line 194
    .line 195
    invoke-static {v1, v3}, LA/i;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    move-wide/from16 v3, v17

    .line 200
    .line 201
    invoke-virtual {v0, v3, v4}, Le6/l;->getByte(J)B

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    invoke-static {v3}, Le6/b;->toHexString(B)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v2

    .line 220
    :cond_b
    new-instance v1, Ljava/io/EOFException;

    .line 221
    .line 222
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 223
    .line 224
    .line 225
    throw v1

    .line 226
    :cond_c
    if-eqz v2, :cond_d

    .line 227
    .line 228
    return-wide v8

    .line 229
    :cond_d
    neg-long v1, v8

    .line 230
    return-wide v1

    .line 231
    :cond_e
    new-instance v1, Ljava/io/EOFException;

    .line 232
    .line 233
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 234
    .line 235
    .line 236
    throw v1
.end method

.method public readFully(Le6/l;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p1, p0, p2, p3}, Le6/l;->write(Le6/l;J)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide p2

    invoke-virtual {p1, p0, p2, p3}, Le6/l;->write(Le6/l;J)V

    .line 4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readFully([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 6
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Le6/l;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le6/l;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    move-wide v4, v2

    .line 14
    :cond_0
    iget-object v6, p0, Le6/l;->b:Le6/H;

    .line 15
    .line 16
    invoke-static {v6}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v7, v6, Le6/H;->a:[B

    .line 20
    .line 21
    iget v8, v6, Le6/H;->b:I

    .line 22
    .line 23
    iget v9, v6, Le6/H;->c:I

    .line 24
    .line 25
    :goto_0
    if-ge v8, v9, :cond_6

    .line 26
    .line 27
    aget-byte v10, v7, v8

    .line 28
    .line 29
    const/16 v11, 0x30

    .line 30
    .line 31
    if-lt v10, v11, :cond_1

    .line 32
    .line 33
    const/16 v11, 0x39

    .line 34
    .line 35
    if-gt v10, v11, :cond_1

    .line 36
    .line 37
    add-int/lit8 v11, v10, -0x30

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v11, 0x61

    .line 41
    .line 42
    if-lt v10, v11, :cond_2

    .line 43
    .line 44
    const/16 v11, 0x66

    .line 45
    .line 46
    if-gt v10, v11, :cond_2

    .line 47
    .line 48
    add-int/lit8 v11, v10, -0x57

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/16 v11, 0x41

    .line 52
    .line 53
    if-lt v10, v11, :cond_4

    .line 54
    .line 55
    const/16 v11, 0x46

    .line 56
    .line 57
    if-gt v10, v11, :cond_4

    .line 58
    .line 59
    add-int/lit8 v11, v10, -0x37

    .line 60
    .line 61
    :goto_1
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    .line 62
    .line 63
    and-long/2addr v12, v4

    .line 64
    cmp-long v12, v12, v2

    .line 65
    .line 66
    if-nez v12, :cond_3

    .line 67
    .line 68
    const/4 v10, 0x4

    .line 69
    shl-long/2addr v4, v10

    .line 70
    int-to-long v10, v11

    .line 71
    or-long/2addr v4, v10

    .line 72
    add-int/lit8 v8, v8, 0x1

    .line 73
    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    new-instance v0, Le6/l;

    .line 78
    .line 79
    invoke-direct {v0}, Le6/l;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v4, v5}, Le6/l;->writeHexadecimalUnsignedLong(J)Le6/l;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, v10}, Le6/l;->writeByte(I)Le6/l;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 91
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v3, "Number too large: "

    .line 95
    .line 96
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Le6/l;->readUtf8()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v1

    .line 114
    :cond_4
    if-eqz v0, :cond_5

    .line 115
    .line 116
    const/4 v1, 0x1

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 123
    .line 124
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v10}, Le6/b;->toHexString(B)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :cond_6
    :goto_2
    if-ne v8, v9, :cond_7

    .line 143
    .line 144
    invoke-virtual {v6}, Le6/H;->pop()Le6/H;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    iput-object v7, p0, Le6/l;->b:Le6/H;

    .line 149
    .line 150
    invoke-static {v6}, Le6/I;->recycle(Le6/H;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_7
    iput v8, v6, Le6/H;->b:I

    .line 155
    .line 156
    :goto_3
    if-nez v1, :cond_8

    .line 157
    .line 158
    iget-object v6, p0, Le6/l;->b:Le6/H;

    .line 159
    .line 160
    if-nez v6, :cond_0

    .line 161
    .line 162
    :cond_8
    invoke-virtual {p0}, Le6/l;->size()J

    .line 163
    .line 164
    .line 165
    move-result-wide v1

    .line 166
    int-to-long v6, v0

    .line 167
    sub-long/2addr v1, v6

    .line 168
    invoke-virtual {p0, v1, v2}, Le6/l;->setSize$okio(J)V

    .line 169
    .line 170
    .line 171
    return-wide v4

    .line 172
    :cond_9
    new-instance v0, Ljava/io/EOFException;

    .line 173
    .line 174
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 175
    .line 176
    .line 177
    throw v0
.end method

.method public readInt()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le6/l;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x4

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Le6/l;->b:Le6/H;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget v1, v0, Le6/H;->b:I

    .line 17
    .line 18
    iget v4, v0, Le6/H;->c:I

    .line 19
    .line 20
    sub-int v5, v4, v1

    .line 21
    .line 22
    int-to-long v5, v5

    .line 23
    cmp-long v5, v5, v2

    .line 24
    .line 25
    if-gez v5, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Le6/l;->readByte()B

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    and-int/lit16 v0, v0, 0xff

    .line 32
    .line 33
    shl-int/lit8 v0, v0, 0x18

    .line 34
    .line 35
    invoke-virtual {p0}, Le6/l;->readByte()B

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    and-int/lit16 v1, v1, 0xff

    .line 40
    .line 41
    shl-int/lit8 v1, v1, 0x10

    .line 42
    .line 43
    or-int/2addr v0, v1

    .line 44
    invoke-virtual {p0}, Le6/l;->readByte()B

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    and-int/lit16 v1, v1, 0xff

    .line 49
    .line 50
    shl-int/lit8 v1, v1, 0x8

    .line 51
    .line 52
    or-int/2addr v0, v1

    .line 53
    invoke-virtual {p0}, Le6/l;->readByte()B

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    and-int/lit16 v1, v1, 0xff

    .line 58
    .line 59
    or-int/2addr v0, v1

    .line 60
    return v0

    .line 61
    :cond_0
    add-int/lit8 v5, v1, 0x1

    .line 62
    .line 63
    iget-object v6, v0, Le6/H;->a:[B

    .line 64
    .line 65
    aget-byte v7, v6, v1

    .line 66
    .line 67
    and-int/lit16 v7, v7, 0xff

    .line 68
    .line 69
    shl-int/lit8 v7, v7, 0x18

    .line 70
    .line 71
    add-int/lit8 v8, v1, 0x2

    .line 72
    .line 73
    aget-byte v5, v6, v5

    .line 74
    .line 75
    and-int/lit16 v5, v5, 0xff

    .line 76
    .line 77
    shl-int/lit8 v5, v5, 0x10

    .line 78
    .line 79
    or-int/2addr v5, v7

    .line 80
    add-int/lit8 v7, v1, 0x3

    .line 81
    .line 82
    aget-byte v8, v6, v8

    .line 83
    .line 84
    and-int/lit16 v8, v8, 0xff

    .line 85
    .line 86
    shl-int/lit8 v8, v8, 0x8

    .line 87
    .line 88
    or-int/2addr v5, v8

    .line 89
    add-int/lit8 v1, v1, 0x4

    .line 90
    .line 91
    aget-byte v6, v6, v7

    .line 92
    .line 93
    and-int/lit16 v6, v6, 0xff

    .line 94
    .line 95
    or-int/2addr v5, v6

    .line 96
    invoke-virtual {p0}, Le6/l;->size()J

    .line 97
    .line 98
    .line 99
    move-result-wide v6

    .line 100
    sub-long/2addr v6, v2

    .line 101
    invoke-virtual {p0, v6, v7}, Le6/l;->setSize$okio(J)V

    .line 102
    .line 103
    .line 104
    if-ne v1, v4, :cond_1

    .line 105
    .line 106
    invoke-virtual {v0}, Le6/H;->pop()Le6/H;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iput-object v1, p0, Le6/l;->b:Le6/H;

    .line 111
    .line 112
    invoke-static {v0}, Le6/I;->recycle(Le6/H;)V

    .line 113
    .line 114
    .line 115
    return v5

    .line 116
    :cond_1
    iput v1, v0, Le6/H;->b:I

    .line 117
    .line 118
    return v5

    .line 119
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 122
    .line 123
    .line 124
    throw v0
.end method

.method public readIntLe()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le6/l;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Le6/b;->reverseBytes(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public readLong()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le6/l;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x8

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Le6/l;->b:Le6/H;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget v1, v0, Le6/H;->b:I

    .line 17
    .line 18
    iget v4, v0, Le6/H;->c:I

    .line 19
    .line 20
    sub-int v5, v4, v1

    .line 21
    .line 22
    int-to-long v5, v5

    .line 23
    cmp-long v5, v5, v2

    .line 24
    .line 25
    const/16 v6, 0x20

    .line 26
    .line 27
    if-gez v5, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Le6/l;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    int-to-long v0, v0

    .line 34
    const-wide v2, 0xffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    and-long/2addr v0, v2

    .line 40
    shl-long/2addr v0, v6

    .line 41
    invoke-virtual {p0}, Le6/l;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    int-to-long v4, v4

    .line 46
    and-long/2addr v2, v4

    .line 47
    or-long/2addr v0, v2

    .line 48
    return-wide v0

    .line 49
    :cond_0
    add-int/lit8 v5, v1, 0x1

    .line 50
    .line 51
    iget-object v7, v0, Le6/H;->a:[B

    .line 52
    .line 53
    aget-byte v8, v7, v1

    .line 54
    .line 55
    int-to-long v8, v8

    .line 56
    const-wide/16 v10, 0xff

    .line 57
    .line 58
    and-long/2addr v8, v10

    .line 59
    const/16 v12, 0x38

    .line 60
    .line 61
    shl-long/2addr v8, v12

    .line 62
    add-int/lit8 v12, v1, 0x2

    .line 63
    .line 64
    aget-byte v5, v7, v5

    .line 65
    .line 66
    int-to-long v13, v5

    .line 67
    and-long/2addr v13, v10

    .line 68
    const/16 v5, 0x30

    .line 69
    .line 70
    shl-long/2addr v13, v5

    .line 71
    or-long/2addr v8, v13

    .line 72
    add-int/lit8 v5, v1, 0x3

    .line 73
    .line 74
    aget-byte v12, v7, v12

    .line 75
    .line 76
    int-to-long v12, v12

    .line 77
    and-long/2addr v12, v10

    .line 78
    const/16 v14, 0x28

    .line 79
    .line 80
    shl-long/2addr v12, v14

    .line 81
    or-long/2addr v8, v12

    .line 82
    add-int/lit8 v12, v1, 0x4

    .line 83
    .line 84
    aget-byte v5, v7, v5

    .line 85
    .line 86
    int-to-long v13, v5

    .line 87
    and-long/2addr v13, v10

    .line 88
    shl-long v5, v13, v6

    .line 89
    .line 90
    or-long/2addr v5, v8

    .line 91
    add-int/lit8 v8, v1, 0x5

    .line 92
    .line 93
    aget-byte v9, v7, v12

    .line 94
    .line 95
    int-to-long v12, v9

    .line 96
    and-long/2addr v12, v10

    .line 97
    const/16 v9, 0x18

    .line 98
    .line 99
    shl-long/2addr v12, v9

    .line 100
    or-long/2addr v5, v12

    .line 101
    add-int/lit8 v9, v1, 0x6

    .line 102
    .line 103
    aget-byte v8, v7, v8

    .line 104
    .line 105
    int-to-long v12, v8

    .line 106
    and-long/2addr v12, v10

    .line 107
    const/16 v8, 0x10

    .line 108
    .line 109
    shl-long/2addr v12, v8

    .line 110
    or-long/2addr v5, v12

    .line 111
    add-int/lit8 v8, v1, 0x7

    .line 112
    .line 113
    aget-byte v9, v7, v9

    .line 114
    .line 115
    int-to-long v12, v9

    .line 116
    and-long/2addr v12, v10

    .line 117
    const/16 v9, 0x8

    .line 118
    .line 119
    shl-long/2addr v12, v9

    .line 120
    or-long/2addr v5, v12

    .line 121
    add-int/2addr v1, v9

    .line 122
    aget-byte v7, v7, v8

    .line 123
    .line 124
    int-to-long v7, v7

    .line 125
    and-long/2addr v7, v10

    .line 126
    or-long/2addr v5, v7

    .line 127
    invoke-virtual {p0}, Le6/l;->size()J

    .line 128
    .line 129
    .line 130
    move-result-wide v7

    .line 131
    sub-long/2addr v7, v2

    .line 132
    invoke-virtual {p0, v7, v8}, Le6/l;->setSize$okio(J)V

    .line 133
    .line 134
    .line 135
    if-ne v1, v4, :cond_1

    .line 136
    .line 137
    invoke-virtual {v0}, Le6/H;->pop()Le6/H;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iput-object v1, p0, Le6/l;->b:Le6/H;

    .line 142
    .line 143
    invoke-static {v0}, Le6/I;->recycle(Le6/H;)V

    .line 144
    .line 145
    .line 146
    return-wide v5

    .line 147
    :cond_1
    iput v1, v0, Le6/H;->b:I

    .line 148
    .line 149
    return-wide v5

    .line 150
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 151
    .line 152
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 153
    .line 154
    .line 155
    throw v0
.end method

.method public readShort()S
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le6/l;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x2

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Le6/l;->b:Le6/H;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget v1, v0, Le6/H;->b:I

    .line 17
    .line 18
    iget v4, v0, Le6/H;->c:I

    .line 19
    .line 20
    sub-int v5, v4, v1

    .line 21
    .line 22
    const/4 v6, 0x2

    .line 23
    if-ge v5, v6, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Le6/l;->readByte()B

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    and-int/lit16 v0, v0, 0xff

    .line 30
    .line 31
    shl-int/lit8 v0, v0, 0x8

    .line 32
    .line 33
    invoke-virtual {p0}, Le6/l;->readByte()B

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    and-int/lit16 v1, v1, 0xff

    .line 38
    .line 39
    or-int/2addr v0, v1

    .line 40
    int-to-short v0, v0

    .line 41
    return v0

    .line 42
    :cond_0
    add-int/lit8 v5, v1, 0x1

    .line 43
    .line 44
    iget-object v7, v0, Le6/H;->a:[B

    .line 45
    .line 46
    aget-byte v8, v7, v1

    .line 47
    .line 48
    and-int/lit16 v8, v8, 0xff

    .line 49
    .line 50
    shl-int/lit8 v8, v8, 0x8

    .line 51
    .line 52
    add-int/2addr v1, v6

    .line 53
    aget-byte v5, v7, v5

    .line 54
    .line 55
    and-int/lit16 v5, v5, 0xff

    .line 56
    .line 57
    or-int/2addr v5, v8

    .line 58
    invoke-virtual {p0}, Le6/l;->size()J

    .line 59
    .line 60
    .line 61
    move-result-wide v6

    .line 62
    sub-long/2addr v6, v2

    .line 63
    invoke-virtual {p0, v6, v7}, Le6/l;->setSize$okio(J)V

    .line 64
    .line 65
    .line 66
    if-ne v1, v4, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0}, Le6/H;->pop()Le6/H;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iput-object v1, p0, Le6/l;->b:Le6/H;

    .line 73
    .line 74
    invoke-static {v0}, Le6/I;->recycle(Le6/H;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iput v1, v0, Le6/H;->b:I

    .line 79
    .line 80
    :goto_0
    int-to-short v0, v5

    .line 81
    return v0

    .line 82
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 85
    .line 86
    .line 87
    throw v0
.end method

.method public readShortLe()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le6/l;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Le6/b;->reverseBytes(S)S

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-gtz v1, :cond_4

    .line 2
    iget-wide v1, p0, Le6/l;->e:J

    cmp-long v1, v1, p1

    if-ltz v1, :cond_3

    if-nez v0, :cond_0

    .line 3
    const-string p1, ""

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Le6/l;->b:Le6/H;

    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    iget v1, v0, Le6/H;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Le6/H;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    new-instance v0, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1, p2}, Le6/l;->readByteArray(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/String;

    long-to-int v3, p1

    .line 7
    iget-object v4, v0, Le6/H;->a:[B

    invoke-direct {v2, v4, v1, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 8
    iget p3, v0, Le6/H;->b:I

    add-int/2addr p3, v3

    iput p3, v0, Le6/H;->b:I

    .line 9
    iget-wide v3, p0, Le6/l;->e:J

    sub-long/2addr v3, p1

    iput-wide v3, p0, Le6/l;->e:J

    .line 10
    iget p1, v0, Le6/H;->c:I

    if-ne p3, p1, :cond_2

    .line 11
    invoke-virtual {v0}, Le6/H;->pop()Le6/H;

    move-result-object p1

    iput-object p1, p0, Le6/l;->b:Le6/H;

    .line 12
    invoke-static {v0}, Le6/I;->recycle(Le6/H;)V

    :cond_2
    return-object v2

    .line 13
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 14
    :cond_4
    const-string p3, "byteCount: "

    .line 15
    invoke-static {p3, p1, p2}, LA/i;->i(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Le6/l;->e:J

    invoke-virtual {p0, v0, v1, p1}, Le6/l;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Le6/l;->e:J

    sget-object v2, LP5/c;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Le6/l;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 2
    sget-object v0, LP5/c;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Le6/l;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readUtf8CodePoint()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le6/l;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_a

    .line 10
    .line 11
    invoke-virtual {p0, v2, v3}, Le6/l;->getByte(J)B

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    and-int/lit16 v1, v0, 0x80

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/16 v3, 0x80

    .line 19
    .line 20
    const v4, 0xfffd

    .line 21
    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    and-int/lit8 v1, v0, 0x7f

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    move v6, v5

    .line 29
    move v5, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    and-int/lit16 v1, v0, 0xe0

    .line 32
    .line 33
    const/16 v5, 0xc0

    .line 34
    .line 35
    if-ne v1, v5, :cond_1

    .line 36
    .line 37
    and-int/lit8 v1, v0, 0x1f

    .line 38
    .line 39
    const/4 v5, 0x2

    .line 40
    move v6, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    and-int/lit16 v1, v0, 0xf0

    .line 43
    .line 44
    const/16 v5, 0xe0

    .line 45
    .line 46
    if-ne v1, v5, :cond_2

    .line 47
    .line 48
    and-int/lit8 v1, v0, 0xf

    .line 49
    .line 50
    const/4 v5, 0x3

    .line 51
    const/16 v6, 0x800

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    and-int/lit16 v1, v0, 0xf8

    .line 55
    .line 56
    const/16 v5, 0xf0

    .line 57
    .line 58
    if-ne v1, v5, :cond_9

    .line 59
    .line 60
    and-int/lit8 v1, v0, 0x7

    .line 61
    .line 62
    const/4 v5, 0x4

    .line 63
    const/high16 v6, 0x10000

    .line 64
    .line 65
    :goto_0
    invoke-virtual {p0}, Le6/l;->size()J

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    int-to-long v9, v5

    .line 70
    cmp-long v7, v7, v9

    .line 71
    .line 72
    if-ltz v7, :cond_8

    .line 73
    .line 74
    :goto_1
    if-ge v2, v5, :cond_4

    .line 75
    .line 76
    int-to-long v7, v2

    .line 77
    invoke-virtual {p0, v7, v8}, Le6/l;->getByte(J)B

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    and-int/lit16 v11, v0, 0xc0

    .line 82
    .line 83
    if-ne v11, v3, :cond_3

    .line 84
    .line 85
    shl-int/lit8 v1, v1, 0x6

    .line 86
    .line 87
    and-int/lit8 v0, v0, 0x3f

    .line 88
    .line 89
    or-int/2addr v1, v0

    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {p0, v7, v8}, Le6/l;->skip(J)V

    .line 94
    .line 95
    .line 96
    return v4

    .line 97
    :cond_4
    invoke-virtual {p0, v9, v10}, Le6/l;->skip(J)V

    .line 98
    .line 99
    .line 100
    const v0, 0x10ffff

    .line 101
    .line 102
    .line 103
    if-le v1, v0, :cond_5

    .line 104
    .line 105
    return v4

    .line 106
    :cond_5
    const v0, 0xd800

    .line 107
    .line 108
    .line 109
    if-gt v0, v1, :cond_6

    .line 110
    .line 111
    const v0, 0xe000

    .line 112
    .line 113
    .line 114
    if-ge v1, v0, :cond_6

    .line 115
    .line 116
    return v4

    .line 117
    :cond_6
    if-ge v1, v6, :cond_7

    .line 118
    .line 119
    return v4

    .line 120
    :cond_7
    return v1

    .line 121
    :cond_8
    new-instance v1, Ljava/io/EOFException;

    .line 122
    .line 123
    const-string v2, "size < "

    .line 124
    .line 125
    const-string v3, ": "

    .line 126
    .line 127
    invoke-static {v5, v2, v3}, LA/i;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {p0}, Le6/l;->size()J

    .line 132
    .line 133
    .line 134
    move-result-wide v3

    .line 135
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v3, " (to read code point prefixed 0x"

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Le6/b;->toHexString(B)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const/16 v0, 0x29

    .line 151
    .line 152
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v1

    .line 163
    :cond_9
    const-wide/16 v0, 0x1

    .line 164
    .line 165
    invoke-virtual {p0, v0, v1}, Le6/l;->skip(J)V

    .line 166
    .line 167
    .line 168
    return v4

    .line 169
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    .line 170
    .line 171
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 172
    .line 173
    .line 174
    throw v0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Le6/l;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v6, 0x1

    if-nez v2, :cond_0

    :goto_0
    move-wide v4, v0

    goto :goto_1

    :cond_0
    add-long v0, p1, v6

    goto :goto_0

    :goto_1
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v5}, Le6/l;->indexOf(BJJ)J

    move-result-wide v1

    const-wide/16 v8, -0x1

    cmp-long v3, v1, v8

    if-eqz v3, :cond_1

    .line 3
    invoke-static {p0, v1, v2}, Lf6/a;->readUtf8Line(Le6/l;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v1

    cmp-long v1, v4, v1

    if-gez v1, :cond_2

    sub-long v1, v4, v6

    .line 5
    invoke-virtual {p0, v1, v2}, Le6/l;->getByte(J)B

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 6
    invoke-virtual {p0, v4, v5}, Le6/l;->getByte(J)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 7
    invoke-static {p0, v4, v5}, Lf6/a;->readUtf8Line(Le6/l;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 8
    :cond_2
    new-instance v1, Le6/l;

    invoke-direct {v1}, Le6/l;-><init>()V

    .line 9
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v2

    const/16 v4, 0x20

    int-to-long v4, v4

    .line 10
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    .line 11
    invoke-virtual/range {v0 .. v5}, Le6/l;->copyTo(Le6/l;JJ)Le6/l;

    .line 12
    new-instance v0, Ljava/io/EOFException;

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: limit="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v3

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 15
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    const-string v3, " content="

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Le6/l;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2026

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_3
    const-string v0, "limit < 0: "

    .line 22
    invoke-static {v0, p1, p2}, LA/i;->i(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public request(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Le6/l;->e:J

    .line 2
    .line 3
    cmp-long p1, v0, p1

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public require(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Le6/l;->e:J

    .line 2
    .line 3
    cmp-long p1, v0, p1

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public select(Le6/A;)I
    .locals 3

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, p1, v2, v0, v1}, Lf6/a;->selectPrefix$default(Le6/l;Le6/A;ZILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    invoke-virtual {p1}, Le6/A;->getByteStrings$okio()[Lokio/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    aget-object p1, p1, v0

    .line 22
    .line 23
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    int-to-long v1, p1

    .line 28
    invoke-virtual {p0, v1, v2}, Le6/l;->skip(J)V

    .line 29
    .line 30
    .line 31
    return v0
.end method

.method public final setSize$okio(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le6/l;->e:J

    .line 2
    .line 3
    return-void
.end method

.method public final size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le6/l;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public skip(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Le6/l;->b:Le6/H;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, v0, Le6/H;->c:I

    .line 12
    .line 13
    iget v2, v0, Le6/H;->b:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    int-to-long v1, v1

    .line 17
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    long-to-int v1, v1

    .line 22
    invoke-virtual {p0}, Le6/l;->size()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    int-to-long v4, v1

    .line 27
    sub-long/2addr v2, v4

    .line 28
    invoke-virtual {p0, v2, v3}, Le6/l;->setSize$okio(J)V

    .line 29
    .line 30
    .line 31
    sub-long/2addr p1, v4

    .line 32
    iget v2, v0, Le6/H;->b:I

    .line 33
    .line 34
    add-int/2addr v2, v1

    .line 35
    iput v2, v0, Le6/H;->b:I

    .line 36
    .line 37
    iget v1, v0, Le6/H;->c:I

    .line 38
    .line 39
    if-ne v2, v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Le6/H;->pop()Le6/H;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Le6/l;->b:Le6/H;

    .line 46
    .line 47
    invoke-static {v0}, Le6/I;->recycle(Le6/H;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    return-void
.end method

.method public final snapshot()Lokio/ByteString;
    .locals 4

    .line 1
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Le6/l;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size > Int.MAX_VALUE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final snapshot(I)Lokio/ByteString;
    .locals 8

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lokio/ByteString;->m:Lokio/ByteString;

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Le6/b;->checkOffsetAndCount(JJJ)V

    .line 6
    iget-object v0, p0, Le6/l;->b:Le6/H;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_2

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v0, Le6/H;->c:I

    iget v5, v0, Le6/H;->b:I

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    .line 8
    iget-object v0, v0, Le6/H;->f:Le6/H;

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "s.limit == s.pos"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 10
    :cond_2
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    .line 11
    new-array v2, v2, [I

    .line 12
    iget-object v4, p0, Le6/l;->b:Le6/H;

    move-object v5, v4

    move v4, v1

    :goto_1
    if-ge v1, p1, :cond_3

    .line 13
    invoke-static {v5}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v5, Le6/H;->a:[B

    aput-object v6, v0, v4

    .line 14
    iget v6, v5, Le6/H;->c:I

    iget v7, v5, Le6/H;->b:I

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 15
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v2, v4

    add-int v6, v4, v3

    .line 16
    iget v7, v5, Le6/H;->b:I

    aput v7, v2, v6

    const/4 v6, 0x1

    .line 17
    iput-boolean v6, v5, Le6/H;->d:Z

    add-int/2addr v4, v6

    .line 18
    iget-object v5, v5, Le6/H;->f:Le6/H;

    goto :goto_1

    .line 19
    :cond_3
    new-instance p1, Lokio/SegmentedByteString;

    invoke-direct {p1, v0, v2}, Lokio/SegmentedByteString;-><init>([[B[I)V

    return-object p1
.end method

.method public timeout()Le6/O;
    .locals 1

    .line 1
    sget-object v0, Le6/O;->NONE:Le6/O;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le6/l;->snapshot()Lokio/ByteString;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final writableSegment$okio(I)Le6/H;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_3

    .line 3
    .line 4
    const/16 v0, 0x2000

    .line 5
    .line 6
    if-gt p1, v0, :cond_3

    .line 7
    .line 8
    iget-object v1, p0, Le6/l;->b:Le6/H;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Le6/I;->take()Le6/H;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Le6/l;->b:Le6/H;

    .line 17
    .line 18
    iput-object p1, p1, Le6/H;->g:Le6/H;

    .line 19
    .line 20
    iput-object p1, p1, Le6/H;->f:Le6/H;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v1, Le6/H;->g:Le6/H;

    .line 27
    .line 28
    invoke-static {v1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget v2, v1, Le6/H;->c:I

    .line 32
    .line 33
    add-int/2addr v2, p1

    .line 34
    if-gt v2, v0, :cond_2

    .line 35
    .line 36
    iget-boolean p1, v1, Le6/H;->e:Z

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v1

    .line 42
    :cond_2
    :goto_0
    invoke-static {}, Le6/I;->take()Le6/H;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v1, p1}, Le6/H;->push(Le6/H;)Le6/H;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string v0, "unexpected capacity"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v2}, Le6/l;->writableSegment$okio(I)Le6/H;

    move-result-object v2

    .line 6
    iget v3, v2, Le6/H;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 7
    iget-object v4, v2, Le6/H;->a:[B

    iget v5, v2, Le6/H;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 8
    iget v4, v2, Le6/H;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Le6/H;->c:I

    goto :goto_0

    .line 9
    :cond_0
    iget-wide v1, p0, Le6/l;->e:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Le6/l;->e:J

    return v0
.end method

.method public write(Le6/L;J)Le6/l;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 20
    invoke-interface {p1, p0, p2, p3}, Le6/L;->read(Le6/l;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sub-long/2addr p2, v0

    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-object p0
.end method

.method public write(Lokio/ByteString;)Le6/l;
    .locals 2

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, p0, v1, v0}, Lokio/ByteString;->write$okio(Le6/l;II)V

    return-object p0
.end method

.method public write([B)Le6/l;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Le6/l;->write([BII)Le6/l;

    move-result-object p1

    return-object p1
.end method

.method public write([BII)Le6/l;
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Le6/b;->checkOffsetAndCount(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Le6/l;->writableSegment$okio(I)Le6/H;

    move-result-object v0

    sub-int v1, p3, p2

    .line 15
    iget v2, v0, Le6/H;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 16
    iget v2, v0, Le6/H;->c:I

    add-int v3, p2, v1

    .line 17
    iget-object v4, v0, Le6/H;->a:[B

    invoke-static {p1, v4, v2, p2, v3}, Lv5/m;->copyInto([B[BIII)[B

    .line 18
    iget p2, v0, Le6/H;->c:I

    add-int/2addr p2, v1

    iput p2, v0, Le6/H;->c:I

    move p2, v3

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide p1

    add-long/2addr p1, v5

    invoke-virtual {p0, p1, p2}, Le6/l;->setSize$okio(J)V

    return-object p0
.end method

.method public bridge synthetic write(Lokio/ByteString;)Le6/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le6/l;->write(Lokio/ByteString;)Le6/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write([B)Le6/m;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Le6/l;->write([B)Le6/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write([BII)Le6/m;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Le6/l;->write([BII)Le6/l;

    move-result-object p1

    return-object p1
.end method

.method public write(Le6/l;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_6

    .line 22
    invoke-virtual {p1}, Le6/l;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Le6/b;->checkOffsetAndCount(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_5

    .line 23
    iget-object v0, p1, Le6/l;->b:Le6/H;

    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v0, Le6/H;->c:I

    iget-object v1, p1, Le6/l;->b:Le6/H;

    invoke-static {v1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Le6/H;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_3

    .line 24
    iget-object v0, p0, Le6/l;->b:Le6/H;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Le6/H;->g:Le6/H;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 25
    iget-boolean v1, v0, Le6/H;->e:Z

    if-eqz v1, :cond_2

    .line 26
    iget v1, v0, Le6/H;->c:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    iget-boolean v3, v0, Le6/H;->d:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    iget v3, v0, Le6/H;->b:I

    :goto_2
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 27
    iget-object v1, p1, Le6/l;->b:Le6/H;

    invoke-static {v1}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Le6/H;->writeTo(Le6/H;I)V

    .line 28
    invoke-virtual {p1}, Le6/l;->size()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Le6/l;->setSize$okio(J)V

    .line 29
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, v0, v1}, Le6/l;->setSize$okio(J)V

    return-void

    .line 30
    :cond_2
    iget-object v0, p1, Le6/l;->b:Le6/H;

    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Le6/H;->split(I)Le6/H;

    move-result-object v0

    iput-object v0, p1, Le6/l;->b:Le6/H;

    .line 31
    :cond_3
    iget-object v0, p1, Le6/l;->b:Le6/H;

    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Le6/H;->c:I

    iget v2, v0, Le6/H;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 33
    invoke-virtual {v0}, Le6/H;->pop()Le6/H;

    move-result-object v3

    iput-object v3, p1, Le6/l;->b:Le6/H;

    .line 34
    iget-object v3, p0, Le6/l;->b:Le6/H;

    if-nez v3, :cond_4

    .line 35
    iput-object v0, p0, Le6/l;->b:Le6/H;

    .line 36
    iput-object v0, v0, Le6/H;->g:Le6/H;

    .line 37
    iput-object v0, v0, Le6/H;->f:Le6/H;

    goto :goto_3

    .line 38
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Le6/H;->g:Le6/H;

    .line 39
    invoke-static {v3}, Lkotlin/jvm/internal/j;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Le6/H;->push(Le6/H;)Le6/H;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Le6/H;->compact()V

    .line 41
    :goto_3
    invoke-virtual {p1}, Le6/l;->size()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Le6/l;->setSize$okio(J)V

    .line 42
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Le6/l;->setSize$okio(J)V

    sub-long/2addr p2, v1

    goto/16 :goto_0

    :cond_5
    return-void

    .line 43
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAll(Le6/L;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    :goto_0
    const-wide/16 v2, 0x2000

    .line 9
    .line 10
    invoke-interface {p1, p0, v2, v3}, Le6/L;->read(Le6/l;J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const-wide/16 v4, -0x1

    .line 15
    .line 16
    cmp-long v4, v2, v4

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    add-long/2addr v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-wide v0
.end method

.method public writeByte(I)Le6/l;
    .locals 4

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Le6/l;->writableSegment$okio(I)Le6/H;

    move-result-object v0

    .line 3
    iget-object v1, v0, Le6/H;->a:[B

    iget v2, v0, Le6/H;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Le6/H;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 4
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Le6/l;->setSize$okio(J)V

    return-object p0
.end method

.method public bridge synthetic writeByte(I)Le6/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le6/l;->writeByte(I)Le6/l;

    move-result-object p1

    return-object p1
.end method

.method public writeDecimalLong(J)Le6/l;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 2
    invoke-virtual {p0, p1}, Le6/l;->writeByte(I)Le6/l;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v3, 0x1

    if-gez v2, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 3
    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Le6/l;->writeUtf8(Ljava/lang/String;)Le6/l;

    move-result-object p1

    return-object p1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-wide/32 v4, 0x5f5e100

    cmp-long v4, p1, v4

    const/16 v5, 0xa

    if-gez v4, :cond_a

    const-wide/16 v6, 0x2710

    cmp-long v4, p1, v6

    if-gez v4, :cond_6

    const-wide/16 v6, 0x64

    cmp-long v4, p1, v6

    if-gez v4, :cond_4

    const-wide/16 v6, 0xa

    cmp-long v4, p1, v6

    if-gez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x2

    goto/16 :goto_1

    :cond_4
    const-wide/16 v3, 0x3e8

    cmp-long v3, p1, v3

    if-gez v3, :cond_5

    const/4 v3, 0x3

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x4

    goto/16 :goto_1

    :cond_6
    const-wide/32 v3, 0xf4240

    cmp-long v3, p1, v3

    if-gez v3, :cond_8

    const-wide/32 v3, 0x186a0

    cmp-long v3, p1, v3

    if-gez v3, :cond_7

    const/4 v3, 0x5

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x6

    goto/16 :goto_1

    :cond_8
    const-wide/32 v3, 0x989680

    cmp-long v3, p1, v3

    if-gez v3, :cond_9

    const/4 v3, 0x7

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0x8

    goto/16 :goto_1

    :cond_a
    const-wide v3, 0xe8d4a51000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_e

    const-wide v3, 0x2540be400L

    cmp-long v3, p1, v3

    if-gez v3, :cond_c

    const-wide/32 v3, 0x3b9aca00

    cmp-long v3, p1, v3

    if-gez v3, :cond_b

    const/16 v3, 0x9

    goto :goto_1

    :cond_b
    move v3, v5

    goto :goto_1

    :cond_c
    const-wide v3, 0x174876e800L

    cmp-long v3, p1, v3

    if-gez v3, :cond_d

    const/16 v3, 0xb

    goto :goto_1

    :cond_d
    const/16 v3, 0xc

    goto :goto_1

    :cond_e
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_11

    const-wide v3, 0x9184e72a000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_f

    const/16 v3, 0xd

    goto :goto_1

    :cond_f
    const-wide v3, 0x5af3107a4000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_10

    const/16 v3, 0xe

    goto :goto_1

    :cond_10
    const/16 v3, 0xf

    goto :goto_1

    :cond_11
    const-wide v3, 0x16345785d8a0000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_13

    const-wide v3, 0x2386f26fc10000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_12

    const/16 v3, 0x10

    goto :goto_1

    :cond_12
    const/16 v3, 0x11

    goto :goto_1

    :cond_13
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_14

    const/16 v3, 0x12

    goto :goto_1

    :cond_14
    const/16 v3, 0x13

    :goto_1
    if-eqz v2, :cond_15

    add-int/lit8 v3, v3, 0x1

    .line 4
    :cond_15
    invoke-virtual {p0, v3}, Le6/l;->writableSegment$okio(I)Le6/H;

    move-result-object v4

    .line 5
    iget-object v6, v4, Le6/H;->a:[B

    .line 6
    iget v7, v4, Le6/H;->c:I

    add-int/2addr v7, v3

    :goto_2
    cmp-long v8, p1, v0

    if-eqz v8, :cond_16

    int-to-long v8, v5

    .line 7
    rem-long v10, p1, v8

    long-to-int v10, v10

    add-int/lit8 v7, v7, -0x1

    .line 8
    invoke-static {}, Lf6/a;->getHEX_DIGIT_BYTES()[B

    move-result-object v11

    aget-byte v10, v11, v10

    aput-byte v10, v6, v7

    .line 9
    div-long/2addr p1, v8

    goto :goto_2

    :cond_16
    if-eqz v2, :cond_17

    add-int/lit8 v7, v7, -0x1

    const/16 p1, 0x2d

    .line 10
    aput-byte p1, v6, v7

    .line 11
    :cond_17
    iget p1, v4, Le6/H;->c:I

    add-int/2addr p1, v3

    iput p1, v4, Le6/H;->c:I

    .line 12
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide p1

    int-to-long v0, v3

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Le6/l;->setSize$okio(J)V

    return-object p0
.end method

.method public bridge synthetic writeDecimalLong(J)Le6/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le6/l;->writeDecimalLong(J)Le6/l;

    move-result-object p1

    return-object p1
.end method

.method public writeHexadecimalUnsignedLong(J)Le6/l;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 p1, 0x30

    .line 2
    invoke-virtual {p0, p1}, Le6/l;->writeByte(I)Le6/l;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p1, v0

    or-long/2addr v1, p1

    const/4 v3, 0x2

    ushr-long v4, v1, v3

    or-long/2addr v1, v4

    const/4 v4, 0x4

    ushr-long v5, v1, v4

    or-long/2addr v1, v5

    const/16 v5, 0x8

    ushr-long v6, v1, v5

    or-long/2addr v1, v6

    const/16 v6, 0x10

    ushr-long v7, v1, v6

    or-long/2addr v1, v7

    const/16 v7, 0x20

    ushr-long v8, v1, v7

    or-long/2addr v1, v8

    ushr-long v8, v1, v0

    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v8, v10

    sub-long/2addr v1, v8

    ushr-long v8, v1, v3

    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v8, v10

    and-long/2addr v1, v10

    add-long/2addr v8, v1

    ushr-long v1, v8, v4

    add-long/2addr v1, v8

    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v1, v8

    ushr-long v8, v1, v5

    add-long/2addr v1, v8

    ushr-long v5, v1, v6

    add-long/2addr v1, v5

    const-wide/16 v5, 0x3f

    and-long v8, v1, v5

    ushr-long/2addr v1, v7

    and-long/2addr v1, v5

    add-long/2addr v8, v1

    const/4 v1, 0x3

    int-to-long v1, v1

    add-long/2addr v8, v1

    int-to-long v1, v4

    .line 3
    div-long/2addr v8, v1

    long-to-int v1, v8

    .line 4
    invoke-virtual {p0, v1}, Le6/l;->writableSegment$okio(I)Le6/H;

    move-result-object v2

    .line 5
    iget-object v3, v2, Le6/H;->a:[B

    .line 6
    iget v5, v2, Le6/H;->c:I

    add-int v6, v5, v1

    sub-int/2addr v6, v0

    :goto_0
    if-lt v6, v5, :cond_1

    .line 7
    invoke-static {}, Lf6/a;->getHEX_DIGIT_BYTES()[B

    move-result-object v0

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v7, v7

    aget-byte v0, v0, v7

    aput-byte v0, v3, v6

    ushr-long/2addr p1, v4

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 8
    :cond_1
    iget p1, v2, Le6/H;->c:I

    add-int/2addr p1, v1

    iput p1, v2, Le6/H;->c:I

    .line 9
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide p1

    int-to-long v0, v1

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Le6/l;->setSize$okio(J)V

    return-object p0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Le6/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le6/l;->writeHexadecimalUnsignedLong(J)Le6/l;

    move-result-object p1

    return-object p1
.end method

.method public writeInt(I)Le6/l;
    .locals 7

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Le6/l;->writableSegment$okio(I)Le6/H;

    move-result-object v1

    .line 3
    iget-object v2, v1, Le6/H;->a:[B

    .line 4
    iget v3, v1, Le6/H;->c:I

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, p1, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 5
    aput-byte v5, v2, v3

    add-int/lit8 v5, v3, 0x2

    ushr-int/lit8 v6, p1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 6
    aput-byte v6, v2, v4

    add-int/lit8 v4, v3, 0x3

    ushr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 7
    aput-byte v6, v2, v5

    add-int/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 8
    aput-byte p1, v2, v4

    .line 9
    iput v3, v1, Le6/H;->c:I

    .line 10
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Le6/l;->setSize$okio(J)V

    return-object p0
.end method

.method public bridge synthetic writeInt(I)Le6/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le6/l;->writeInt(I)Le6/l;

    move-result-object p1

    return-object p1
.end method

.method public writeLong(J)Le6/l;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Le6/l;->writableSegment$okio(I)Le6/H;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v1, Le6/H;->a:[B

    .line 8
    .line 9
    iget v3, v1, Le6/H;->c:I

    .line 10
    .line 11
    add-int/lit8 v4, v3, 0x1

    .line 12
    .line 13
    const/16 v5, 0x38

    .line 14
    .line 15
    ushr-long v5, p1, v5

    .line 16
    .line 17
    const-wide/16 v7, 0xff

    .line 18
    .line 19
    and-long/2addr v5, v7

    .line 20
    long-to-int v5, v5

    .line 21
    int-to-byte v5, v5

    .line 22
    aput-byte v5, v2, v3

    .line 23
    .line 24
    add-int/lit8 v5, v3, 0x2

    .line 25
    .line 26
    const/16 v6, 0x30

    .line 27
    .line 28
    ushr-long v9, p1, v6

    .line 29
    .line 30
    and-long/2addr v9, v7

    .line 31
    long-to-int v6, v9

    .line 32
    int-to-byte v6, v6

    .line 33
    aput-byte v6, v2, v4

    .line 34
    .line 35
    add-int/lit8 v4, v3, 0x3

    .line 36
    .line 37
    const/16 v6, 0x28

    .line 38
    .line 39
    ushr-long v9, p1, v6

    .line 40
    .line 41
    and-long/2addr v9, v7

    .line 42
    long-to-int v6, v9

    .line 43
    int-to-byte v6, v6

    .line 44
    aput-byte v6, v2, v5

    .line 45
    .line 46
    add-int/lit8 v5, v3, 0x4

    .line 47
    .line 48
    const/16 v6, 0x20

    .line 49
    .line 50
    ushr-long v9, p1, v6

    .line 51
    .line 52
    and-long/2addr v9, v7

    .line 53
    long-to-int v6, v9

    .line 54
    int-to-byte v6, v6

    .line 55
    aput-byte v6, v2, v4

    .line 56
    .line 57
    add-int/lit8 v4, v3, 0x5

    .line 58
    .line 59
    const/16 v6, 0x18

    .line 60
    .line 61
    ushr-long v9, p1, v6

    .line 62
    .line 63
    and-long/2addr v9, v7

    .line 64
    long-to-int v6, v9

    .line 65
    int-to-byte v6, v6

    .line 66
    aput-byte v6, v2, v5

    .line 67
    .line 68
    add-int/lit8 v5, v3, 0x6

    .line 69
    .line 70
    const/16 v6, 0x10

    .line 71
    .line 72
    ushr-long v9, p1, v6

    .line 73
    .line 74
    and-long/2addr v9, v7

    .line 75
    long-to-int v6, v9

    .line 76
    int-to-byte v6, v6

    .line 77
    aput-byte v6, v2, v4

    .line 78
    .line 79
    add-int/lit8 v4, v3, 0x7

    .line 80
    .line 81
    ushr-long v9, p1, v0

    .line 82
    .line 83
    and-long/2addr v9, v7

    .line 84
    long-to-int v6, v9

    .line 85
    int-to-byte v6, v6

    .line 86
    aput-byte v6, v2, v5

    .line 87
    .line 88
    add-int/2addr v3, v0

    .line 89
    and-long/2addr p1, v7

    .line 90
    long-to-int p1, p1

    .line 91
    int-to-byte p1, p1

    .line 92
    aput-byte p1, v2, v4

    .line 93
    .line 94
    iput v3, v1, Le6/H;->c:I

    .line 95
    .line 96
    invoke-virtual {p0}, Le6/l;->size()J

    .line 97
    .line 98
    .line 99
    move-result-wide p1

    .line 100
    const-wide/16 v0, 0x8

    .line 101
    .line 102
    add-long/2addr p1, v0

    .line 103
    invoke-virtual {p0, p1, p2}, Le6/l;->setSize$okio(J)V

    .line 104
    .line 105
    .line 106
    return-object p0
.end method

.method public writeShort(I)Le6/l;
    .locals 6

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Le6/l;->writableSegment$okio(I)Le6/H;

    move-result-object v1

    .line 3
    iget-object v2, v1, Le6/H;->a:[B

    .line 4
    iget v3, v1, Le6/H;->c:I

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 5
    aput-byte v5, v2, v3

    add-int/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 6
    aput-byte p1, v2, v4

    .line 7
    iput v3, v1, Le6/H;->c:I

    .line 8
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Le6/l;->setSize$okio(J)V

    return-object p0
.end method

.method public bridge synthetic writeShort(I)Le6/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le6/l;->writeShort(I)Le6/l;

    move-result-object p1

    return-object p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Le6/l;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_3

    if-lt p3, p2, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_1

    .line 4
    sget-object v0, LP5/c;->b:Ljava/nio/charset/Charset;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/j;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Le6/l;->writeUtf8(Ljava/lang/String;II)Le6/l;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    array-length p2, p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Le6/l;->write([BII)Le6/l;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    const-string p2, "endIndex > string.length: "

    const-string p4, " > "

    .line 8
    invoke-static {p3, p2, p4}, LA/i;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_2
    const-string p1, "endIndex < beginIndex: "

    const-string p4, " < "

    .line 11
    invoke-static {p3, p2, p1, p4}, LA/i;->e(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_3
    const-string p1, "beginIndex < 0: "

    .line 14
    invoke-static {p2, p1}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Le6/l;
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, v1, v0, p2}, Le6/l;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Le6/l;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8(Ljava/lang/String;)Le6/l;
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Le6/l;->writeUtf8(Ljava/lang/String;II)Le6/l;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Le6/l;
    .locals 9

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_a

    if-lt p3, p2, :cond_9

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_8

    :goto_0
    if-ge p2, p3, :cond_7

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    .line 6
    invoke-virtual {p0, v2}, Le6/l;->writableSegment$okio(I)Le6/H;

    move-result-object v2

    .line 7
    iget-object v3, v2, Le6/H;->a:[B

    .line 8
    iget v4, v2, Le6/H;->c:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    .line 9
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    .line 10
    aput-byte v0, v3, p2

    :goto_1
    move p2, v6

    if-ge p2, v5, :cond_0

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v1, :cond_0

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    .line 12
    aput-byte v0, v3, p2

    goto :goto_1

    :cond_0
    add-int/2addr v4, p2

    .line 13
    iget v0, v2, Le6/H;->c:I

    sub-int/2addr v4, v0

    add-int/2addr v0, v4

    .line 14
    iput v0, v2, Le6/H;->c:I

    .line 15
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    int-to-long v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Le6/l;->setSize$okio(J)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x800

    if-ge v0, v2, :cond_2

    const/4 v2, 0x2

    .line 16
    invoke-virtual {p0, v2}, Le6/l;->writableSegment$okio(I)Le6/H;

    move-result-object v3

    .line 17
    iget-object v4, v3, Le6/H;->a:[B

    iget v5, v3, Le6/H;->c:I

    shr-int/lit8 v6, v0, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 18
    aput-byte v0, v4, v6

    add-int/2addr v5, v2

    .line 19
    iput v5, v3, Le6/H;->c:I

    .line 20
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Le6/l;->setSize$okio(J)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_6

    const v2, 0xdfff

    if-le v0, v2, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v2, p2, 0x1

    if-ge v2, p3, :cond_4

    .line 21
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    const v5, 0xdbff

    if-gt v0, v5, :cond_5

    const v5, 0xdc00

    if-gt v5, v4, :cond_5

    const v5, 0xe000

    if-ge v4, v5, :cond_5

    and-int/lit16 v0, v0, 0x3ff

    shl-int/lit8 v0, v0, 0xa

    and-int/lit16 v2, v4, 0x3ff

    or-int/2addr v0, v2

    const/high16 v2, 0x10000

    add-int/2addr v0, v2

    const/4 v2, 0x4

    .line 22
    invoke-virtual {p0, v2}, Le6/l;->writableSegment$okio(I)Le6/H;

    move-result-object v4

    .line 23
    iget-object v5, v4, Le6/H;->a:[B

    iget v6, v4, Le6/H;->c:I

    shr-int/lit8 v7, v0, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v0, 0xc

    and-int/2addr v8, v3

    or-int/2addr v8, v1

    int-to-byte v8, v8

    .line 24
    aput-byte v8, v5, v7

    add-int/lit8 v7, v6, 0x2

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v8, v3

    or-int/2addr v8, v1

    int-to-byte v8, v8

    .line 25
    aput-byte v8, v5, v7

    add-int/lit8 v7, v6, 0x3

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 26
    aput-byte v0, v5, v7

    add-int/2addr v6, v2

    .line 27
    iput v6, v4, Le6/H;->c:I

    .line 28
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Le6/l;->setSize$okio(J)V

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_0

    .line 29
    :cond_5
    invoke-virtual {p0, v3}, Le6/l;->writeByte(I)Le6/l;

    move p2, v2

    goto/16 :goto_0

    :cond_6
    :goto_4
    const/4 v2, 0x3

    .line 30
    invoke-virtual {p0, v2}, Le6/l;->writableSegment$okio(I)Le6/H;

    move-result-object v4

    .line 31
    iget-object v5, v4, Le6/H;->a:[B

    iget v6, v4, Le6/H;->c:I

    shr-int/lit8 v7, v0, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v3, v8

    or-int/2addr v3, v1

    int-to-byte v3, v3

    .line 32
    aput-byte v3, v5, v7

    add-int/lit8 v3, v6, 0x2

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 33
    aput-byte v0, v5, v3

    add-int/2addr v6, v2

    .line 34
    iput v6, v4, Le6/H;->c:I

    .line 35
    invoke-virtual {p0}, Le6/l;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Le6/l;->setSize$okio(J)V

    goto/16 :goto_2

    :cond_7
    return-object p0

    .line 36
    :cond_8
    const-string p2, "endIndex > string.length: "

    const-string v0, " > "

    .line 37
    invoke-static {p3, p2, v0}, LA/i;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 39
    :cond_9
    const-string p1, "endIndex < beginIndex: "

    const-string v0, " < "

    .line 40
    invoke-static {p3, p2, p1, v0}, LA/i;->e(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 42
    :cond_a
    const-string p1, "beginIndex < 0: "

    .line 43
    invoke-static {p2, p1}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Le6/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le6/l;->writeUtf8(Ljava/lang/String;)Le6/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Le6/m;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Le6/l;->writeUtf8(Ljava/lang/String;II)Le6/l;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8CodePoint(I)Le6/l;
    .locals 8

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Le6/l;->writeByte(I)Le6/l;

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const/16 v1, 0x800

    .line 10
    .line 11
    const/16 v2, 0x3f

    .line 12
    .line 13
    if-ge p1, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p0, v1}, Le6/l;->writableSegment$okio(I)Le6/H;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, v3, Le6/H;->a:[B

    .line 21
    .line 22
    iget v5, v3, Le6/H;->c:I

    .line 23
    .line 24
    shr-int/lit8 v6, p1, 0x6

    .line 25
    .line 26
    or-int/lit16 v6, v6, 0xc0

    .line 27
    .line 28
    int-to-byte v6, v6

    .line 29
    aput-byte v6, v4, v5

    .line 30
    .line 31
    add-int/lit8 v6, v5, 0x1

    .line 32
    .line 33
    and-int/2addr p1, v2

    .line 34
    or-int/2addr p1, v0

    .line 35
    int-to-byte p1, p1

    .line 36
    aput-byte p1, v4, v6

    .line 37
    .line 38
    add-int/2addr v5, v1

    .line 39
    iput v5, v3, Le6/H;->c:I

    .line 40
    .line 41
    invoke-virtual {p0}, Le6/l;->size()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    const-wide/16 v2, 0x2

    .line 46
    .line 47
    add-long/2addr v0, v2

    .line 48
    invoke-virtual {p0, v0, v1}, Le6/l;->setSize$okio(J)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_1
    const v1, 0xd800

    .line 53
    .line 54
    .line 55
    if-gt v1, p1, :cond_2

    .line 56
    .line 57
    const v1, 0xe000

    .line 58
    .line 59
    .line 60
    if-ge p1, v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Le6/l;->writeByte(I)Le6/l;

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_2
    const/high16 v1, 0x10000

    .line 67
    .line 68
    if-ge p1, v1, :cond_3

    .line 69
    .line 70
    const/4 v1, 0x3

    .line 71
    invoke-virtual {p0, v1}, Le6/l;->writableSegment$okio(I)Le6/H;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget-object v4, v3, Le6/H;->a:[B

    .line 76
    .line 77
    iget v5, v3, Le6/H;->c:I

    .line 78
    .line 79
    shr-int/lit8 v6, p1, 0xc

    .line 80
    .line 81
    or-int/lit16 v6, v6, 0xe0

    .line 82
    .line 83
    int-to-byte v6, v6

    .line 84
    aput-byte v6, v4, v5

    .line 85
    .line 86
    add-int/lit8 v6, v5, 0x1

    .line 87
    .line 88
    shr-int/lit8 v7, p1, 0x6

    .line 89
    .line 90
    and-int/2addr v7, v2

    .line 91
    or-int/2addr v7, v0

    .line 92
    int-to-byte v7, v7

    .line 93
    aput-byte v7, v4, v6

    .line 94
    .line 95
    add-int/lit8 v6, v5, 0x2

    .line 96
    .line 97
    and-int/2addr p1, v2

    .line 98
    or-int/2addr p1, v0

    .line 99
    int-to-byte p1, p1

    .line 100
    aput-byte p1, v4, v6

    .line 101
    .line 102
    add-int/2addr v5, v1

    .line 103
    iput v5, v3, Le6/H;->c:I

    .line 104
    .line 105
    invoke-virtual {p0}, Le6/l;->size()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    const-wide/16 v2, 0x3

    .line 110
    .line 111
    add-long/2addr v0, v2

    .line 112
    invoke-virtual {p0, v0, v1}, Le6/l;->setSize$okio(J)V

    .line 113
    .line 114
    .line 115
    return-object p0

    .line 116
    :cond_3
    const v1, 0x10ffff

    .line 117
    .line 118
    .line 119
    if-gt p1, v1, :cond_4

    .line 120
    .line 121
    const/4 v1, 0x4

    .line 122
    invoke-virtual {p0, v1}, Le6/l;->writableSegment$okio(I)Le6/H;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    iget-object v4, v3, Le6/H;->a:[B

    .line 127
    .line 128
    iget v5, v3, Le6/H;->c:I

    .line 129
    .line 130
    shr-int/lit8 v6, p1, 0x12

    .line 131
    .line 132
    or-int/lit16 v6, v6, 0xf0

    .line 133
    .line 134
    int-to-byte v6, v6

    .line 135
    aput-byte v6, v4, v5

    .line 136
    .line 137
    add-int/lit8 v6, v5, 0x1

    .line 138
    .line 139
    shr-int/lit8 v7, p1, 0xc

    .line 140
    .line 141
    and-int/2addr v7, v2

    .line 142
    or-int/2addr v7, v0

    .line 143
    int-to-byte v7, v7

    .line 144
    aput-byte v7, v4, v6

    .line 145
    .line 146
    add-int/lit8 v6, v5, 0x2

    .line 147
    .line 148
    shr-int/lit8 v7, p1, 0x6

    .line 149
    .line 150
    and-int/2addr v7, v2

    .line 151
    or-int/2addr v7, v0

    .line 152
    int-to-byte v7, v7

    .line 153
    aput-byte v7, v4, v6

    .line 154
    .line 155
    add-int/lit8 v6, v5, 0x3

    .line 156
    .line 157
    and-int/2addr p1, v2

    .line 158
    or-int/2addr p1, v0

    .line 159
    int-to-byte p1, p1

    .line 160
    aput-byte p1, v4, v6

    .line 161
    .line 162
    add-int/2addr v5, v1

    .line 163
    iput v5, v3, Le6/H;->c:I

    .line 164
    .line 165
    invoke-virtual {p0}, Le6/l;->size()J

    .line 166
    .line 167
    .line 168
    move-result-wide v0

    .line 169
    const-wide/16 v2, 0x4

    .line 170
    .line 171
    add-long/2addr v0, v2

    .line 172
    invoke-virtual {p0, v0, v1}, Le6/l;->setSize$okio(J)V

    .line 173
    .line 174
    .line 175
    return-object p0

    .line 176
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 177
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v2, "Unexpected code point: 0x"

    .line 181
    .line 182
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-static {p1}, Le6/b;->toHexString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw v0
.end method
