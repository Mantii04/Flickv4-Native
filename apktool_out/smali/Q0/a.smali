.class public final LQ0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/g0;


# instance fields
.field public final synthetic a:LQ0/b;


# direct methods
.method public constructor <init>(LQ0/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LQ0/a;->a:LQ0/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 4

    .line 1
    iget-object v0, p0, LQ0/a;->a:LQ0/b;

    .line 2
    .line 3
    iget-object v1, v0, LQ0/b;->d:LQ0/l;

    .line 4
    .line 5
    iget-wide v2, v0, LQ0/b;->f:J

    .line 6
    .line 7
    invoke-virtual {v1, v2, v3}, LQ0/l;->convertGranuleToTime(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public getSeekPoints(J)Lv0/e0;
    .locals 11

    .line 1
    iget-object v0, p0, LQ0/a;->a:LQ0/b;

    .line 2
    .line 3
    iget-object v1, v0, LQ0/b;->d:LQ0/l;

    .line 4
    .line 5
    invoke-virtual {v1, p1, p2}, LQ0/l;->convertTimeToGranule(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iget-wide v3, v0, LQ0/b;->b:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-wide v5, v0, LQ0/b;->c:J

    .line 16
    .line 17
    iget-wide v7, v0, LQ0/b;->b:J

    .line 18
    .line 19
    sub-long/2addr v5, v7

    .line 20
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-wide v5, v0, LQ0/b;->f:J

    .line 29
    .line 30
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    add-long/2addr v1, v3

    .line 43
    const-wide/16 v3, 0x7530

    .line 44
    .line 45
    sub-long v5, v1, v3

    .line 46
    .line 47
    iget-wide v7, v0, LQ0/b;->b:J

    .line 48
    .line 49
    iget-wide v0, v0, LQ0/b;->c:J

    .line 50
    .line 51
    const-wide/16 v2, 0x1

    .line 52
    .line 53
    sub-long v9, v0, v2

    .line 54
    .line 55
    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    new-instance v2, Lv0/e0;

    .line 60
    .line 61
    new-instance v3, Lv0/h0;

    .line 62
    .line 63
    invoke-direct {v3, p1, p2, v0, v1}, Lv0/h0;-><init>(JJ)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, v3}, Lv0/e0;-><init>(Lv0/h0;)V

    .line 67
    .line 68
    .line 69
    return-object v2
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
