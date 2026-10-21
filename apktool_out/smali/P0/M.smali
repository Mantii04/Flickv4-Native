.class public final LP0/M;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LP0/J;

.field public final b:I

.field public final c:[J

.field public final d:[I

.field public final e:I

.field public final f:[J

.field public final g:[I

.field public final h:[I

.field public final i:J

.field public final j:Z


# direct methods
.method public constructor <init>(LP0/J;[J[II[J[I[IZJI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p3

    .line 5
    array-length v1, p5

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
    array-length v1, p5

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    move v0, v3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, v2

    .line 23
    :goto_1
    invoke-static {v0}, LP3/v;->checkArgument(Z)V

    .line 24
    .line 25
    .line 26
    array-length v0, p6

    .line 27
    array-length v1, p5

    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    move v2, v3

    .line 31
    :cond_2
    invoke-static {v2}, LP3/v;->checkArgument(Z)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, LP0/M;->a:LP0/J;

    .line 35
    .line 36
    iput-object p2, p0, LP0/M;->c:[J

    .line 37
    .line 38
    iput-object p3, p0, LP0/M;->d:[I

    .line 39
    .line 40
    iput p4, p0, LP0/M;->e:I

    .line 41
    .line 42
    iput-object p5, p0, LP0/M;->f:[J

    .line 43
    .line 44
    iput-object p6, p0, LP0/M;->g:[I

    .line 45
    .line 46
    iput-object p7, p0, LP0/M;->h:[I

    .line 47
    .line 48
    iput-boolean p8, p0, LP0/M;->j:Z

    .line 49
    .line 50
    iput-wide p9, p0, LP0/M;->i:J

    .line 51
    .line 52
    iput p11, p0, LP0/M;->b:I

    .line 53
    .line 54
    array-length p1, p6

    .line 55
    if-lez p1, :cond_3

    .line 56
    .line 57
    array-length p1, p6

    .line 58
    sub-int/2addr p1, v3

    .line 59
    aget p2, p6, p1

    .line 60
    .line 61
    const/high16 p3, 0x20000000

    .line 62
    .line 63
    or-int/2addr p2, p3

    .line 64
    aput p2, p6, p1

    .line 65
    .line 66
    :cond_3
    return-void
.end method


# virtual methods
.method public getIndexOfEarlierOrEqualSynchronizationSample(J)I
    .locals 9

    .line 1
    iget-boolean v0, p0, LP0/M;->j:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, LP0/M;->f:[J

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v2, p1, p2, v3, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    iget-object v0, p0, LP0/M;->h:[I

    .line 15
    .line 16
    array-length v4, v0

    .line 17
    sub-int/2addr v4, v3

    .line 18
    const/4 v3, -0x1

    .line 19
    move v5, v3

    .line 20
    :goto_0
    if-gt v1, v4, :cond_2

    .line 21
    .line 22
    const/4 v6, 0x2

    .line 23
    invoke-static {v4, v1, v6, v1}, Lb/c;->c(IIII)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    aget v7, v0, v6

    .line 28
    .line 29
    aget-wide v7, v2, v7

    .line 30
    .line 31
    cmp-long v7, v7, p1

    .line 32
    .line 33
    if-gtz v7, :cond_1

    .line 34
    .line 35
    add-int/lit8 v1, v6, 0x1

    .line 36
    .line 37
    move v5, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    add-int/lit8 v6, v6, -0x1

    .line 40
    .line 41
    move v4, v6

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    if-ne v5, v3, :cond_3

    .line 44
    .line 45
    return v3

    .line 46
    :cond_3
    aget v1, v0, v5

    .line 47
    .line 48
    aget-wide v3, v2, v1

    .line 49
    .line 50
    cmp-long p1, v3, p1

    .line 51
    .line 52
    if-nez p1, :cond_4

    .line 53
    .line 54
    :goto_1
    if-lez v5, :cond_4

    .line 55
    .line 56
    add-int/lit8 p1, v5, -0x1

    .line 57
    .line 58
    aget p1, v0, p1

    .line 59
    .line 60
    aget-wide p1, v2, p1

    .line 61
    .line 62
    cmp-long p1, p1, v3

    .line 63
    .line 64
    if-nez p1, :cond_4

    .line 65
    .line 66
    add-int/lit8 v5, v5, -0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    aget p1, v0, v5

    .line 70
    .line 71
    return p1
.end method

.method public getIndexOfLaterOrEqualSynchronizationSample(J)I
    .locals 10

    .line 1
    iget-boolean v0, p0, LP0/M;->j:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, LP0/M;->f:[J

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v2, p1, p2, v3, v1}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    iget-object v0, p0, LP0/M;->h:[I

    .line 15
    .line 16
    array-length v4, v0

    .line 17
    sub-int/2addr v4, v3

    .line 18
    const/4 v5, -0x1

    .line 19
    move v6, v5

    .line 20
    :goto_0
    if-gt v1, v4, :cond_2

    .line 21
    .line 22
    const/4 v7, 0x2

    .line 23
    invoke-static {v4, v1, v7, v1}, Lb/c;->c(IIII)I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    aget v8, v0, v7

    .line 28
    .line 29
    aget-wide v8, v2, v8

    .line 30
    .line 31
    cmp-long v8, v8, p1

    .line 32
    .line 33
    if-ltz v8, :cond_1

    .line 34
    .line 35
    add-int/lit8 v4, v7, -0x1

    .line 36
    .line 37
    move v6, v7

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 40
    .line 41
    move v1, v7

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    if-ne v6, v5, :cond_3

    .line 44
    .line 45
    return v5

    .line 46
    :cond_3
    aget v1, v0, v6

    .line 47
    .line 48
    aget-wide v4, v2, v1

    .line 49
    .line 50
    cmp-long p1, v4, p1

    .line 51
    .line 52
    if-nez p1, :cond_4

    .line 53
    .line 54
    :goto_1
    array-length p1, v0

    .line 55
    sub-int/2addr p1, v3

    .line 56
    if-ge v6, p1, :cond_4

    .line 57
    .line 58
    add-int/lit8 p1, v6, 0x1

    .line 59
    .line 60
    aget p2, v0, p1

    .line 61
    .line 62
    aget-wide v7, v2, p2

    .line 63
    .line 64
    cmp-long p2, v7, v4

    .line 65
    .line 66
    if-nez p2, :cond_4

    .line 67
    .line 68
    move v6, p1

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    aget p1, v0, v6

    .line 71
    .line 72
    return p1
.end method
