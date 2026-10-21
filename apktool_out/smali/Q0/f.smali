.class public final LQ0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LQ0/g;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LQ0/g;

    .line 5
    .line 6
    invoke-direct {v0}, LQ0/g;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LQ0/f;->a:LQ0/g;

    .line 10
    .line 11
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    const v1, 0xfe01

    .line 14
    .line 15
    .line 16
    new-array v1, v1, [B

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, LQ0/f;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    iput v0, p0, LQ0/f;->c:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LQ0/f;->d:I

    .line 3
    .line 4
    :cond_0
    iget v1, p0, LQ0/f;->d:I

    .line 5
    .line 6
    add-int v2, p1, v1

    .line 7
    .line 8
    iget-object v3, p0, LQ0/f;->a:LQ0/g;

    .line 9
    .line 10
    iget v4, v3, LQ0/g;->c:I

    .line 11
    .line 12
    if-ge v2, v4, :cond_1

    .line 13
    .line 14
    iget-object v2, v3, LQ0/g;->f:[I

    .line 15
    .line 16
    add-int/lit8 v3, v1, 0x1

    .line 17
    .line 18
    iput v3, p0, LQ0/f;->d:I

    .line 19
    .line 20
    add-int/2addr v1, p1

    .line 21
    aget v1, v2, v1

    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    const/16 v2, 0xff

    .line 25
    .line 26
    if-eq v1, v2, :cond_0

    .line 27
    .line 28
    :cond_1
    return v0
.end method

.method public getPageHeader()LQ0/g;
    .locals 1

    .line 1
    iget-object v0, p0, LQ0/f;->a:LQ0/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayload()Landroidx/media3/common/util/ParsableByteArray;
    .locals 1

    .line 1
    iget-object v0, p0, LQ0/f;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public populate(Lv0/D;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    :goto_0
    invoke-static {v2}, LP3/v;->checkState(Z)V

    .line 9
    .line 10
    .line 11
    iget-boolean v2, p0, LQ0/f;->e:Z

    .line 12
    .line 13
    iget-object v3, p0, LQ0/f;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iput-boolean v1, p0, LQ0/f;->e:Z

    .line 18
    .line 19
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_1
    iget-boolean v2, p0, LQ0/f;->e:Z

    .line 23
    .line 24
    if-nez v2, :cond_b

    .line 25
    .line 26
    iget v2, p0, LQ0/f;->c:I

    .line 27
    .line 28
    iget-object v4, p0, LQ0/f;->a:LQ0/g;

    .line 29
    .line 30
    if-gez v2, :cond_6

    .line 31
    .line 32
    invoke-virtual {v4, p1}, LQ0/g;->skipToNextPage(Lv0/D;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    invoke-virtual {v4, p1, v0}, LQ0/g;->populate(Lv0/D;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_2
    iget v2, v4, LQ0/g;->d:I

    .line 46
    .line 47
    iget v5, v4, LQ0/g;->a:I

    .line 48
    .line 49
    and-int/2addr v5, v0

    .line 50
    if-ne v5, v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, v1}, LQ0/f;->a(I)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    add-int/2addr v2, v5

    .line 63
    iget v5, p0, LQ0/f;->d:I

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move v5, v1

    .line 67
    :goto_2
    invoke-static {p1, v2}, Lv0/G;->skipFullyQuietly(Lv0/D;I)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_4

    .line 72
    .line 73
    return v1

    .line 74
    :cond_4
    iput v5, p0, LQ0/f;->c:I

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_5
    :goto_3
    return v1

    .line 78
    :cond_6
    :goto_4
    iget v2, p0, LQ0/f;->c:I

    .line 79
    .line 80
    invoke-virtual {p0, v2}, LQ0/f;->a(I)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iget v5, p0, LQ0/f;->c:I

    .line 85
    .line 86
    iget v6, p0, LQ0/f;->d:I

    .line 87
    .line 88
    add-int/2addr v5, v6

    .line 89
    if-lez v2, :cond_9

    .line 90
    .line 91
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    add-int/2addr v6, v2

    .line 96
    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->ensureCapacity(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    invoke-static {p1, v6, v7, v2}, Lv0/G;->readFullyQuietly(Lv0/D;[BII)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-nez v6, :cond_7

    .line 112
    .line 113
    return v1

    .line 114
    :cond_7
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    add-int/2addr v6, v2

    .line 119
    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 120
    .line 121
    .line 122
    iget-object v2, v4, LQ0/g;->f:[I

    .line 123
    .line 124
    add-int/lit8 v6, v5, -0x1

    .line 125
    .line 126
    aget v2, v2, v6

    .line 127
    .line 128
    const/16 v6, 0xff

    .line 129
    .line 130
    if-eq v2, v6, :cond_8

    .line 131
    .line 132
    move v2, v0

    .line 133
    goto :goto_5

    .line 134
    :cond_8
    move v2, v1

    .line 135
    :goto_5
    iput-boolean v2, p0, LQ0/f;->e:Z

    .line 136
    .line 137
    :cond_9
    iget v2, v4, LQ0/g;->c:I

    .line 138
    .line 139
    if-ne v5, v2, :cond_a

    .line 140
    .line 141
    const/4 v5, -0x1

    .line 142
    :cond_a
    iput v5, p0, LQ0/f;->c:I

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_b
    return v0
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, LQ0/f;->a:LQ0/g;

    .line 2
    .line 3
    invoke-virtual {v0}, LQ0/g;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LQ0/f;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, LQ0/f;->c:I

    .line 14
    .line 15
    iput-boolean v1, p0, LQ0/f;->e:Z

    .line 16
    .line 17
    return-void
.end method

.method public trimPayload()V
    .locals 4

    .line 1
    iget-object v0, p0, LQ0/f;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    array-length v1, v1

    .line 8
    const v2, 0xfe01

    .line 9
    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
