.class public final Ls0/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls0/A;

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Ljava/util/ArrayDeque;

.field public final d:Ljava/util/PriorityQueue;

.field public e:I

.field public f:Ls0/z;


# direct methods
.method public constructor <init>(Ls0/A;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls0/B;->a:Ls0/A;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Ls0/B;->b:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayDeque;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Ls0/B;->c:Ljava/util/ArrayDeque;

    .line 19
    .line 20
    new-instance p1, Ljava/util/PriorityQueue;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Ls0/B;->d:Ljava/util/PriorityQueue;

    .line 26
    .line 27
    const/4 p1, -0x1

    .line 28
    iput p1, p0, Ls0/B;->e:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    .line 1
    :goto_0
    iget-object v0, p0, Ls0/B;->d:Ljava/util/PriorityQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-le v1, p1, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ls0/z;

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ls0/z;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_1
    iget-object v2, v0, Ls0/z;->b:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v3, v0, Ls0/z;->b:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-ge v1, v2, :cond_0

    .line 31
    .line 32
    iget-wide v4, v0, Ls0/z;->e:J

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 39
    .line 40
    iget-object v6, p0, Ls0/B;->a:Ls0/A;

    .line 41
    .line 42
    invoke-interface {v6, v4, v5, v2}, Ls0/A;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Ls0/B;->b:Ljava/util/ArrayDeque;

    .line 46
    .line 47
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroidx/media3/common/util/ParsableByteArray;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Ls0/B;->f:Ls0/z;

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    iget-wide v1, v1, Ls0/z;->e:J

    .line 67
    .line 68
    iget-wide v3, v0, Ls0/z;->e:J

    .line 69
    .line 70
    cmp-long v1, v1, v3

    .line 71
    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Ls0/B;->f:Ls0/z;

    .line 76
    .line 77
    :cond_1
    iget-object v1, p0, Ls0/B;->c:Ljava/util/ArrayDeque;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method

.method public add(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 7

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v0, p1, v0

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget v0, p0, Ls0/B;->e:I

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    iget-object v1, p0, Ls0/B;->d:Ljava/util/PriorityQueue;

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq v0, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v3, p0, Ls0/B;->e:I

    .line 24
    .line 25
    if-lt v0, v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ls0/z;

    .line 32
    .line 33
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ls0/z;

    .line 38
    .line 39
    iget-wide v3, v0, Ls0/z;->e:J

    .line 40
    .line 41
    cmp-long v0, p1, v3

    .line 42
    .line 43
    if-gez v0, :cond_0

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_0
    iget-object v0, p0, Ls0/B;->b:Ljava/util/ArrayDeque;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 55
    .line 56
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 65
    .line 66
    :goto_0
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const/4 v5, 0x0

    .line 86
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-static {v3, p3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    .line 92
    .line 93
    iget-object p3, p0, Ls0/B;->f:Ls0/z;

    .line 94
    .line 95
    if-eqz p3, :cond_2

    .line 96
    .line 97
    iget-wide v3, p3, Ls0/z;->e:J

    .line 98
    .line 99
    cmp-long v3, p1, v3

    .line 100
    .line 101
    if-nez v3, :cond_2

    .line 102
    .line 103
    iget-object p1, p3, Ls0/z;->b:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_2
    iget-object p3, p0, Ls0/B;->c:Ljava/util/ArrayDeque;

    .line 110
    .line 111
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_3

    .line 116
    .line 117
    new-instance p3, Ls0/z;

    .line 118
    .line 119
    invoke-direct {p3}, Ls0/z;-><init>()V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    check-cast p3, Ls0/z;

    .line 128
    .line 129
    :goto_1
    invoke-virtual {p3, p1, p2, v0}, Ls0/z;->init(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    iput-object p3, p0, Ls0/B;->f:Ls0/z;

    .line 136
    .line 137
    iget p1, p0, Ls0/B;->e:I

    .line 138
    .line 139
    if-eq p1, v2, :cond_4

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Ls0/B;->a(I)V

    .line 142
    .line 143
    .line 144
    :cond_4
    return-void

    .line 145
    :cond_5
    :goto_2
    iget-object v0, p0, Ls0/B;->a:Ls0/A;

    .line 146
    .line 147
    invoke-interface {v0, p1, p2, p3}, Ls0/A;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls0/B;->d:Ljava/util/PriorityQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ls0/B;->a(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public getMaxSize()I
    .locals 1

    .line 1
    iget v0, p0, Ls0/B;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public setMaxSize(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {v0}, LP3/v;->checkState(Z)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Ls0/B;->e:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ls0/B;->a(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
