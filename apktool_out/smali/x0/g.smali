.class public final Lx0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lx0/f;

.field public final b:Lv0/r0;

.field public final c:I

.field public final d:I

.field public final e:J

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:J

.field public m:[J

.field public n:[I


# direct methods
.method public constructor <init>(ILx0/f;Lv0/r0;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lx0/g;->a:Lx0/f;

    .line 5
    .line 6
    invoke-virtual {p2}, Lx0/f;->getTrackType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :cond_1
    :goto_0
    invoke-static {v2}, LP3/v;->checkArgument(Z)V

    .line 19
    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    const/high16 v2, 0x63640000

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const/high16 v2, 0x62770000

    .line 27
    .line 28
    :goto_1
    div-int/lit8 v3, p1, 0xa

    .line 29
    .line 30
    rem-int/lit8 p1, p1, 0xa

    .line 31
    .line 32
    add-int/lit8 p1, p1, 0x30

    .line 33
    .line 34
    shl-int/lit8 p1, p1, 0x8

    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x30

    .line 37
    .line 38
    or-int/2addr p1, v3

    .line 39
    or-int/2addr v2, p1

    .line 40
    iput v2, p0, Lx0/g;->c:I

    .line 41
    .line 42
    invoke-virtual {p2}, Lx0/f;->getDurationUs()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    iput-wide v2, p0, Lx0/g;->e:J

    .line 47
    .line 48
    iput-object p3, p0, Lx0/g;->b:Lv0/r0;

    .line 49
    .line 50
    if-ne v0, v1, :cond_3

    .line 51
    .line 52
    const/high16 p3, 0x62640000

    .line 53
    .line 54
    or-int/2addr p1, p3

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const/4 p1, -0x1

    .line 57
    :goto_2
    iput p1, p0, Lx0/g;->d:I

    .line 58
    .line 59
    const-wide/16 v0, -0x1

    .line 60
    .line 61
    iput-wide v0, p0, Lx0/g;->l:J

    .line 62
    .line 63
    const/16 p1, 0x200

    .line 64
    .line 65
    new-array p3, p1, [J

    .line 66
    .line 67
    iput-object p3, p0, Lx0/g;->m:[J

    .line 68
    .line 69
    new-array p1, p1, [I

    .line 70
    .line 71
    iput-object p1, p0, Lx0/g;->n:[I

    .line 72
    .line 73
    iget p1, p2, Lx0/f;->d:I

    .line 74
    .line 75
    iput p1, p0, Lx0/g;->f:I

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final a(I)Lv0/h0;
    .locals 7

    .line 1
    new-instance v0, Lv0/h0;

    .line 2
    .line 3
    iget-object v1, p0, Lx0/g;->n:[I

    .line 4
    .line 5
    aget v1, v1, p1

    .line 6
    .line 7
    int-to-long v1, v1

    .line 8
    invoke-virtual {p0}, Lx0/g;->getFrameDurationUs()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    mul-long/2addr v3, v1

    .line 13
    iget-object v1, p0, Lx0/g;->m:[J

    .line 14
    .line 15
    aget-wide v5, v1, p1

    .line 16
    .line 17
    invoke-direct {v0, v3, v4, v5, v6}, Lv0/h0;-><init>(JJ)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public advanceCurrentChunk()V
    .locals 1

    .line 1
    iget v0, p0, Lx0/g;->i:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lx0/g;->i:I

    .line 6
    .line 7
    return-void
.end method

.method public appendIndexChunk(JZ)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lx0/g;->l:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-wide p1, p0, Lx0/g;->l:J

    .line 10
    .line 11
    :cond_0
    if-eqz p3, :cond_2

    .line 12
    .line 13
    iget p3, p0, Lx0/g;->k:I

    .line 14
    .line 15
    iget-object v0, p0, Lx0/g;->n:[I

    .line 16
    .line 17
    array-length v0, v0

    .line 18
    if-ne p3, v0, :cond_1

    .line 19
    .line 20
    iget-object p3, p0, Lx0/g;->m:[J

    .line 21
    .line 22
    array-length v0, p3

    .line 23
    mul-int/lit8 v0, v0, 0x3

    .line 24
    .line 25
    div-int/lit8 v0, v0, 0x2

    .line 26
    .line 27
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    iput-object p3, p0, Lx0/g;->m:[J

    .line 32
    .line 33
    iget-object p3, p0, Lx0/g;->n:[I

    .line 34
    .line 35
    array-length v0, p3

    .line 36
    mul-int/lit8 v0, v0, 0x3

    .line 37
    .line 38
    div-int/lit8 v0, v0, 0x2

    .line 39
    .line 40
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iput-object p3, p0, Lx0/g;->n:[I

    .line 45
    .line 46
    :cond_1
    iget-object p3, p0, Lx0/g;->m:[J

    .line 47
    .line 48
    iget v0, p0, Lx0/g;->k:I

    .line 49
    .line 50
    aput-wide p1, p3, v0

    .line 51
    .line 52
    iget-object p1, p0, Lx0/g;->n:[I

    .line 53
    .line 54
    iget p2, p0, Lx0/g;->j:I

    .line 55
    .line 56
    aput p2, p1, v0

    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    iput v0, p0, Lx0/g;->k:I

    .line 61
    .line 62
    :cond_2
    iget p1, p0, Lx0/g;->j:I

    .line 63
    .line 64
    add-int/lit8 p1, p1, 0x1

    .line 65
    .line 66
    iput p1, p0, Lx0/g;->j:I

    .line 67
    .line 68
    return-void
.end method

.method public commitIndex()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx0/g;->m:[J

    .line 2
    .line 3
    iget v1, p0, Lx0/g;->k:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lx0/g;->m:[J

    .line 10
    .line 11
    iget-object v0, p0, Lx0/g;->n:[I

    .line 12
    .line 13
    iget v1, p0, Lx0/g;->k:I

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lx0/g;->n:[I

    .line 20
    .line 21
    invoke-virtual {p0}, Lx0/g;->isAudio()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lx0/g;->a:Lx0/f;

    .line 28
    .line 29
    iget v0, v0, Lx0/f;->f:I

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget v0, p0, Lx0/g;->k:I

    .line 34
    .line 35
    if-lez v0, :cond_0

    .line 36
    .line 37
    iput v0, p0, Lx0/g;->f:I

    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public getCurrentChunkTimestampUs()J
    .locals 5

    .line 1
    iget v0, p0, Lx0/g;->i:I

    .line 2
    .line 3
    iget-wide v1, p0, Lx0/g;->e:J

    .line 4
    .line 5
    int-to-long v3, v0

    .line 6
    mul-long/2addr v1, v3

    .line 7
    iget v0, p0, Lx0/g;->f:I

    .line 8
    .line 9
    int-to-long v3, v0

    .line 10
    div-long/2addr v1, v3

    .line 11
    return-wide v1
.end method

.method public getFrameDurationUs()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lx0/g;->e:J

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    int-to-long v2, v2

    .line 5
    mul-long/2addr v0, v2

    .line 6
    iget v2, p0, Lx0/g;->f:I

    .line 7
    .line 8
    int-to-long v2, v2

    .line 9
    div-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public getSeekPoints(J)Lv0/e0;
    .locals 4

    .line 1
    iget v0, p0, Lx0/g;->k:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Lv0/e0;

    .line 6
    .line 7
    new-instance p2, Lv0/h0;

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iget-wide v2, p0, Lx0/g;->l:J

    .line 12
    .line 13
    invoke-direct {p2, v0, v1, v2, v3}, Lv0/h0;-><init>(JJ)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2}, Lv0/e0;-><init>(Lv0/h0;)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lx0/g;->getFrameDurationUs()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    div-long/2addr p1, v0

    .line 25
    long-to-int p1, p1

    .line 26
    iget-object p2, p0, Lx0/g;->n:[I

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-static {p2, p1, v0, v0}, Landroidx/media3/common/util/Util;->binarySearchFloor([IIZZ)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget-object v1, p0, Lx0/g;->n:[I

    .line 34
    .line 35
    aget v1, v1, p2

    .line 36
    .line 37
    if-ne v1, p1, :cond_1

    .line 38
    .line 39
    new-instance p1, Lv0/e0;

    .line 40
    .line 41
    invoke-virtual {p0, p2}, Lx0/g;->a(I)Lv0/h0;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p1, p2}, Lv0/e0;-><init>(Lv0/h0;)V

    .line 46
    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_1
    invoke-virtual {p0, p2}, Lx0/g;->a(I)Lv0/h0;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    add-int/2addr p2, v0

    .line 54
    iget-object v0, p0, Lx0/g;->m:[J

    .line 55
    .line 56
    array-length v0, v0

    .line 57
    if-ge p2, v0, :cond_2

    .line 58
    .line 59
    new-instance v0, Lv0/e0;

    .line 60
    .line 61
    invoke-virtual {p0, p2}, Lx0/g;->a(I)Lv0/h0;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-direct {v0, p1, p2}, Lv0/e0;-><init>(Lv0/h0;Lv0/h0;)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_2
    new-instance p2, Lv0/e0;

    .line 70
    .line 71
    invoke-direct {p2, p1}, Lv0/e0;-><init>(Lv0/h0;)V

    .line 72
    .line 73
    .line 74
    return-object p2
.end method

.method public handlesChunkId(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lx0/g;->c:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lx0/g;->d:I

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    return p1
.end method

.method public isAudio()Z
    .locals 2

    .line 1
    iget v0, p0, Lx0/g;->c:I

    .line 2
    .line 3
    const/high16 v1, 0x62770000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isCurrentFrameAKeyFrame()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lx0/g;->n:[I

    .line 2
    .line 3
    iget v1, p0, Lx0/g;->i:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public onChunkData(Lv0/D;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lx0/g;->h:I

    .line 2
    .line 3
    iget-object v1, p0, Lx0/g;->b:Lv0/r0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v1, p1, v0, v2}, Lv0/r0;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    sub-int/2addr v0, p1

    .line 11
    iput v0, p0, Lx0/g;->h:I

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    :cond_0
    if-eqz v2, :cond_2

    .line 17
    .line 18
    iget p1, p0, Lx0/g;->g:I

    .line 19
    .line 20
    if-lez p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lx0/g;->getCurrentChunkTimestampUs()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    invoke-virtual {p0}, Lx0/g;->isCurrentFrameAKeyFrame()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    iget v7, p0, Lx0/g;->g:I

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    iget-object v3, p0, Lx0/g;->b:Lv0/r0;

    .line 35
    .line 36
    invoke-interface/range {v3 .. v9}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Lx0/g;->advanceCurrentChunk()V

    .line 40
    .line 41
    .line 42
    :cond_2
    return v2
.end method

.method public onChunkStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx0/g;->g:I

    .line 2
    .line 3
    iput p1, p0, Lx0/g;->h:I

    .line 4
    .line 5
    return-void
.end method

.method public seekToPosition(J)V
    .locals 2

    .line 1
    iget v0, p0, Lx0/g;->k:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lx0/g;->i:I

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lx0/g;->m:[J

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object p2, p0, Lx0/g;->n:[I

    .line 17
    .line 18
    aget p1, p2, p1

    .line 19
    .line 20
    iput p1, p0, Lx0/g;->i:I

    .line 21
    .line 22
    return-void
.end method
