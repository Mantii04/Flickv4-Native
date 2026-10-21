.class public final Lcom/google/common/collect/y;
.super LQ3/r;
.source "SourceFile"


# instance fields
.field public a:LQ3/j0;

.field public b:Z


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)LQ3/r;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/y;->add(Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/y;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/y;->addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/y;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/y;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/y;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/y;->a:LQ3/j0;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, LQ3/f0;

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    check-cast p1, LQ3/f0;

    .line 11
    .line 12
    instance-of v0, p1, Lcom/google/common/collect/RegularImmutableMultiset;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    check-cast v0, Lcom/google/common/collect/RegularImmutableMultiset;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableMultiset;->j:LQ3/j0;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/common/collect/y;->a:LQ3/j0;

    .line 26
    .line 27
    iget v1, p1, LQ3/j0;->c:I

    .line 28
    .line 29
    iget v2, v0, LQ3/j0;->c:I

    .line 30
    .line 31
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1, v1}, LQ3/j0;->a(I)V

    .line 36
    .line 37
    .line 38
    iget p1, v0, LQ3/j0;->c:I

    .line 39
    .line 40
    const/4 v1, -0x1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    :cond_1
    move p1, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 p1, 0x0

    .line 46
    :goto_1
    if-ltz p1, :cond_4

    .line 47
    .line 48
    iget v2, v0, LQ3/j0;->c:I

    .line 49
    .line 50
    invoke-static {p1, v2}, LP3/v;->checkElementIndex(II)I

    .line 51
    .line 52
    .line 53
    iget-object v2, v0, LQ3/j0;->a:[Ljava/lang/Object;

    .line 54
    .line 55
    aget-object v2, v2, p1

    .line 56
    .line 57
    iget v3, v0, LQ3/j0;->c:I

    .line 58
    .line 59
    invoke-static {p1, v3}, LP3/v;->checkElementIndex(II)I

    .line 60
    .line 61
    .line 62
    iget-object v3, v0, LQ3/j0;->b:[I

    .line 63
    .line 64
    aget v3, v3, p1

    .line 65
    .line 66
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/y;->addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/y;

    .line 67
    .line 68
    .line 69
    add-int/lit8 p1, p1, 0x1

    .line 70
    .line 71
    iget v2, v0, LQ3/j0;->c:I

    .line 72
    .line 73
    if-ge p1, v2, :cond_1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-interface {p1}, LQ3/f0;->entrySet()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/google/common/collect/y;->a:LQ3/j0;

    .line 81
    .line 82
    iget v2, v1, LQ3/j0;->c:I

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-virtual {v1, v0}, LQ3/j0;->a(I)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p1}, LQ3/f0;->entrySet()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, LQ3/g0;

    .line 114
    .line 115
    check-cast v0, LQ3/i0;

    .line 116
    .line 117
    invoke-virtual {v0}, LQ3/i0;->getElement()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0}, LQ3/i0;->getCount()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/y;->addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/y;

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    return-object p0

    .line 130
    :cond_5
    invoke-super {p0, p1}, LQ3/r;->addAll(Ljava/lang/Iterable;)LQ3/r;

    .line 131
    .line 132
    .line 133
    return-object p0
.end method

.method public addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/y;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/y;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/y;->a:LQ3/j0;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/y;->b:Z

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    new-instance v0, LQ3/j0;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/common/collect/y;->a:LQ3/j0;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iget v2, v1, LQ3/j0;->c:I

    .line 21
    .line 22
    invoke-virtual {v0, v2}, LQ3/j0;->c(I)V

    .line 23
    .line 24
    .line 25
    iget v2, v1, LQ3/j0;->c:I

    .line 26
    .line 27
    const/4 v3, -0x1

    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    :cond_1
    move v2, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 v2, 0x0

    .line 33
    :goto_0
    if-eq v2, v3, :cond_3

    .line 34
    .line 35
    iget v4, v1, LQ3/j0;->c:I

    .line 36
    .line 37
    invoke-static {v2, v4}, LP3/v;->checkElementIndex(II)I

    .line 38
    .line 39
    .line 40
    iget-object v4, v1, LQ3/j0;->a:[Ljava/lang/Object;

    .line 41
    .line 42
    aget-object v4, v4, v2

    .line 43
    .line 44
    iget v5, v1, LQ3/j0;->c:I

    .line 45
    .line 46
    invoke-static {v2, v5}, LP3/v;->checkElementIndex(II)I

    .line 47
    .line 48
    .line 49
    iget-object v5, v1, LQ3/j0;->b:[I

    .line 50
    .line 51
    aget v5, v5, v2

    .line 52
    .line 53
    invoke-virtual {v0, v4, v5}, LQ3/j0;->put(Ljava/lang/Object;I)I

    .line 54
    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    iget v4, v1, LQ3/j0;->c:I

    .line 59
    .line 60
    if-ge v2, v4, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iput-object v0, p0, Lcom/google/common/collect/y;->a:LQ3/j0;

    .line 64
    .line 65
    :cond_4
    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/google/common/collect/y;->b:Z

    .line 67
    .line 68
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/common/collect/y;->a:LQ3/j0;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, LQ3/j0;->get(Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    add-int/2addr v1, p2

    .line 78
    invoke-virtual {v0, p1, v1}, LQ3/j0;->put(Ljava/lang/Object;I)I

    .line 79
    .line 80
    .line 81
    return-object p0
.end method

.method public build()Lcom/google/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/y;->a:LQ3/j0;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/collect/y;->a:LQ3/j0;

    .line 7
    .line 8
    iget v0, v0, LQ3/j0;->c:I

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/google/common/collect/ImmutableMultiset;->of()Lcom/google/common/collect/ImmutableMultiset;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/google/common/collect/y;->b:Z

    .line 19
    .line 20
    new-instance v0, Lcom/google/common/collect/RegularImmutableMultiset;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/common/collect/y;->a:LQ3/j0;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableMultiset;-><init>(LQ3/j0;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method
