.class public final Lv0/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/g0;


# instance fields
.field public final a:Lv0/P;

.field public final b:J


# direct methods
.method public constructor <init>(Lv0/P;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv0/N;->a:Lv0/P;

    .line 5
    .line 6
    iput-wide p2, p0, Lv0/N;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lv0/N;->a:Lv0/P;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv0/P;->getDurationUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getSeekPoints(J)Lv0/e0;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, Lv0/N;->a:Lv0/P;

    .line 6
    .line 7
    iget-object v4, v3, Lv0/P;->k:Lv0/O;

    .line 8
    .line 9
    invoke-static {v4}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object v4, v3, Lv0/P;->k:Lv0/O;

    .line 13
    .line 14
    iget-object v5, v4, Lv0/O;->a:[J

    .line 15
    .line 16
    invoke-virtual {v3, v1, v2}, Lv0/P;->getSampleNumber(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v6

    .line 20
    const/4 v8, 0x1

    .line 21
    const/4 v9, 0x0

    .line 22
    invoke-static {v5, v6, v7, v8, v9}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const-wide/16 v9, 0x0

    .line 27
    .line 28
    const/4 v7, -0x1

    .line 29
    if-ne v6, v7, :cond_0

    .line 30
    .line 31
    move-wide v11, v9

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    aget-wide v11, v5, v6

    .line 34
    .line 35
    :goto_0
    iget-object v4, v4, Lv0/O;->b:[J

    .line 36
    .line 37
    if-ne v6, v7, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    aget-wide v9, v4, v6

    .line 41
    .line 42
    :goto_1
    const-wide/32 v13, 0xf4240

    .line 43
    .line 44
    .line 45
    mul-long/2addr v11, v13

    .line 46
    iget v7, v3, Lv0/P;->e:I

    .line 47
    .line 48
    move v15, v8

    .line 49
    move-wide/from16 v16, v9

    .line 50
    .line 51
    int-to-long v8, v7

    .line 52
    div-long/2addr v11, v8

    .line 53
    iget-wide v7, v0, Lv0/N;->b:J

    .line 54
    .line 55
    add-long v9, v7, v16

    .line 56
    .line 57
    move-wide/from16 v16, v13

    .line 58
    .line 59
    new-instance v13, Lv0/h0;

    .line 60
    .line 61
    invoke-direct {v13, v11, v12, v9, v10}, Lv0/h0;-><init>(JJ)V

    .line 62
    .line 63
    .line 64
    iget-wide v9, v13, Lv0/h0;->a:J

    .line 65
    .line 66
    cmp-long v1, v9, v1

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    array-length v1, v5

    .line 71
    sub-int/2addr v1, v15

    .line 72
    if-ne v6, v1, :cond_2

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    add-int/2addr v6, v15

    .line 76
    aget-wide v1, v5, v6

    .line 77
    .line 78
    aget-wide v5, v4, v6

    .line 79
    .line 80
    mul-long v1, v1, v16

    .line 81
    .line 82
    iget v3, v3, Lv0/P;->e:I

    .line 83
    .line 84
    int-to-long v3, v3

    .line 85
    div-long/2addr v1, v3

    .line 86
    add-long/2addr v7, v5

    .line 87
    new-instance v3, Lv0/h0;

    .line 88
    .line 89
    invoke-direct {v3, v1, v2, v7, v8}, Lv0/h0;-><init>(JJ)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lv0/e0;

    .line 93
    .line 94
    invoke-direct {v1, v13, v3}, Lv0/e0;-><init>(Lv0/h0;Lv0/h0;)V

    .line 95
    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_3
    :goto_2
    new-instance v1, Lv0/e0;

    .line 99
    .line 100
    invoke-direct {v1, v13}, Lv0/e0;-><init>(Lv0/h0;)V

    .line 101
    .line 102
    .line 103
    return-object v1
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
    const/4 v0, 0x1

    .line 2
    return v0
.end method
