.class public final LO0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/i;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:Lv0/X;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 12

    .line 1
    move-wide v0, p3

    .line 2
    move-wide/from16 v2, p5

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v6, Lv0/X;

    .line 8
    .line 9
    const/4 v7, 0x1

    .line 10
    new-array v8, v7, [J

    .line 11
    .line 12
    const/4 v9, 0x0

    .line 13
    aput-wide v0, v8, v9

    .line 14
    .line 15
    const-wide/16 v10, 0x0

    .line 16
    .line 17
    new-array v7, v7, [J

    .line 18
    .line 19
    aput-wide v10, v7, v9

    .line 20
    .line 21
    invoke-direct {v6, v8, v7, p1, p2}, Lv0/X;-><init>([J[JJ)V

    .line 22
    .line 23
    .line 24
    iput-object v6, p0, LO0/b;->d:Lv0/X;

    .line 25
    .line 26
    iput-wide v0, p0, LO0/b;->a:J

    .line 27
    .line 28
    iput-wide v2, p0, LO0/b;->b:J

    .line 29
    .line 30
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    cmp-long v6, p1, v6

    .line 36
    .line 37
    const v7, -0x7fffffff

    .line 38
    .line 39
    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    sub-long/2addr v0, v2

    .line 43
    const-wide/16 v2, 0x8

    .line 44
    .line 45
    sget-object v6, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 46
    .line 47
    move-wide v4, p1

    .line 48
    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    cmp-long v2, v0, v10

    .line 53
    .line 54
    if-lez v2, :cond_0

    .line 55
    .line 56
    const-wide/32 v2, 0x7fffffff

    .line 57
    .line 58
    .line 59
    cmp-long v2, v0, v2

    .line 60
    .line 61
    if-gtz v2, :cond_0

    .line 62
    .line 63
    long-to-int v7, v0

    .line 64
    :cond_0
    iput v7, p0, LO0/b;->c:I

    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    iput v7, p0, LO0/b;->c:I

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public getAverageBitrate()I
    .locals 1

    .line 1
    iget v0, p0, LO0/b;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getDataEndPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, LO0/b;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDataStartPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, LO0/b;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 1
    iget-object v0, p0, LO0/b;->d:Lv0/X;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv0/X;->getDurationUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getSeekPoints(J)Lv0/e0;
    .locals 1

    .line 1
    iget-object v0, p0, LO0/b;->d:Lv0/X;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lv0/X;->getSeekPoints(J)Lv0/e0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 1

    .line 1
    iget-object v0, p0, LO0/b;->d:Lv0/X;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lv0/X;->getTimeUs(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
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
    iget-object v0, p0, LO0/b;->d:Lv0/X;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv0/X;->isSeekable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isTimeUsInIndex(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, LO0/b;->d:Lv0/X;

    .line 2
    .line 3
    const-wide/32 v1, 0x186a0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, v1, v2}, Lv0/X;->isTimeUsInIndex(JJ)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public maybeAddSeekPoint(JJ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, LO0/b;->isTimeUsInIndex(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, LO0/b;->d:Lv0/X;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3, p4}, Lv0/X;->addSeekPoint(JJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
