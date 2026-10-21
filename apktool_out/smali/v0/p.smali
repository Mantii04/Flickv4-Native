.class public abstract Lv0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv0/i;

.field public final b:Lv0/o;

.field public c:Lv0/k;

.field public final d:I


# direct methods
.method public constructor <init>(Lv0/l;Lv0/o;JJJJJJI)V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    iput-object v0, p0, Lv0/p;->b:Lv0/o;

    .line 7
    .line 8
    move/from16 v0, p15

    .line 9
    .line 10
    iput v0, p0, Lv0/p;->d:I

    .line 11
    .line 12
    new-instance v0, Lv0/i;

    .line 13
    .line 14
    move-object v1, p1

    .line 15
    move-wide/from16 v2, p3

    .line 16
    .line 17
    move-wide/from16 v4, p5

    .line 18
    .line 19
    move-wide/from16 v6, p7

    .line 20
    .line 21
    move-wide/from16 v8, p9

    .line 22
    .line 23
    move-wide/from16 v10, p11

    .line 24
    .line 25
    move-wide/from16 v12, p13

    .line 26
    .line 27
    invoke-direct/range {v0 .. v13}, Lv0/i;-><init>(Lv0/l;JJJJJJ)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lv0/p;->a:Lv0/i;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public createSeekParamsForTargetTimeUs(J)Lv0/k;
    .locals 16

    .line 1
    new-instance v0, Lv0/k;

    .line 2
    .line 3
    move-object/from16 v15, p0

    .line 4
    .line 5
    iget-object v1, v15, Lv0/p;->a:Lv0/i;

    .line 6
    .line 7
    move-wide/from16 v2, p1

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Lv0/i;->timeUsToTargetTime(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    move-wide v3, v4

    .line 14
    iget-wide v5, v1, Lv0/i;->c:J

    .line 15
    .line 16
    iget-wide v7, v1, Lv0/i;->d:J

    .line 17
    .line 18
    iget-wide v9, v1, Lv0/i;->e:J

    .line 19
    .line 20
    iget-wide v11, v1, Lv0/i;->f:J

    .line 21
    .line 22
    iget-wide v13, v1, Lv0/i;->g:J

    .line 23
    .line 24
    move-wide/from16 v1, p1

    .line 25
    .line 26
    invoke-direct/range {v0 .. v14}, Lv0/k;-><init>(JJJJJJJ)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public final getSeekMap()Lv0/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/p;->a:Lv0/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public handlePendingSeek(Lv0/D;Lv0/c0;)I
    .locals 19
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
    move-object/from16 v2, p2

    .line 6
    .line 7
    :goto_0
    iget-object v3, v0, Lv0/p;->c:Lv0/k;

    .line 8
    .line 9
    invoke-static {v3}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lv0/k;

    .line 14
    .line 15
    iget-wide v4, v3, Lv0/k;->f:J

    .line 16
    .line 17
    iget-wide v6, v3, Lv0/k;->g:J

    .line 18
    .line 19
    iget-wide v8, v3, Lv0/k;->h:J

    .line 20
    .line 21
    sub-long/2addr v6, v4

    .line 22
    iget v10, v0, Lv0/p;->d:I

    .line 23
    .line 24
    int-to-long v10, v10

    .line 25
    cmp-long v6, v6, v10

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    if-gtz v6, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v7, v4, v5}, Lv0/p;->markSeekOperationFinished(ZJ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v4, v5, v2}, Lv0/p;->seekToPosition(Lv0/D;JLv0/c0;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    return v1

    .line 38
    :cond_0
    invoke-virtual {v0, v1, v8, v9}, Lv0/p;->skipInputUntilPosition(Lv0/D;J)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0, v1, v8, v9, v2}, Lv0/p;->seekToPosition(Lv0/D;JLv0/c0;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    return v1

    .line 49
    :cond_1
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 50
    .line 51
    .line 52
    iget-object v4, v0, Lv0/p;->b:Lv0/o;

    .line 53
    .line 54
    iget-wide v5, v3, Lv0/k;->b:J

    .line 55
    .line 56
    invoke-interface {v4, v1, v5, v6}, Lv0/o;->searchForTimestamp(Lv0/D;J)Lv0/m;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget v5, v4, Lv0/m;->a:I

    .line 61
    .line 62
    const/4 v6, -0x3

    .line 63
    if-eq v5, v6, :cond_5

    .line 64
    .line 65
    const/4 v6, -0x2

    .line 66
    iget-wide v9, v4, Lv0/m;->b:J

    .line 67
    .line 68
    iget-wide v13, v4, Lv0/m;->c:J

    .line 69
    .line 70
    if-eq v5, v6, :cond_4

    .line 71
    .line 72
    const/4 v4, -0x1

    .line 73
    if-eq v5, v4, :cond_3

    .line 74
    .line 75
    if-nez v5, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0, v1, v13, v14}, Lv0/p;->skipInputUntilPosition(Lv0/D;J)Z

    .line 78
    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    invoke-virtual {v0, v3, v13, v14}, Lv0/p;->markSeekOperationFinished(ZJ)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1, v13, v14, v2}, Lv0/p;->seekToPosition(Lv0/D;JLv0/c0;)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    return v1

    .line 89
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string v2, "Invalid case"

    .line 92
    .line 93
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v1

    .line 97
    :cond_3
    iput-wide v9, v3, Lv0/k;->e:J

    .line 98
    .line 99
    iput-wide v13, v3, Lv0/k;->g:J

    .line 100
    .line 101
    move-wide v11, v9

    .line 102
    iget-wide v9, v3, Lv0/k;->d:J

    .line 103
    .line 104
    move-wide v15, v13

    .line 105
    iget-wide v13, v3, Lv0/k;->f:J

    .line 106
    .line 107
    iget-wide v4, v3, Lv0/k;->c:J

    .line 108
    .line 109
    iget-wide v7, v3, Lv0/k;->b:J

    .line 110
    .line 111
    move-wide/from16 v17, v4

    .line 112
    .line 113
    invoke-static/range {v7 .. v18}, Lv0/k;->calculateNextSearchBytePosition(JJJJJJ)J

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    iput-wide v4, v3, Lv0/k;->h:J

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    move-wide v11, v9

    .line 121
    iput-wide v11, v3, Lv0/k;->d:J

    .line 122
    .line 123
    iput-wide v13, v3, Lv0/k;->f:J

    .line 124
    .line 125
    iget-wide v11, v3, Lv0/k;->e:J

    .line 126
    .line 127
    iget-wide v4, v3, Lv0/k;->g:J

    .line 128
    .line 129
    iget-wide v6, v3, Lv0/k;->c:J

    .line 130
    .line 131
    move-wide/from16 v17, v6

    .line 132
    .line 133
    iget-wide v7, v3, Lv0/k;->b:J

    .line 134
    .line 135
    move-wide v15, v4

    .line 136
    invoke-static/range {v7 .. v18}, Lv0/k;->calculateNextSearchBytePosition(JJJJJJ)J

    .line 137
    .line 138
    .line 139
    move-result-wide v4

    .line 140
    iput-wide v4, v3, Lv0/k;->h:J

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_5
    invoke-virtual {v0, v7, v8, v9}, Lv0/p;->markSeekOperationFinished(ZJ)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1, v8, v9, v2}, Lv0/p;->seekToPosition(Lv0/D;JLv0/c0;)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    return v1
