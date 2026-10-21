.class public final LN0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/o0;


# instance fields
.field public final a:Lv0/r;

.field public final b:Landroid/util/SparseArray;

.field public final c:J

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;JIJJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "LN0/e;",
            ">;>;JIJJ)V"
        }
    .end annotation

    .line 1
    move/from16 v2, p4

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, LN0/f;->b:Landroid/util/SparseArray;

    .line 7
    .line 8
    iput-wide p2, p0, LN0/f;->c:J

    .line 9
    .line 10
    iput v2, p0, LN0/f;->d:I

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/util/List;

    .line 17
    .line 18
    if-eqz p1, :cond_5

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    new-array v3, v2, [I

    .line 33
    .line 34
    new-array v4, v2, [J

    .line 35
    .line 36
    new-array v5, v2, [J

    .line 37
    .line 38
    new-array v6, v2, [J

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    move v8, v7

    .line 42
    :goto_0
    if-ge v8, v2, :cond_1

    .line 43
    .line 44
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    check-cast v9, LN0/e;

    .line 49
    .line 50
    iget-wide v10, v9, LN0/e;->b:J

    .line 51
    .line 52
    aput-wide v10, v6, v8

    .line 53
    .line 54
    iget-wide v9, v9, LN0/e;->e:J

    .line 55
    .line 56
    aput-wide v9, v4, v8

    .line 57
    .line 58
    add-int/lit8 v8, v8, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    :goto_1
    add-int/lit8 p1, v2, -0x1

    .line 62
    .line 63
    if-ge v7, p1, :cond_2

    .line 64
    .line 65
    add-int/lit8 p1, v7, 0x1

    .line 66
    .line 67
    aget-wide v8, v4, p1

    .line 68
    .line 69
    aget-wide v10, v4, v7

    .line 70
    .line 71
    sub-long/2addr v8, v10

    .line 72
    long-to-int v8, v8

    .line 73
    aput v8, v3, v7

    .line 74
    .line 75
    aget-wide v8, v6, p1

    .line 76
    .line 77
    aget-wide v10, v6, v7

    .line 78
    .line 79
    sub-long/2addr v8, v10

    .line 80
    aput-wide v8, v5, v7

    .line 81
    .line 82
    move v7, p1

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move v2, p1

    .line 85
    :goto_2
    if-lez v2, :cond_3

    .line 86
    .line 87
    aget-wide v7, v6, v2

    .line 88
    .line 89
    cmp-long v7, v7, p2

    .line 90
    .line 91
    if-ltz v7, :cond_3

    .line 92
    .line 93
    add-int/lit8 v2, v2, -0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    add-long v7, p5, p7

    .line 97
    .line 98
    aget-wide v9, v4, v2

    .line 99
    .line 100
    sub-long/2addr v7, v9

    .line 101
    long-to-int v7, v7

    .line 102
    aput v7, v3, v2

    .line 103
    .line 104
    aget-wide v7, v6, v2

    .line 105
    .line 106
    sub-long v0, p2, v7

    .line 107
    .line 108
    aput-wide v0, v5, v2

    .line 109
    .line 110
    if-ge v2, p1, :cond_4

    .line 111
    .line 112
    const-string p1, "MatroskaExtractor"

    .line 113
    .line 114
    const-string v0, "Discarding trailing cue points with timestamps greater than total duration."

    .line 115
    .line 116
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    :cond_4
    new-instance p1, Lv0/r;

    .line 138
    .line 139
    invoke-direct {p1, v3, v4, v5, v6}, Lv0/r;-><init>([I[J[J[J)V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_5
    :goto_3
    const/4 p1, 0x0

    .line 144
    :goto_4
    iput-object p1, p0, LN0/f;->a:Lv0/r;

    .line 145
    .line 146
    return-void
.end method


# virtual methods
.method public getChunkIndex()Lv0/r;
    .locals 1

    .line 1
    iget-object v0, p0, LN0/f;->a:Lv0/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, LN0/f;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Lv0/e0;
    .locals 1

    .line 1
    iget-object v0, p0, LN0/f;->a:Lv0/r;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lv0/r;->getSeekPoints(J)Lv0/e0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lv0/e0;

    sget-object p2, Lv0/h0;->c:Lv0/h0;

    invoke-direct {p1, p2}, Lv0/e0;-><init>(Lv0/h0;)V

    return-object p1
.end method

.method public getSeekPoints(JI)Lv0/e0;
    .locals 9

    .line 4
    iget-object v0, p0, LN0/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, LN0/f;->d:I

    if-eq p3, v2, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Ljava/util/List;

    :cond_1
    if-eqz v1, :cond_5

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    new-instance v2, LN0/e;

    const-wide/16 v7, -0x1

    const-wide/16 v5, -0x1

    move-wide v3, p1

    invoke-direct/range {v2 .. v8}, LN0/e;-><init>(JJJ)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 9
    invoke-static {v1, v2, p1, p2}, Landroidx/media3/common/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_4

    .line 10
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LN0/e;

    .line 11
    new-instance v0, Lv0/h0;

    .line 12
    iget-wide v5, p2, LN0/e;->b:J

    .line 13
    iget-wide v7, p2, LN0/e;->e:J

    invoke-direct {v0, v5, v6, v7, v8}, Lv0/h0;-><init>(JJ)V

    .line 14
    iget-wide v5, p2, LN0/e;->b:J

    cmp-long p2, v5, v3

    if-gez p2, :cond_3

    add-int/2addr p3, p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_3

    .line 15
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LN0/e;

    .line 16
    new-instance p2, Lv0/h0;

    .line 17
    iget-wide v1, p1, LN0/e;->b:J

    .line 18
    iget-wide v3, p1, LN0/e;->e:J

    invoke-direct {p2, v1, v2, v3, v4}, Lv0/h0;-><init>(JJ)V

    .line 19
    new-instance p1, Lv0/e0;

    invoke-direct {p1, v0, p2}, Lv0/e0;-><init>(Lv0/h0;Lv0/h0;)V

    return-object p1

    .line 20
    :cond_3
    new-instance p1, Lv0/e0;

    invoke-direct {p1, v0}, Lv0/e0;-><init>(Lv0/h0;)V

    return-object p1

    .line 21
    :cond_4
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LN0/e;

    .line 22
    new-instance p2, Lv0/e0;

    new-instance p3, Lv0/h0;

    .line 23
    iget-wide v0, p1, LN0/e;->b:J

    .line 24
    iget-wide v2, p1, LN0/e;->e:J

    invoke-direct {p3, v0, v1, v2, v3}, Lv0/h0;-><init>(JJ)V

    invoke-direct {p2, p3}, Lv0/e0;-><init>(Lv0/h0;)V

    return-object p2

    .line 25
    :cond_5
    :goto_0
    new-instance p1, Lv0/e0;

    sget-object p2, Lv0/h0;->c:Lv0/h0;

    invoke-direct {p1, p2}, Lv0/e0;-><init>(Lv0/h0;)V

    return-object p1
.end method

.method public final synthetic isEstimated()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/d0;->a(Lv0/g0;)Z

    move-result v0

    return v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    iget v0, p0, LN0/f;->d:I

    invoke-virtual {p0, v0}, LN0/f;->isSeekable(I)Z

    move-result v0

    return v0
.end method

.method public isSeekable(I)Z
    .locals 1

    .line 2
    iget-object v0, p0, LN0/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
