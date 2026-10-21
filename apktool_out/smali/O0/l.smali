.class public final LO0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/i;


# instance fields
.field public final a:J

.field public final b:I

.field public final c:J

.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:[J


# direct methods
.method public constructor <init>(JIJIJ[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, LO0/l;->a:J

    .line 5
    .line 6
    iput p3, p0, LO0/l;->b:I

    .line 7
    .line 8
    iput-wide p4, p0, LO0/l;->c:J

    .line 9
    .line 10
    iput p6, p0, LO0/l;->d:I

    .line 11
    .line 12
    iput-wide p7, p0, LO0/l;->e:J

    .line 13
    .line 14
    iput-object p9, p0, LO0/l;->g:[J

    .line 15
    .line 16
    const-wide/16 p3, -0x1

    .line 17
    .line 18
    cmp-long p5, p7, p3

    .line 19
    .line 20
    if-nez p5, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    add-long p3, p1, p7

    .line 24
    .line 25
    :goto_0
    iput-wide p3, p0, LO0/l;->f:J

    .line 26
    .line 27
    return-void
.end method

.method public static create(LO0/k;J)LO0/l;
    .locals 10

    .line 1
    invoke-virtual {p0}, LO0/k;->computeDurationUs()J

    .line 2
    .line 3
    .line 4
    move-result-wide v4

    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v0, v4, v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, LO0/l;

    .line 17
    .line 18
    iget-object v1, p0, LO0/k;->a:Lv0/Y;

    .line 19
    .line 20
    iget v3, v1, Lv0/Y;->c:I

    .line 21
    .line 22
    iget v6, v1, Lv0/Y;->f:I

    .line 23
    .line 24
    iget-wide v7, p0, LO0/k;->c:J

    .line 25
    .line 26
    iget-object v9, p0, LO0/k;->g:[J

    .line 27
    .line 28
    move-wide v1, p1

    .line 29
    invoke-direct/range {v0 .. v9}, LO0/l;-><init>(JIJIJ[J)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method


# virtual methods
.method public getAverageBitrate()I
    .locals 1

    .line 1
    iget v0, p0, LO0/l;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getDataEndPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, LO0/l;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDataStartPosition()J
    .locals 4

    .line 1
    iget v0, p0, LO0/l;->b:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    iget-wide v2, p0, LO0/l;->a:J

    .line 5
    .line 6
    add-long/2addr v2, v0

    .line 7
    return-wide v2
.end method

.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, LO0/l;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Lv0/e0;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, LO0/l;->isSeekable()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, v0, LO0/l;->b:I

    .line 8
    .line 9
    iget-wide v3, v0, LO0/l;->a:J

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lv0/e0;

    .line 14
    .line 15
    new-instance v5, Lv0/h0;

    .line 16
    .line 17
    int-to-long v6, v2

    .line 18
    add-long/2addr v3, v6

    .line 19
    const-wide/16 v6, 0x0

    .line 20
    .line 21
    invoke-direct {v5, v6, v7, v3, v4}, Lv0/h0;-><init>(JJ)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v5}, Lv0/e0;-><init>(Lv0/h0;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_0
    const-wide/16 v10, 0x0

    .line 29
    .line 30
    iget-wide v12, v0, LO0/l;->c:J

    .line 31
    .line 32
    move-wide/from16 v8, p1

    .line 33
    .line 34
    invoke-static/range {v8 .. v13}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    long-to-double v7, v5

    .line 39
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    .line 40
    .line 41
    mul-double/2addr v7, v9

    .line 42
    iget-wide v11, v0, LO0/l;->c:J

    .line 43
    .line 44
    long-to-double v11, v11

    .line 45
    div-double/2addr v7, v11

    .line 46
    const-wide/16 v11, 0x0

    .line 47
    .line 48
    cmpg-double v1, v7, v11

    .line 49
    .line 50
    if-gtz v1, :cond_1

    .line 51
    .line 52
    const-wide/high16 p1, 0x4070000000000000L    # 256.0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    cmpl-double v1, v7, v9

    .line 56
    .line 57
    if-ltz v1, :cond_2

    .line 58
    .line 59
    const-wide/high16 p1, 0x4070000000000000L    # 256.0

    .line 60
    .line 61
    const-wide/high16 v11, 0x4070000000000000L    # 256.0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    double-to-int v1, v7

    .line 65
    iget-object v9, v0, LO0/l;->g:[J

    .line 66
    .line 67
    invoke-static {v9}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    check-cast v9, [J

    .line 72
    .line 73
    aget-wide v10, v9, v1

    .line 74
    .line 75
    long-to-double v10, v10

    .line 76
    const/16 v12, 0x63

    .line 77
    .line 78
    if-ne v1, v12, :cond_3

    .line 79
    .line 80
    const-wide/high16 p1, 0x4070000000000000L    # 256.0

    .line 81
    .line 82
    const-wide/high16 v12, 0x4070000000000000L    # 256.0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    add-int/lit8 v12, v1, 0x1

    .line 86
    .line 87
    const-wide/high16 p1, 0x4070000000000000L    # 256.0

    .line 88
    .line 89
    aget-wide v13, v9, v12

    .line 90
    .line 91
    long-to-double v12, v13

    .line 92
    :goto_0
    int-to-double v14, v1

    .line 93
    sub-double/2addr v7, v14

    .line 94
    sub-double/2addr v12, v10

    .line 95
    mul-double/2addr v12, v7

    .line 96
    add-double v11, v12, v10

    .line 97
    .line 98
    :goto_1
    div-double v11, v11, p1

    .line 99
    .line 100
    iget-wide v7, v0, LO0/l;->e:J

    .line 101
    .line 102
    long-to-double v9, v7

    .line 103
    mul-double/2addr v11, v9

    .line 104
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    .line 105
    .line 106
    .line 107
    move-result-wide v13

    .line 108
    int-to-long v1, v2

    .line 109
    const-wide/16 v9, 0x1

    .line 110
    .line 111
    sub-long v17, v7, v9

    .line 112
    .line 113
    move-wide v15, v1

    .line 114
    invoke-static/range {v13 .. v18}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    .line 115
    .line 116
    .line 117
    move-result-wide v1

    .line 118
    new-instance v7, Lv0/e0;

    .line 119
    .line 120
    new-instance v8, Lv0/h0;

    .line 121
    .line 122
    add-long/2addr v3, v1

    .line 123
    invoke-direct {v8, v5, v6, v3, v4}, Lv0/h0;-><init>(JJ)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v7, v8}, Lv0/e0;-><init>(Lv0/h0;)V

    .line 127
    .line 128
    .line 129
    return-object v7
.end method

.method public getTimeUs(J)J
    .locals 13

    .line 1
    iget-wide v0, p0, LO0/l;->a:J

    .line 2
    .line 3
    sub-long/2addr p1, v0

    .line 4
    invoke-virtual {p0}, LO0/l;->isSeekable()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget v0, p0, LO0/l;->b:I

    .line 11
    .line 12
    int-to-long v0, v0

    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object v0, p0, LO0/l;->g:[J

    .line 19
    .line 20
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, [J

    .line 25
    .line 26
    long-to-double p1, p1

    .line 27
    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    .line 28
    .line 29
    mul-double/2addr p1, v1

    .line 30
    iget-wide v1, p0, LO0/l;->e:J

    .line 31
    .line 32
    long-to-double v1, v1

    .line 33
    div-double/2addr p1, v1

    .line 34
    double-to-long v1, p1

    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-static {v0, v1, v2, v3, v3}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    int-to-long v2, v1

    .line 41
    iget-wide v4, p0, LO0/l;->c:J

    .line 42
    .line 43
    mul-long/2addr v2, v4

    .line 44
    const-wide/16 v6, 0x64

    .line 45
    .line 46
    div-long/2addr v2, v6

    .line 47
    aget-wide v8, v0, v1

    .line 48
    .line 49
    add-int/lit8 v10, v1, 0x1

    .line 50
    .line 51
    int-to-long v11, v10

    .line 52
    mul-long/2addr v4, v11

    .line 53
    div-long/2addr v4, v6

    .line 54
    const/16 v6, 0x63

    .line 55
    .line 56
    if-ne v1, v6, :cond_1

    .line 57
    .line 58
    const-wide/16 v0, 0x100

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    aget-wide v6, v0, v10

    .line 62
    .line 63
    move-wide v0, v6

    .line 64
    :goto_0
    cmp-long v6, v8, v0

    .line 65
    .line 66
    if-nez v6, :cond_2

    .line 67
    .line 68
    const-wide/16 p1, 0x0

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    long-to-double v6, v8

    .line 72
    sub-double/2addr p1, v6

    .line 73
    sub-long/2addr v0, v8

    .line 74
    long-to-double v0, v0

    .line 75
    div-double/2addr p1, v0

    .line 76
    :goto_1
    sub-long/2addr v4, v2

    .line 77
    long-to-double v0, v4

    .line 78
    mul-double/2addr p1, v0

    .line 79
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 80
    .line 81
    .line 82
    move-result-wide p1

    .line 83
    add-long/2addr p1, v2

    .line 84
    return-wide p1

    .line 85
    :cond_3
    :goto_2
    const-wide/16 p1, 0x0

    .line 86
    .line 87
    return-wide p1
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
    iget-object v0, p0, LO0/l;->g:[J

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method