.end method

.method public final isSeeking()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/p;->c:Lv0/k;

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

.method public final markSeekOperationFinished(ZJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lv0/p;->c:Lv0/k;

    .line 3
    .line 4
    iget-object v0, p0, Lv0/p;->b:Lv0/o;

    .line 5
    .line 6
    invoke-interface {v0}, Lv0/o;->onSeekFinished()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lv0/p;->onSeekOperationFinished(ZJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onSeekOperationFinished(ZJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final seekToPosition(Lv0/D;JLv0/c0;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long p1, p2, v0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iput-wide p2, p4, Lv0/c0;->a:J

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public final setSeekTargetUs(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv0/p;->c:Lv0/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, v0, Lv0/k;->a:J

    .line 6
    .line 7
    cmp-long v0, v0, p1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Lv0/p;->createSeekParamsForTargetTimeUs(J)Lv0/k;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lv0/p;->c:Lv0/k;

    .line 17
    .line 18
    return-void
.end method

.method public final skipInputUntilPosition(Lv0/D;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lv0/D;->getPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr p2, v0

    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p2, v0

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    const-wide/32 v0, 0x40000

    .line 13
    .line 14
    .line 15
    cmp-long v0, p2, v0

    .line 16
    .line 17
    if-gtz v0, :cond_0

    .line 18
    .line 19
    long-to-int p2, p2

    .line 20
    invoke-interface {p1, p2}, Lv0/D;->skipFully(I)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method
