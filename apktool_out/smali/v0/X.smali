.class public final Lv0/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/g0;


# instance fields
.field public final a:Landroidx/media3/common/util/LongArray;

.field public final b:Landroidx/media3/common/util/LongArray;

.field public c:J


# direct methods
.method public constructor <init>([J[JJ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    array-length v1, p2

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    move v0, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    invoke-static {v0}, LP3/v;->checkArgument(Z)V

    .line 14
    .line 15
    .line 16
    array-length v0, p2

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    aget-wide v1, p2, v2

    .line 20
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    cmp-long v1, v1, v4

    .line 24
    .line 25
    if-lez v1, :cond_1

    .line 26
    .line 27
    new-instance v1, Landroidx/media3/common/util/LongArray;

    .line 28
    .line 29
    add-int/2addr v0, v3

    .line 30
    invoke-direct {v1, v0}, Landroidx/media3/common/util/LongArray;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lv0/X;->a:Landroidx/media3/common/util/LongArray;

    .line 34
    .line 35
    new-instance v2, Landroidx/media3/common/util/LongArray;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Landroidx/media3/common/util/LongArray;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lv0/X;->b:Landroidx/media3/common/util/LongArray;

    .line 41
    .line 42
    invoke-virtual {v1, v4, v5}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v4, v5}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance v1, Landroidx/media3/common/util/LongArray;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Landroidx/media3/common/util/LongArray;-><init>(I)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lv0/X;->a:Landroidx/media3/common/util/LongArray;

    .line 55
    .line 56
    new-instance v1, Landroidx/media3/common/util/LongArray;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Landroidx/media3/common/util/LongArray;-><init>(I)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lv0/X;->b:Landroidx/media3/common/util/LongArray;

    .line 62
    .line 63
    :goto_1
    iget-object v0, p0, Lv0/X;->a:Landroidx/media3/common/util/LongArray;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/LongArray;->addAll([J)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lv0/X;->b:Landroidx/media3/common/util/LongArray;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/LongArray;->addAll([J)V

    .line 71
    .line 72
    .line 73
    iput-wide p3, p0, Lv0/X;->c:J

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public addSeekPoint(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lv0/X;->b:Landroidx/media3/common/util/LongArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/LongArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lv0/X;->a:Landroidx/media3/common/util/LongArray;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    cmp-long v1, p1, v3

    .line 14
    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v3, v4}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v2, p3, p4}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lv0/X;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Lv0/e0;
    .locals 9

    .line 1
    iget-object v0, p0, Lv0/X;->b:Landroidx/media3/common/util/LongArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/LongArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lv0/e0;

    .line 10
    .line 11
    sget-object p2, Lv0/h0;->c:Lv0/h0;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Lv0/e0;-><init>(Lv0/h0;)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor(Landroidx/media3/common/util/LongArray;JZZ)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    new-instance v3, Lv0/h0;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/LongArray;->get(I)J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    iget-object v6, p0, Lv0/X;->a:Landroidx/media3/common/util/LongArray;

    .line 29
    .line 30
    invoke-virtual {v6, v2}, Landroidx/media3/common/util/LongArray;->get(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide v7

    .line 34
    invoke-direct {v3, v4, v5, v7, v8}, Lv0/h0;-><init>(JJ)V

    .line 35
    .line 36
    .line 37
    iget-wide v4, v3, Lv0/h0;->a:J

    .line 38
    .line 39
    cmp-long p1, v4, p1

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/media3/common/util/LongArray;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    sub-int/2addr p1, v1

    .line 48
    if-ne v2, p1, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance p1, Lv0/h0;

    .line 52
    .line 53
    add-int/2addr v2, v1

    .line 54
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/LongArray;->get(I)J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    invoke-virtual {v6, v2}, Landroidx/media3/common/util/LongArray;->get(I)J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    invoke-direct {p1, v0, v1, v4, v5}, Lv0/h0;-><init>(JJ)V

    .line 63
    .line 64
    .line 65
    new-instance p2, Lv0/e0;

    .line 66
    .line 67
    invoke-direct {p2, v3, p1}, Lv0/e0;-><init>(Lv0/h0;Lv0/h0;)V

    .line 68
    .line 69
    .line 70
    return-object p2

    .line 71
    :cond_2
    :goto_0
    new-instance p1, Lv0/e0;

    .line 72
    .line 73
    invoke-direct {p1, v3}, Lv0/e0;-><init>(Lv0/h0;)V

    .line 74
    .line 75
    .line 76
    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lv0/X;->b:Landroidx/media3/common/util/LongArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/LongArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    return-wide p1

    .line 15
    :cond_0
    iget-object v1, p0, Lv0/X;->a:Landroidx/media3/common/util/LongArray;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v1, p1, p2, v2, v2}, Landroidx/media3/common/util/Util;->binarySearchFloor(Landroidx/media3/common/util/LongArray;JZZ)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/LongArray;->get(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
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
    iget-object v0, p0, Lv0/X;->b:Landroidx/media3/common/util/LongArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/LongArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

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

.method public isTimeUsInIndex(JJ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lv0/X;->b:Landroidx/media3/common/util/LongArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/LongArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/LongArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v3, 0x1

    .line 16
    sub-int/2addr v1, v3

    .line 17
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/LongArray;->get(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    sub-long/2addr p1, v0

    .line 22
    cmp-long p1, p1, p3

    .line 23
    .line 24
    if-gez p1, :cond_1

    .line 25
    .line 26
    return v3

    .line 27
    :cond_1
    return v2
.end method

.method public setDurationUs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lv0/X;->c:J

    .line 2
    .line 3
    return-void
.end method
