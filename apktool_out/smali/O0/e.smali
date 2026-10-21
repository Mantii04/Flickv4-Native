.class public final LO0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# static fields
.field public static final w:LJ0/g;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public final d:Lv0/Y;

.field public final e:Lv0/U;

.field public final f:Lv0/W;

.field public final g:Lv0/y;

.field public h:Lv0/F;

.field public i:Lv0/r0;

.field public j:Lv0/r0;

.field public k:I

.field public l:Landroidx/media3/common/Metadata;

.field public m:Landroidx/media3/common/Metadata;

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:I

.field public s:LO0/i;

.field public t:Z

.field public u:Z

.field public v:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJ0/g;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, LJ0/g;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LO0/e;->w:LJ0/g;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LO0/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-direct {p0, p1, v0, v1}, LO0/e;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    .line 4
    :cond_0
    iput p1, p0, LO0/e;->a:I

    .line 5
    iput-wide p2, p0, LO0/e;->b:J

    .line 6
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, LO0/e;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 7
    new-instance p1, Lv0/Y;

    invoke-direct {p1}, Lv0/Y;-><init>()V

    iput-object p1, p0, LO0/e;->d:Lv0/Y;

    .line 8
    new-instance p1, Lv0/U;

    invoke-direct {p1}, Lv0/U;-><init>()V

    iput-object p1, p0, LO0/e;->e:Lv0/U;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, LO0/e;->n:J

    .line 10
    new-instance p1, Lv0/W;

    invoke-direct {p1}, Lv0/W;-><init>()V

    iput-object p1, p0, LO0/e;->f:Lv0/W;

    .line 11
    new-instance p1, Lv0/y;

    invoke-direct {p1}, Lv0/y;-><init>()V

    iput-object p1, p0, LO0/e;->g:Lv0/y;

    .line 12
    iput-object p1, p0, LO0/e;->j:Lv0/r0;

    const-wide/16 p1, -0x1

    .line 13
    iput-wide p1, p0, LO0/e;->q:J

    return-void
.end method


