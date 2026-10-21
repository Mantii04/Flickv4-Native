.class public abstract LS0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LS0/i;ILandroidx/media3/common/util/Consumer;)V
    .locals 6

    .line 1
    invoke-interface {p0, p1}, LS0/i;->getEventTime(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v2

    .line 5
    invoke-interface {p0, v2, v3}, LS0/i;->getCues(J)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p0}, LS0/i;->getEventTimeCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    .line 24
    add-int/lit8 v0, p1, 0x1

    .line 25
    .line 26
    invoke-interface {p0, v0}, LS0/i;->getEventTime(I)J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    invoke-interface {p0, p1}, LS0/i;->getEventTime(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide p0

    .line 34
    sub-long/2addr v4, p0

    .line 35
    const-wide/16 p0, 0x0

    .line 36
    .line 37
    cmp-long p0, v4, p0

    .line 38
    .line 39
    if-lez p0, :cond_1

    .line 40
    .line 41
    new-instance v0, LS0/c;

    .line 42
    .line 43
    invoke-direct/range {v0 .. v5}, LS0/c;-><init>(Ljava/util/List;JJ)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p2, v0}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void

    .line 50
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public static toCuesWithTiming(LS0/i;LS0/r;Landroidx/media3/common/util/Consumer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LS0/i;",
            "LS0/r;",
            "Landroidx/media3/common/util/Consumer<",
            "LS0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p1, LS0/r;->a:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    move v4, v5

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p0, v0, v1}, LS0/i;->getNextEventTimeIndex(J)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v6, -0x1

    .line 20
    if-ne v4, v6, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, LS0/i;->getEventTimeCount()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    :cond_1
    if-lez v4, :cond_2

    .line 27
    .line 28
    add-int/lit8 v6, v4, -0x1

    .line 29
    .line 30
    invoke-interface {p0, v6}, LS0/i;->getEventTime(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide v6

    .line 34
    cmp-long v0, v6, v0

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    add-int/lit8 v4, v4, -0x1

    .line 39
    .line 40
    :cond_2
    :goto_0
    iget-wide v0, p1, LS0/r;->a:J

    .line 41
    .line 42
    cmp-long v2, v0, v2

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    invoke-interface {p0}, LS0/i;->getEventTimeCount()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ge v4, v2, :cond_3

    .line 51
    .line 52
    invoke-interface {p0, v0, v1}, LS0/i;->getCues(J)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-interface {p0, v4}, LS0/i;->getEventTime(I)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-nez v6, :cond_3

    .line 65
    .line 66
    iget-wide v8, p1, LS0/r;->a:J

    .line 67
    .line 68
    cmp-long v6, v8, v2

    .line 69
    .line 70
    if-gez v6, :cond_3

    .line 71
    .line 72
    new-instance v6, LS0/c;

    .line 73
    .line 74
    sub-long v10, v2, v8

    .line 75
    .line 76
    invoke-direct/range {v6 .. v11}, LS0/c;-><init>(Ljava/util/List;JJ)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p2, v6}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move v2, v5

    .line 85
    :goto_1
    move v3, v4

    .line 86
    :goto_2
    invoke-interface {p0}, LS0/i;->getEventTimeCount()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-ge v3, v6, :cond_4

    .line 91
    .line 92
    invoke-static {p0, v3, p2}, LS0/f;->a(LS0/i;ILandroidx/media3/common/util/Consumer;)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    iget-boolean p1, p1, LS0/r;->b:Z

    .line 99
    .line 100
    if-eqz p1, :cond_7

    .line 101
    .line 102
    if-eqz v2, :cond_5

    .line 103
    .line 104
    add-int/lit8 v4, v4, -0x1

    .line 105
    .line 106
    :cond_5
    :goto_3
    if-ge v5, v4, :cond_6

    .line 107
    .line 108
    invoke-static {p0, v5, p2}, LS0/f;->a(LS0/i;ILandroidx/media3/common/util/Consumer;)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v5, v5, 0x1

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_6
    if-eqz v2, :cond_7

    .line 115
    .line 116
    new-instance v6, LS0/c;

    .line 117
    .line 118
    invoke-interface {p0, v0, v1}, LS0/i;->getCues(J)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-interface {p0, v4}, LS0/i;->getEventTime(I)J

    .line 123
    .line 124
    .line 125
    move-result-wide v8

    .line 126
    invoke-interface {p0, v4}, LS0/i;->getEventTime(I)J

    .line 127
    .line 128
    .line 129
    move-result-wide p0

    .line 130
    sub-long v10, v0, p0

    .line 131
    .line 132
    invoke-direct/range {v6 .. v11}, LS0/c;-><init>(Ljava/util/List;JJ)V

    .line 133
    .line 134
    .line 135
    invoke-interface {p2, v6}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    return-void
.end method