# virtual methods
.method public final a(Lv0/D;Z)LO0/a;
    .locals 9

    .line 1
    iget-object v0, p0, LO0/e;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x4

    .line 9
    invoke-interface {p1, v1, v2, v3}, Lv0/D;->peekFully([BII)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, LO0/e;->d:Lv0/Y;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {v1, v0}, Lv0/Y;->setForHeaderData(I)Z

    .line 22
    .line 23
    .line 24
    new-instance v2, LO0/a;

    .line 25
    .line 26
    invoke-interface {p1}, Lv0/D;->getLength()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    iget-object v7, p0, LO0/e;->d:Lv0/Y;

    .line 35
    .line 36
    move v8, p2

    .line 37
    invoke-direct/range {v2 .. v8}, LO0/a;-><init>(JJLv0/Y;Z)V

    .line 38
    .line 39
    .line 40
    return-object v2
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, LO0/e;->s:LO0/i;

    .line 2
    .line 3
    instance-of v1, v0, LO0/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lv0/g0;->isSeekable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, LO0/e;->q:J

    .line 14
    .line 15
    const-wide/16 v2, -0x1

    .line 16
    .line 17
    cmp-long v2, v0, v2

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, LO0/e;->s:LO0/i;

    .line 22
    .line 23
    invoke-interface {v2}, LO0/i;->getDataEndPosition()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, LO0/e;->s:LO0/i;

    .line 32
    .line 33
    check-cast v0, LO0/a;

    .line 34
    .line 35
    iget-wide v1, p0, LO0/e;->q:J

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, LO0/a;->copyWithNewDataEndPosition(J)LO0/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, LO0/e;->s:LO0/i;

    .line 42
    .line 43
    iget-object v0, p0, LO0/e;->h:Lv0/F;

    .line 44
    .line 45
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lv0/F;

    .line 50
    .line 51
    iget-object v1, p0, LO0/e;->s:LO0/i;

    .line 52
    .line 53
    invoke-interface {v0, v1}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, LO0/e;->i:Lv0/r0;

    .line 57
    .line 58
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lv0/r0;

    .line 63
    .line 64
    iget-object v1, p0, LO0/e;->s:LO0/i;

    .line 65
    .line 66
    invoke-interface {v1}, Lv0/g0;->getDurationUs()J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    invoke-interface {v0, v1, v2}, Lv0/r0;->durationUs(J)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method public final c(Lv0/D;)Z
    .locals 8

    .line 1
    iget-object v0, p0, LO0/e;->s:LO0/i;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, LO0/i;->getDataEndPosition()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const-wide/16 v4, -0x1

    .line 11
    .line 12
    cmp-long v0, v2, v4

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Lv0/D;->getPeekPosition()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const-wide/16 v6, 0x4

    .line 21
    .line 22
    sub-long/2addr v2, v6

    .line 23
    cmp-long v0, v4, v2

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    :try_start_0
    iget-object v0, p0, LO0/e;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x4

    .line 36
    invoke-interface {p1, v0, v2, v3, v1}, Lv0/D;->peekFully([BIIZ)Z

    .line 37
    .line 38
    .line 39
    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    xor-int/2addr p1, v1

    .line 41
    return p1

    .line 42
    :catch_0
    return v1
.end method

.method public final d(Lv0/D;Z)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v2, v2, v4

    .line 15
    .line 16
    const/high16 v3, 0x20000

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v2, :cond_3

    .line 20
    .line 21
    iget v2, v0, LO0/e;->a:I

    .line 22
    .line 23
    and-int/lit8 v2, v2, 0x8

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v2, LO0/e;->w:LJ0/g;

    .line 30
    .line 31
    :goto_0
    iget-object v5, v0, LO0/e;->f:Lv0/W;

    .line 32
    .line 33
    invoke-virtual {v5, v1, v2, v3}, Lv0/W;->peekId3Data(Lv0/D;LJ0/h;I)Landroidx/media3/common/Metadata;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object v2, v0, LO0/e;->l:Landroidx/media3/common/Metadata;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-object v5, v0, LO0/e;->e:Lv0/U;

    .line 42
    .line 43
    invoke-virtual {v5, v2}, Lv0/U;->setFromMetadata(Landroidx/media3/common/Metadata;)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-interface {v1}, Lv0/D;->getPeekPosition()J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    long-to-int v2, v5

    .line 51
    if-nez p2, :cond_2

    .line 52
    .line 53
    invoke-interface {v1, v2}, Lv0/D;->skipFully(I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    move v5, v4

    .line 57
    :goto_1
    move v6, v5

    .line 58
    move v7, v6

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move v2, v4

    .line 61
    move v5, v2

    .line 62
    goto :goto_1

    .line 63
    :goto_2
    invoke-virtual/range {p0 .. p1}, LO0/e;->c(Lv0/D;)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    const/4 v9, 0x1

    .line 68
    if-eqz v8, :cond_5

    .line 69
    .line 70
    if-lez v6, :cond_4

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_4
    invoke-virtual {v0}, LO0/e;->b()V

    .line 74
    .line 75
    .line 76
    new-instance v1, Ljava/io/EOFException;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 79
    .line 80
    .line 81
    throw v1

    .line 82
    :cond_5
    iget-object v8, v0, LO0/e;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 83
    .line 84
    invoke-virtual {v8, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-eqz v5, :cond_6

    .line 92
    .line 93
    int-to-long v10, v5

    .line 94
    const v12, -0x1f400

    .line 95
    .line 96
    .line 97
    and-int/2addr v12, v8

    .line 98
    int-to-long v12, v12

    .line 99
    const-wide/32 v14, -0x1f400

    .line 100
    .line 101
    .line 102
    and-long/2addr v10, v14

    .line 103
    cmp-long v10, v12, v10

    .line 104
    .line 105
    if-nez v10, :cond_7

    .line 106
    .line 107
    :cond_6
    invoke-static {v8}, Lv0/Z;->getFrameSize(I)I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    const/4 v11, -0x1

    .line 112
    if-ne v10, v11, :cond_b

    .line 113
    .line 114
    :cond_7
    add-int/lit8 v5, v7, 0x1

    .line 115
    .line 116
    if-ne v7, v3, :cond_9

    .line 117
    .line 118
    if-eqz p2, :cond_8

    .line 119
    .line 120
    return v4

    .line 121
    :cond_8
    invoke-virtual {v0}, LO0/e;->b()V

    .line 122
    .line 123
    .line 124
    new-instance v1, Ljava/io/EOFException;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 127
    .line 128
    .line 129
    throw v1

    .line 130
    :cond_9
    if-eqz p2, :cond_a

    .line 131
    .line 132
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 133
    .line 134
    .line 135
    add-int v6, v2, v5

    .line 136
    .line 137
    invoke-interface {v1, v6}, Lv0/D;->advancePeekPosition(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_a
    invoke-interface {v1, v9}, Lv0/D;->skipFully(I)V

    .line 142
    .line 143
    .line 144
    :goto_3
    move v6, v4

    .line 145
    move v7, v5

    .line 146
    move v5, v6

    .line 147
    goto :goto_2

    .line 148
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 149
    .line 150
    if-ne v6, v9, :cond_c

    .line 151
    .line 152
    iget-object v5, v0, LO0/e;->d:Lv0/Y;

    .line 153
    .line 154
    invoke-virtual {v5, v8}, Lv0/Y;->setForHeaderData(I)Z

    .line 155
    .line 156
    .line 157
    move v5, v8

    .line 158
    goto :goto_6

    .line 159
    :cond_c
    const/4 v8, 0x4

    .line 160
    if-ne v6, v8, :cond_e

    .line 161
    .line 162
    :goto_4
    if-eqz p2, :cond_d

    .line 163
    .line 164
    add-int/2addr v2, v7

    .line 165
    invoke-interface {v1, v2}, Lv0/D;->skipFully(I)V

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_d
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 170
    .line 171
    .line 172
    :goto_5
    iput v5, v0, LO0/e;->k:I

    .line 173
    .line 174
    return v9

    .line 175
    :cond_e
    :goto_6
    add-int/lit8 v10, v10, -0x4

    .line 176
    .line 177
    invoke-interface {v1, v10}, Lv0/D;->advancePeekPosition(I)V

    .line 178
    .line 179
    .line 180
    goto :goto_2
.end method

.method public disableSeeking()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LO0/e;->t:Z

    .line 3
    .line 4
    return-void
.end method

.method public final synthetic getSniffFailureDetails()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/B;->a(Lv0/C;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getUnderlyingImplementation()Lv0/C;
    .locals 1

    .line 1
    invoke-static {p0}, Lv0/B;->b(Lv0/C;)Lv0/C;

    move-result-object v0

    return-object v0
.end method

.method public init(Lv0/F;)V
    .locals 2

    .line 1
    iput-object p1, p0, LO0/e;->h:Lv0/F;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Lv0/F;->track(II)Lv0/r0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, LO0/e;->i:Lv0/r0;

    .line 10
    .line 11
    iput-object p1, p0, LO0/e;->j:Lv0/r0;

    .line 12
    .line 13
    iget-object p1, p0, LO0/e;->h:Lv0/F;

    .line 14
    .line 15
    invoke-interface {p1}, Lv0/F;->endTracks()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, LO0/e;->i:Lv0/r0;

    .line 6
    .line 7
    invoke-static {v2}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, LO0/e;->h:Lv0/F;

    .line 11
    .line 12
    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget v2, v0, LO0/e;->k:I

    .line 16
    .line 17
    iget-object v5, v0, LO0/e;->d:Lv0/Y;

    .line 18
    .line 19
    const/4 v6, -0x1

    .line 20
    const/4 v7, 0x0

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v0, v1, v7}, LO0/e;->d(Lv0/D;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move v4, v6

    .line 28
    move v7, v4

    .line 29
    const-wide/32 v19, 0xf4240

    .line 30
    .line 31
    .line 32
    goto/16 :goto_1d

    .line 33
    .line 34
    :cond_0
    :goto_0
    iget-object v2, v0, LO0/e;->s:LO0/i;

    .line 35
    .line 36
    const/4 v8, 0x1

    .line 37
    if-nez v2, :cond_22

    .line 38
    .line 39
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 40
    .line 41
    iget v13, v5, Lv0/Y;->c:I

    .line 42
    .line 43
    invoke-direct {v2, v13}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    iget v14, v5, Lv0/Y;->c:I

    .line 51
    .line 52
    invoke-interface {v1, v13, v7, v14}, Lv0/D;->peekFully([BII)V

    .line 53
    .line 54
    .line 55
    iget v13, v5, Lv0/Y;->a:I

    .line 56
    .line 57
    and-int/2addr v13, v8

    .line 58
    const/16 v14, 0x15

    .line 59
    .line 60
    const/16 v15, 0x24

    .line 61
    .line 62
    if-eqz v13, :cond_1

    .line 63
    .line 64
    iget v13, v5, Lv0/Y;->e:I

    .line 65
    .line 66
    if-eq v13, v8, :cond_3

    .line 67
    .line 68
    move v14, v15

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget v13, v5, Lv0/Y;->e:I

    .line 71
    .line 72
    if-eq v13, v8, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/16 v14, 0xd

    .line 76
    .line 77
    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const-wide/32 v19, 0xf4240

    .line 82
    .line 83
    .line 84
    add-int/lit8 v3, v14, 0x4

    .line 85
    .line 86
    const v4, 0x56425249

    .line 87
    .line 88
    .line 89
    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    const v9, 0x496e666f

    .line 95
    .line 96
    .line 97
    const v10, 0x58696e67

    .line 98
    .line 99
    .line 100
    if-lt v13, v3, :cond_4

    .line 101
    .line 102
    invoke-virtual {v2, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eq v3, v10, :cond_6

    .line 110
    .line 111
    if-ne v3, v9, :cond_4

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    const/16 v13, 0x28

    .line 119
    .line 120
    if-lt v3, v13, :cond_5

    .line 121
    .line 122
    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-ne v3, v4, :cond_5

    .line 130
    .line 131
    move v3, v4

    .line 132
    goto :goto_2

    .line 133
    :cond_5
    move v3, v7

    .line 134
    :cond_6
    :goto_2
    iget-object v13, v0, LO0/e;->e:Lv0/U;

    .line 135
    .line 136
    const/16 v23, 0x0

    .line 137
    .line 138
    const-wide/16 v24, -0x1

    .line 139
    .line 140
    if-eq v3, v9, :cond_7

    .line 141
    .line 142
    if-eq v3, v4, :cond_8

    .line 143
    .line 144
    if-eq v3, v10, :cond_7

    .line 145
    .line 146
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 147
    .line 148
    .line 149
    move-object v4, v13

    .line 150
    move-object/from16 v2, v23

    .line 151
    .line 152
    :goto_3
    const-wide/16 v17, 0x0

    .line 153
    .line 154
    goto/16 :goto_9

    .line 155
    .line 156
    :cond_7
    move-object v4, v13

    .line 157
    goto :goto_4

    .line 158
    :cond_8
    move-object v4, v13

    .line 159
    invoke-interface {v1}, Lv0/D;->getLength()J

    .line 160
    .line 161
    .line 162
    move-result-wide v13

    .line 163
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 164
    .line 165
    .line 166
    move-result-wide v15

    .line 167
    iget-object v3, v0, LO0/e;->d:Lv0/Y;

    .line 168
    .line 169
    move-object/from16 v18, v2

    .line 170
    .line 171
    move-object/from16 v17, v3

    .line 172
    .line 173
    invoke-static/range {v13 .. v18}, LO0/j;->create(JJLv0/Y;Landroidx/media3/common/util/ParsableByteArray;)LO0/j;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    iget v3, v5, Lv0/Y;->c:I

    .line 178
    .line 179
    invoke-interface {v1, v3}, Lv0/D;->skipFully(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :goto_4
    invoke-static {v5, v2}, LO0/k;->parse(Lv0/Y;Landroidx/media3/common/util/ParsableByteArray;)LO0/k;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v4}, Lv0/U;->hasGaplessInfo()Z

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    if-nez v9, :cond_9

    .line 192
    .line 193
    iget v9, v2, LO0/k;->e:I

    .line 194
    .line 195
    if-eq v9, v6, :cond_9

    .line 196
    .line 197
    iget v13, v2, LO0/k;->f:I

    .line 198
    .line 199
    if-eq v13, v6, :cond_9

    .line 200
    .line 201
    iput v9, v4, Lv0/U;->a:I

    .line 202
    .line 203
    iput v13, v4, Lv0/U;->b:I

    .line 204
    .line 205
    :cond_9
    invoke-virtual {v2}, LO0/k;->getMetadata()Landroidx/media3/common/Metadata;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    iput-object v9, v0, LO0/e;->m:Landroidx/media3/common/Metadata;

    .line 210
    .line 211
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 212
    .line 213
    .line 214
    move-result-wide v13

    .line 215
    invoke-interface {v1}, Lv0/D;->getLength()J

    .line 216
    .line 217
    .line 218
    move-result-wide v15

    .line 219
    cmp-long v9, v15, v24

    .line 220
    .line 221
    move v15, v9

    .line 222
    iget-wide v8, v2, LO0/k;->c:J

    .line 223
    .line 224
    if-eqz v15, :cond_b

    .line 225
    .line 226
    cmp-long v15, v8, v24

    .line 227
    .line 228
    if-eqz v15, :cond_b

    .line 229
    .line 230
    invoke-interface {v1}, Lv0/D;->getLength()J

    .line 231
    .line 232
    .line 233
    move-result-wide v15

    .line 234
    const-wide/16 v17, 0x0

    .line 235
    .line 236
    add-long v11, v13, v8

    .line 237
    .line 238
    cmp-long v15, v15, v11

    .line 239
    .line 240
    if-eqz v15, :cond_a

    .line 241
    .line 242
    new-instance v15, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    const-string v6, "Data size mismatch between stream ("

    .line 245
    .line 246
    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    move-wide/from16 v26, v8

    .line 250
    .line 251
    invoke-interface {v1}, Lv0/D;->getLength()J

    .line 252
    .line 253
    .line 254
    move-result-wide v7

    .line 255
    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v7, ") and Xing frame ("

    .line 259
    .line 260
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v7, "), using Xing value."

    .line 267
    .line 268
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    const-string v8, "Mp3Extractor"

    .line 276
    .line 277
    invoke-static {v8, v7}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_a
    move-wide/from16 v26, v8

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_b
    move-wide/from16 v26, v8

    .line 285
    .line 286
    const-wide/16 v17, 0x0

    .line 287
    .line 288
    :goto_5
    iget v7, v5, Lv0/Y;->c:I

    .line 289
    .line 290
    invoke-interface {v1, v7}, Lv0/D;->skipFully(I)V

    .line 291
    .line 292
    .line 293
    if-ne v3, v10, :cond_c

    .line 294
    .line 295
    invoke-static {v2, v13, v14}, LO0/l;->create(LO0/k;J)LO0/l;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    goto :goto_9

    .line 300
    :cond_c
    invoke-interface {v1}, Lv0/D;->getLength()J

    .line 301
    .line 302
    .line 303
    move-result-wide v7

    .line 304
    invoke-virtual {v2}, LO0/k;->computeDurationUs()J

    .line 305
    .line 306
    .line 307
    move-result-wide v32

    .line 308
    cmp-long v3, v32, v21

    .line 309
    .line 310
    if-nez v3, :cond_d

    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_d
    cmp-long v3, v26, v24

    .line 314
    .line 315
    iget-object v9, v2, LO0/k;->a:Lv0/Y;

    .line 316
    .line 317
    if-eqz v3, :cond_e

    .line 318
    .line 319
    add-long v7, v13, v26

    .line 320
    .line 321
    iget v3, v9, Lv0/Y;->c:I

    .line 322
    .line 323
    int-to-long v10, v3

    .line 324
    sub-long v10, v26, v10

    .line 325
    .line 326
    move-wide/from16 v35, v7

    .line 327
    .line 328
    :goto_6
    move-wide/from16 v28, v10

    .line 329
    .line 330
    goto :goto_7

    .line 331
    :cond_e
    cmp-long v3, v7, v24

    .line 332
    .line 333
    if-eqz v3, :cond_f

    .line 334
    .line 335
    sub-long v10, v7, v13

    .line 336
    .line 337
    iget v3, v9, Lv0/Y;->c:I

    .line 338
    .line 339
    move-wide/from16 v26, v7

    .line 340
    .line 341
    int-to-long v6, v3

    .line 342
    sub-long/2addr v10, v6

    .line 343
    move-wide/from16 v35, v26

    .line 344
    .line 345
    goto :goto_6

    .line 346
    :goto_7
    sget-object v34, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 347
    .line 348
    const-wide/32 v30, 0x7a1200

    .line 349
    .line 350
    .line 351
    invoke-static/range {v28 .. v34}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    .line 352
    .line 353
    .line 354
    move-result-wide v6

    .line 355
    move-wide/from16 v10, v28

    .line 356
    .line 357
    move-object/from16 v3, v34

    .line 358
    .line 359
    invoke-static {v6, v7}, Lcom/google/common/primitives/a;->checkedCast(J)I

    .line 360
    .line 361
    .line 362
    move-result v39

    .line 363
    iget-wide v6, v2, LO0/k;->b:J

    .line 364
    .line 365
    invoke-static {v10, v11, v6, v7, v3}, LS3/g;->divide(JJLjava/math/RoundingMode;)J

    .line 366
    .line 367
    .line 368
    move-result-wide v2

    .line 369
    invoke-static {v2, v3}, Lcom/google/common/primitives/a;->checkedCast(J)I

    .line 370
    .line 371
    .line 372
    move-result v40

    .line 373
    new-instance v34, LO0/a;

    .line 374
    .line 375
    iget v2, v9, Lv0/Y;->c:I

    .line 376
    .line 377
    int-to-long v2, v2

    .line 378
    add-long v37, v13, v2

    .line 379
    .line 380
    const/16 v41, 0x0

    .line 381
    .line 382
    invoke-direct/range {v34 .. v41}, LO0/a;-><init>(JJIIZ)V

    .line 383
    .line 384
    .line 385
    move-object/from16 v2, v34

    .line 386
    .line 387
    goto :goto_9

    .line 388
    :cond_f
    :goto_8
    move-object/from16 v2, v23

    .line 389
    .line 390
    :goto_9
    iget-object v3, v0, LO0/e;->l:Landroidx/media3/common/Metadata;

    .line 391
    .line 392
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 393
    .line 394
    .line 395
    move-result-wide v7

    .line 396
    if-nez v3, :cond_10

    .line 397
    .line 398
    :goto_a
    move-object/from16 v3, v23

    .line 399
    .line 400
    goto :goto_c

    .line 401
    :cond_10
    const-class v6, LJ0/n;

    .line 402
    .line 403
    invoke-virtual {v3, v6}, Landroidx/media3/common/Metadata;->getFirstEntryOfType(Ljava/lang/Class;)Landroidx/media3/common/Metadata$Entry;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    move-object v9, v6

    .line 408
    check-cast v9, LJ0/n;

    .line 409
    .line 410
    if-nez v9, :cond_11

    .line 411
    .line 412
    goto :goto_a

    .line 413
    :cond_11
    new-instance v6, LO0/d;

    .line 414
    .line 415
    const/4 v10, 0x0

    .line 416
    invoke-direct {v6, v10}, LO0/d;-><init>(I)V

    .line 417
    .line 418
    .line 419
    const-class v10, LJ0/p;

    .line 420
    .line 421
    invoke-virtual {v3, v10, v6}, Landroidx/media3/common/Metadata;->getFirstMatchingEntry(Ljava/lang/Class;LP3/w;)Landroidx/media3/common/Metadata$Entry;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    check-cast v3, LJ0/p;

    .line 426
    .line 427
    if-nez v3, :cond_12

    .line 428
    .line 429
    move-wide/from16 v10, v21

    .line 430
    .line 431
    goto :goto_b

    .line 432
    :cond_12
    iget-object v3, v3, LJ0/p;->c:Lcom/google/common/collect/ImmutableList;

    .line 433
    .line 434
    const/4 v6, 0x0

    .line 435
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    check-cast v3, Ljava/lang/String;

    .line 440
    .line 441
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 442
    .line 443
    .line 444
    move-result-wide v10

    .line 445
    invoke-static {v10, v11}, Landroidx/media3/common/util/Util;->msToUs(J)J

    .line 446
    .line 447
    .line 448
    move-result-wide v10

    .line 449
    :goto_b
    invoke-static {v7, v8, v9, v10, v11}, LO0/c;->create(JLJ0/n;J)LO0/c;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    :goto_c
    iget-boolean v7, v0, LO0/e;->t:Z

    .line 454
    .line 455
    iget v8, v0, LO0/e;->a:I

    .line 456
    .line 457
    if-eqz v7, :cond_13

    .line 458
    .line 459
    new-instance v2, LO0/h;

    .line 460
    .line 461
    invoke-direct {v2}, LO0/h;-><init>()V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_15

    .line 465
    .line 466
    :cond_13
    if-eqz v3, :cond_14

    .line 467
    .line 468
    move-object/from16 v23, v3

    .line 469
    .line 470
    goto :goto_d

    .line 471
    :cond_14
    if-eqz v2, :cond_15

    .line 472
    .line 473
    move-object/from16 v23, v2

    .line 474
    .line 475
    :cond_15
    :goto_d
    if-nez v23, :cond_17

    .line 476
    .line 477
    and-int/lit8 v2, v8, 0x2

    .line 478
    .line 479
    if-eqz v2, :cond_16

    .line 480
    .line 481
    const/4 v2, 0x1

    .line 482
    goto :goto_e

    .line 483
    :cond_16
    const/4 v2, 0x0

    .line 484
    :goto_e
    invoke-virtual {v0, v1, v2}, LO0/e;->a(Lv0/D;Z)LO0/a;

    .line 485
    .line 486
    .line 487
    move-result-object v23

    .line 488
    :cond_17
    and-int/lit8 v2, v8, 0x4

    .line 489
    .line 490
    if-eqz v2, :cond_18

    .line 491
    .line 492
    invoke-interface/range {v23 .. v23}, Lv0/g0;->isSeekable()Z

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    if-nez v2, :cond_18

    .line 497
    .line 498
    new-instance v9, LO0/b;

    .line 499
    .line 500
    invoke-interface/range {v23 .. v23}, Lv0/g0;->getDurationUs()J

    .line 501
    .line 502
    .line 503
    move-result-wide v10

    .line 504
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 505
    .line 506
    .line 507
    move-result-wide v12

    .line 508
    invoke-interface/range {v23 .. v23}, LO0/i;->getDataEndPosition()J

    .line 509
    .line 510
    .line 511
    move-result-wide v14

    .line 512
    invoke-direct/range {v9 .. v15}, LO0/b;-><init>(JJJ)V

    .line 513
    .line 514
    .line 515
    goto :goto_f

    .line 516
    :cond_18
    move-object/from16 v9, v23

    .line 517
    .line 518
    :goto_f
    invoke-interface {v9}, Lv0/g0;->isSeekable()Z

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    if-nez v2, :cond_1c

    .line 523
    .line 524
    instance-of v2, v9, LO0/a;

    .line 525
    .line 526
    if-nez v2, :cond_1c

    .line 527
    .line 528
    and-int/lit8 v2, v8, 0x1

    .line 529
    .line 530
    if-eqz v2, :cond_1c

    .line 531
    .line 532
    invoke-interface {v9}, Lv0/g0;->getDurationUs()J

    .line 533
    .line 534
    .line 535
    move-result-wide v2

    .line 536
    cmp-long v2, v2, v21

    .line 537
    .line 538
    if-eqz v2, :cond_1c

    .line 539
    .line 540
    invoke-interface {v9}, LO0/i;->getDataEndPosition()J

    .line 541
    .line 542
    .line 543
    move-result-wide v2

    .line 544
    cmp-long v2, v2, v24

    .line 545
    .line 546
    if-nez v2, :cond_19

    .line 547
    .line 548
    invoke-interface {v1}, Lv0/D;->getLength()J

    .line 549
    .line 550
    .line 551
    move-result-wide v2

    .line 552
    cmp-long v2, v2, v24

    .line 553
    .line 554
    if-eqz v2, :cond_1c

    .line 555
    .line 556
    :cond_19
    invoke-interface {v9}, LO0/i;->getDataStartPosition()J

    .line 557
    .line 558
    .line 559
    move-result-wide v2

    .line 560
    cmp-long v2, v2, v24

    .line 561
    .line 562
    if-eqz v2, :cond_1a

    .line 563
    .line 564
    invoke-interface {v9}, LO0/i;->getDataStartPosition()J

    .line 565
    .line 566
    .line 567
    move-result-wide v2

    .line 568
    move-wide/from16 v29, v2

    .line 569
    .line 570
    goto :goto_10

    .line 571
    :cond_1a
    move-wide/from16 v29, v17

    .line 572
    .line 573
    :goto_10
    invoke-interface {v9}, LO0/i;->getDataEndPosition()J

    .line 574
    .line 575
    .line 576
    move-result-wide v2

    .line 577
    cmp-long v2, v2, v24

    .line 578
    .line 579
    if-eqz v2, :cond_1b

    .line 580
    .line 581
    invoke-interface {v9}, LO0/i;->getDataEndPosition()J

    .line 582
    .line 583
    .line 584
    move-result-wide v2

    .line 585
    :goto_11
    move-wide/from16 v27, v2

    .line 586
    .line 587
    goto :goto_12

    .line 588
    :cond_1b
    invoke-interface {v1}, Lv0/D;->getLength()J

    .line 589
    .line 590
    .line 591
    move-result-wide v2

    .line 592
    goto :goto_11

    .line 593
    :goto_12
    sub-long v31, v27, v29

    .line 594
    .line 595
    invoke-interface {v9}, Lv0/g0;->getDurationUs()J

    .line 596
    .line 597
    .line 598
    move-result-wide v35

    .line 599
    sget-object v37, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 600
    .line 601
    const-wide/32 v33, 0x7a1200

    .line 602
    .line 603
    .line 604
    invoke-static/range {v31 .. v37}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    .line 605
    .line 606
    .line 607
    move-result-wide v2

    .line 608
    invoke-static {v2, v3}, Lcom/google/common/primitives/a;->saturatedCast(J)I

    .line 609
    .line 610
    .line 611
    move-result v31

    .line 612
    new-instance v26, LO0/a;

    .line 613
    .line 614
    const/16 v32, -0x1

    .line 615
    .line 616
    const/16 v33, 0x0

    .line 617
    .line 618
    invoke-direct/range {v26 .. v33}, LO0/a;-><init>(JJIIZ)V

    .line 619
    .line 620
    .line 621
    move-object/from16 v2, v26

    .line 622
    .line 623
    goto :goto_14

    .line 624
    :cond_1c
    invoke-interface {v9}, Lv0/g0;->isSeekable()Z

    .line 625
    .line 626
    .line 627
    move-result v2

    .line 628
    if-nez v2, :cond_1e

    .line 629
    .line 630
    instance-of v2, v9, LO0/a;

    .line 631
    .line 632
    if-nez v2, :cond_1e

    .line 633
    .line 634
    and-int/lit8 v2, v8, 0x1

    .line 635
    .line 636
    if-eqz v2, :cond_1e

    .line 637
    .line 638
    and-int/lit8 v2, v8, 0x2

    .line 639
    .line 640
    if-eqz v2, :cond_1d

    .line 641
    .line 642
    const/4 v2, 0x1

    .line 643
    goto :goto_13

    .line 644
    :cond_1d
    const/4 v2, 0x0

    .line 645
    :goto_13
    invoke-virtual {v0, v1, v2}, LO0/e;->a(Lv0/D;Z)LO0/a;

    .line 646
    .line 647
    .line 648
    move-result-object v2

    .line 649
    goto :goto_14

    .line 650
    :cond_1e
    move-object v2, v9

    .line 651
    :goto_14
    iget-object v3, v0, LO0/e;->i:Lv0/r0;

    .line 652
    .line 653
    invoke-interface {v2}, Lv0/g0;->getDurationUs()J

    .line 654
    .line 655
    .line 656
    move-result-wide v9

    .line 657
    invoke-interface {v3, v9, v10}, Lv0/r0;->durationUs(J)V

    .line 658
    .line 659
    .line 660
    :goto_15
    iput-object v2, v0, LO0/e;->s:LO0/i;

    .line 661
    .line 662
    iget-object v3, v0, LO0/e;->h:Lv0/F;

    .line 663
    .line 664
    invoke-interface {v3, v2}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 665
    .line 666
    .line 667
    iget-object v2, v0, LO0/e;->l:Landroidx/media3/common/Metadata;

    .line 668
    .line 669
    if-eqz v2, :cond_1f

    .line 670
    .line 671
    and-int/lit8 v3, v8, 0x8

    .line 672
    .line 673
    if-nez v3, :cond_1f

    .line 674
    .line 675
    iget-object v3, v0, LO0/e;->m:Landroidx/media3/common/Metadata;

    .line 676
    .line 677
    if-eqz v3, :cond_20

    .line 678
    .line 679
    invoke-virtual {v2, v3}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    goto :goto_16

    .line 684
    :cond_1f
    iget-object v2, v0, LO0/e;->m:Landroidx/media3/common/Metadata;

    .line 685
    .line 686
    :cond_20
    :goto_16
    new-instance v3, Landroidx/media3/common/Format$Builder;

    .line 687
    .line 688
    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 689
    .line 690
    .line 691
    const-string v7, "audio/mpeg"

    .line 692
    .line 693
    invoke-virtual {v3, v7}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 694
    .line 695
    .line 696
    move-result-object v3

    .line 697
    iget-object v7, v5, Lv0/Y;->b:Ljava/lang/String;

    .line 698
    .line 699
    invoke-virtual {v3, v7}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 700
    .line 701
    .line 702
    move-result-object v3

    .line 703
    const/16 v7, 0x1000

    .line 704
    .line 705
    invoke-virtual {v3, v7}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    .line 706
    .line 707
    .line 708
    move-result-object v3

    .line 709
    iget v7, v5, Lv0/Y;->e:I

    .line 710
    .line 711
    invoke-virtual {v3, v7}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    iget v7, v5, Lv0/Y;->d:I

    .line 716
    .line 717
    invoke-virtual {v3, v7}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 718
    .line 719
    .line 720
    move-result-object v3

    .line 721
    iget v7, v4, Lv0/U;->a:I

    .line 722
    .line 723
    invoke-virtual {v3, v7}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    .line 724
    .line 725
    .line 726
    move-result-object v3

    .line 727
    iget v4, v4, Lv0/U;->b:I

    .line 728
    .line 729
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    .line 730
    .line 731
    .line 732
    move-result-object v3

    .line 733
    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    iget-object v3, v0, LO0/e;->s:LO0/i;

    .line 738
    .line 739
    invoke-interface {v3}, LO0/i;->getAverageBitrate()I

    .line 740
    .line 741
    .line 742
    move-result v3

    .line 743
    const v4, -0x7fffffff

    .line 744
    .line 745
    .line 746
    if-eq v3, v4, :cond_21

    .line 747
    .line 748
    iget-object v3, v0, LO0/e;->s:LO0/i;

    .line 749
    .line 750
    invoke-interface {v3}, LO0/i;->getAverageBitrate()I

    .line 751
    .line 752
    .line 753
    move-result v3

    .line 754
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 755
    .line 756
    .line 757
    :cond_21
    iget-object v3, v0, LO0/e;->j:Lv0/r0;

    .line 758
    .line 759
    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 760
    .line 761
    .line 762
    move-result-object v2

    .line 763
    invoke-interface {v3, v2}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 764
    .line 765
    .line 766
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 767
    .line 768
    .line 769
    move-result-wide v2

    .line 770
    iput-wide v2, v0, LO0/e;->p:J

    .line 771
    .line 772
    goto :goto_17

    .line 773
    :cond_22
    const-wide/16 v17, 0x0

    .line 774
    .line 775
    const-wide/32 v19, 0xf4240

    .line 776
    .line 777
    .line 778
    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    iget-wide v2, v0, LO0/e;->p:J

    .line 784
    .line 785
    cmp-long v2, v2, v17

    .line 786
    .line 787
    if-eqz v2, :cond_23

    .line 788
    .line 789
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 790
    .line 791
    .line 792
    move-result-wide v2

    .line 793
    iget-wide v7, v0, LO0/e;->p:J

    .line 794
    .line 795
    cmp-long v4, v2, v7

    .line 796
    .line 797
    if-gez v4, :cond_23

    .line 798
    .line 799
    sub-long/2addr v7, v2

    .line 800
    long-to-int v2, v7

    .line 801
    invoke-interface {v1, v2}, Lv0/D;->skipFully(I)V

    .line 802
    .line 803
    .line 804
    :cond_23
    :goto_17
    iget v2, v0, LO0/e;->r:I

    .line 805
    .line 806
    if-nez v2, :cond_27

    .line 807
    .line 808
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 809
    .line 810
    .line 811
    invoke-virtual/range {p0 .. p1}, LO0/e;->c(Lv0/D;)Z

    .line 812
    .line 813
    .line 814
    move-result v2

    .line 815
    if-eqz v2, :cond_24

    .line 816
    .line 817
    goto/16 :goto_1c

    .line 818
    .line 819
    :cond_24
    iget-object v2, v0, LO0/e;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 820
    .line 821
    const/4 v6, 0x0

    .line 822
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 826
    .line 827
    .line 828
    move-result v2

    .line 829
    iget v3, v0, LO0/e;->k:I

    .line 830
    .line 831
    int-to-long v3, v3

    .line 832
    const v7, -0x1f400

    .line 833
    .line 834
    .line 835
    and-int/2addr v7, v2

    .line 836
    int-to-long v7, v7

    .line 837
    const-wide/32 v9, -0x1f400

    .line 838
    .line 839
    .line 840
    and-long/2addr v3, v9

    .line 841
    cmp-long v3, v7, v3

    .line 842
    .line 843
    if-nez v3, :cond_29

    .line 844
    .line 845
    invoke-static {v2}, Lv0/Z;->getFrameSize(I)I

    .line 846
    .line 847
    .line 848
    move-result v3

    .line 849
    const/4 v4, -0x1

    .line 850
    if-ne v3, v4, :cond_25

    .line 851
    .line 852
    const/4 v2, 0x1

    .line 853
    const/4 v6, 0x0

    .line 854
    goto :goto_19

    .line 855
    :cond_25
    invoke-virtual {v5, v2}, Lv0/Y;->setForHeaderData(I)Z

    .line 856
    .line 857
    .line 858
    iget-wide v2, v0, LO0/e;->n:J

    .line 859
    .line 860
    cmp-long v2, v2, v21

    .line 861
    .line 862
    if-nez v2, :cond_26

    .line 863
    .line 864
    iget-object v2, v0, LO0/e;->s:LO0/i;

    .line 865
    .line 866
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 867
    .line 868
    .line 869
    move-result-wide v3

    .line 870
    invoke-interface {v2, v3, v4}, LO0/i;->getTimeUs(J)J

    .line 871
    .line 872
    .line 873
    move-result-wide v2

    .line 874
    iput-wide v2, v0, LO0/e;->n:J

    .line 875
    .line 876
    iget-wide v2, v0, LO0/e;->b:J

    .line 877
    .line 878
    cmp-long v4, v2, v21

    .line 879
    .line 880
    if-eqz v4, :cond_26

    .line 881
    .line 882
    iget-object v4, v0, LO0/e;->s:LO0/i;

    .line 883
    .line 884
    move-wide/from16 v7, v17

    .line 885
    .line 886
    invoke-interface {v4, v7, v8}, LO0/i;->getTimeUs(J)J

    .line 887
    .line 888
    .line 889
    move-result-wide v7

    .line 890
    iget-wide v9, v0, LO0/e;->n:J

    .line 891
    .line 892
    sub-long/2addr v2, v7

    .line 893
    add-long/2addr v2, v9

    .line 894
    iput-wide v2, v0, LO0/e;->n:J

    .line 895
    .line 896
    :cond_26
    iget v2, v5, Lv0/Y;->c:I

    .line 897
    .line 898
    iput v2, v0, LO0/e;->r:I

    .line 899
    .line 900
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 901
    .line 902
    .line 903
    move-result-wide v2

    .line 904
    iget v4, v5, Lv0/Y;->c:I

    .line 905
    .line 906
    int-to-long v7, v4

    .line 907
    add-long/2addr v2, v7

    .line 908
    iput-wide v2, v0, LO0/e;->q:J

    .line 909
    .line 910
    iget-object v4, v0, LO0/e;->s:LO0/i;

    .line 911
    .line 912
    instance-of v7, v4, LO0/b;

    .line 913
    .line 914
    if-eqz v7, :cond_28

    .line 915
    .line 916
    check-cast v4, LO0/b;

    .line 917
    .line 918
    iget-wide v7, v0, LO0/e;->o:J

    .line 919
    .line 920
    iget v9, v5, Lv0/Y;->g:I

    .line 921
    .line 922
    int-to-long v9, v9

    .line 923
    add-long/2addr v7, v9

    .line 924
    iget-wide v9, v0, LO0/e;->n:J

    .line 925
    .line 926
    mul-long v7, v7, v19

    .line 927
    .line 928
    iget v11, v5, Lv0/Y;->d:I

    .line 929
    .line 930
    int-to-long v11, v11

    .line 931
    div-long/2addr v7, v11

    .line 932
    add-long/2addr v7, v9

    .line 933
    invoke-virtual {v4, v7, v8, v2, v3}, LO0/b;->maybeAddSeekPoint(JJ)V

    .line 934
    .line 935
    .line 936
    iget-boolean v2, v0, LO0/e;->u:Z

    .line 937
    .line 938
    if-eqz v2, :cond_28

    .line 939
    .line 940
    iget-wide v2, v0, LO0/e;->v:J

    .line 941
    .line 942
    invoke-virtual {v4, v2, v3}, LO0/b;->isTimeUsInIndex(J)Z

    .line 943
    .line 944
    .line 945
    move-result v2

    .line 946
    if-eqz v2, :cond_28

    .line 947
    .line 948
    const/4 v6, 0x0

    .line 949
    iput-boolean v6, v0, LO0/e;->u:Z

    .line 950
    .line 951
    iget-object v2, v0, LO0/e;->i:Lv0/r0;

    .line 952
    .line 953
    iput-object v2, v0, LO0/e;->j:Lv0/r0;

    .line 954
    .line 955
    :cond_27
    :goto_18
    const/4 v2, 0x1

    .line 956
    goto :goto_1b

    .line 957
    :cond_28
    const/4 v6, 0x0

    .line 958
    goto :goto_18

    .line 959
    :cond_29
    const/4 v6, 0x0

    .line 960
    const/4 v2, 0x1

    .line 961
    :goto_19
    invoke-interface {v1, v2}, Lv0/D;->skipFully(I)V

    .line 962
    .line 963
    .line 964
    iput v6, v0, LO0/e;->k:I

    .line 965
    .line 966
    :goto_1a
    const/4 v4, -0x1

    .line 967
    const/4 v7, 0x0

    .line 968
    goto :goto_1d

    .line 969
    :goto_1b
    iget-object v3, v0, LO0/e;->j:Lv0/r0;

    .line 970
    .line 971
    iget v4, v0, LO0/e;->r:I

    .line 972
    .line 973
    invoke-interface {v3, v1, v4, v2}, Lv0/r0;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    .line 974
    .line 975
    .line 976
    move-result v1

    .line 977
    const/4 v4, -0x1

    .line 978
    if-ne v1, v4, :cond_2a

    .line 979
    .line 980
    :goto_1c
    const/4 v4, -0x1

    .line 981
    const/4 v7, -0x1

    .line 982
    goto :goto_1d

    .line 983
    :cond_2a
    iget v2, v0, LO0/e;->r:I

    .line 984
    .line 985
    sub-int/2addr v2, v1

    .line 986
    iput v2, v0, LO0/e;->r:I

    .line 987
    .line 988
    if-lez v2, :cond_2b

    .line 989
    .line 990
    goto :goto_1a

    .line 991
    :cond_2b
    iget-object v7, v0, LO0/e;->j:Lv0/r0;

    .line 992
    .line 993
    iget-wide v1, v0, LO0/e;->o:J

    .line 994
    .line 995
    iget-wide v3, v0, LO0/e;->n:J

    .line 996
    .line 997
    mul-long v1, v1, v19

    .line 998
    .line 999
    iget v8, v5, Lv0/Y;->d:I

    .line 1000
    .line 1001
    int-to-long v8, v8

    .line 1002
    div-long/2addr v1, v8

    .line 1003
    add-long v8, v1, v3

    .line 1004
    .line 1005
    iget v11, v5, Lv0/Y;->c:I

    .line 1006
    .line 1007
    const/4 v12, 0x0

    .line 1008
    const/4 v13, 0x0

    .line 1009
    const/4 v10, 0x1

    .line 1010
    invoke-interface/range {v7 .. v13}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 1011
    .line 1012
    .line 1013
    iget-wide v1, v0, LO0/e;->o:J

    .line 1014
    .line 1015
    iget v3, v5, Lv0/Y;->g:I

    .line 1016
    .line 1017
    int-to-long v3, v3

    .line 1018
    add-long/2addr v1, v3

    .line 1019
    iput-wide v1, v0, LO0/e;->o:J

    .line 1020
    .line 1021
    const/4 v6, 0x0

    .line 1022
    iput v6, v0, LO0/e;->r:I

    .line 1023
    .line 1024
    move v7, v6

    .line 1025
    const/4 v4, -0x1

    .line 1026
    :goto_1d
    if-ne v7, v4, :cond_2c

    .line 1027
    .line 1028
    iget-object v1, v0, LO0/e;->s:LO0/i;

    .line 1029
    .line 1030
    instance-of v2, v1, LO0/b;

    .line 1031
    .line 1032
    if-eqz v2, :cond_2c

    .line 1033
    .line 1034
    iget-wide v2, v0, LO0/e;->o:J

    .line 1035
    .line 1036
    iget-wide v8, v0, LO0/e;->n:J

    .line 1037
    .line 1038
    mul-long v2, v2, v19

    .line 1039
    .line 1040
    iget v4, v5, Lv0/Y;->d:I

    .line 1041
    .line 1042
    int-to-long v4, v4

    .line 1043
    div-long/2addr v2, v4

    .line 1044
    add-long/2addr v2, v8

    .line 1045
    invoke-interface {v1}, Lv0/g0;->getDurationUs()J

    .line 1046
    .line 1047
    .line 1048
    move-result-wide v4

    .line 1049
    cmp-long v1, v4, v2

    .line 1050
    .line 1051
    if-eqz v1, :cond_2c

    .line 1052
    .line 1053
    iget-object v1, v0, LO0/e;->s:LO0/i;

    .line 1054
    .line 1055
    check-cast v1, LO0/b;

    .line 1056
    .line 1057
    iget-object v1, v1, LO0/b;->d:Lv0/X;

    .line 1058
    .line 1059
    invoke-virtual {v1, v2, v3}, Lv0/X;->setDurationUs(J)V

    .line 1060
    .line 1061
    .line 1062
    iget-object v1, v0, LO0/e;->h:Lv0/F;

    .line 1063
    .line 1064
    iget-object v2, v0, LO0/e;->s:LO0/i;

    .line 1065
    .line 1066
    invoke-interface {v1, v2}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 1067
    .line 1068
    .line 1069
    iget-object v1, v0, LO0/e;->i:Lv0/r0;

    .line 1070
    .line 1071
    iget-object v2, v0, LO0/e;->s:LO0/i;

    .line 1072
    .line 1073
    invoke-interface {v2}, Lv0/g0;->getDurationUs()J

    .line 1074
    .line 1075
    .line 1076
    move-result-wide v2

    .line 1077
    invoke-interface {v1, v2, v3}, Lv0/r0;->durationUs(J)V

    .line 1078
    .line 1079
    .line 1080
    :cond_2c
    return v7
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, LO0/e;->k:I

    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, LO0/e;->n:J

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, LO0/e;->o:J

    .line 14
    .line 15
    iput p1, p0, LO0/e;->r:I

    .line 16
    .line 17
    const-wide/16 p1, -0x1

    .line 18
    .line 19
    iput-wide p1, p0, LO0/e;->q:J

    .line 20
    .line 21
    iput-wide p3, p0, LO0/e;->v:J

    .line 22
    .line 23
    iget-object p1, p0, LO0/e;->s:LO0/i;

    .line 24
    .line 25
    instance-of p2, p1, LO0/b;

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    check-cast p1, LO0/b;

    .line 30
    .line 31
    invoke-virtual {p1, p3, p4}, LO0/b;->isTimeUsInIndex(J)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, LO0/e;->u:Z

    .line 39
    .line 40
    iget-object p1, p0, LO0/e;->g:Lv0/y;

    .line 41
    .line 42
    iput-object p1, p0, LO0/e;->j:Lv0/r0;

    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public sniff(Lv0/D;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, LO0/e;->d(Lv0/D;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method
