.class public final Lw0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# static fields
.field public static final s:[I

.field public static final t:[I

.field public static final u:[B

.field public static final v:[B


# instance fields
.field public final a:[B

.field public final b:I

.field public final c:Lv0/y;

.field public d:Z

.field public e:J

.field public f:I

.field public g:I

.field public h:J

.field public i:I

.field public j:I

.field public k:J

.field public l:Lv0/F;

.field public m:Lv0/r0;

.field public n:Lv0/r0;

.field public o:Lv0/g0;

.field public p:Z

.field public q:J

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lw0/a;->s:[I

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lw0/a;->t:[I

    .line 16
    .line 17
    const-string v0, "#!AMR\n"

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lw0/a;->u:[B

    .line 24
    .line 25
    const-string v0, "#!AMR-WB\n"

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lw0/a;->v:[B

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x2

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    :cond_0
    iput p1, p0, Lw0/a;->b:I

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    new-array p1, p1, [B

    .line 14
    .line 15
    iput-object p1, p0, Lw0/a;->a:[B

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lw0/a;->i:I

    .line 19
    .line 20
    new-instance p1, Lv0/y;

    .line 21
    .line 22
    invoke-direct {p1}, Lv0/y;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lw0/a;->c:Lv0/y;

    .line 26
    .line 27
    iput-object p1, p0, Lw0/a;->n:Lv0/r0;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lv0/D;)I
    .locals 3

    .line 1
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw0/a;->a:[B

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {p1, v0, v1, v2}, Lv0/D;->peekFully([BII)V

    .line 9
    .line 10
    .line 11
    aget-byte p1, v0, v1

    .line 12
    .line 13
    and-int/lit16 v0, p1, 0x83

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-gtz v0, :cond_5

    .line 17
    .line 18
    shr-int/lit8 p1, p1, 0x3

    .line 19
    .line 20
    const/16 v0, 0xf

    .line 21
    .line 22
    and-int/2addr p1, v0

    .line 23
    if-ltz p1, :cond_3

    .line 24
    .line 25
    if-gt p1, v0, :cond_3

    .line 26
    .line 27
    iget-boolean v0, p0, Lw0/a;->d:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/16 v2, 0xa

    .line 32
    .line 33
    if-lt p1, v2, :cond_1

    .line 34
    .line 35
    const/16 v2, 0xd

    .line 36
    .line 37
    if-le p1, v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    if-nez v0, :cond_3

    .line 41
    .line 42
    const/16 v2, 0xc

    .line 43
    .line 44
    if-lt p1, v2, :cond_1

    .line 45
    .line 46
    const/16 v2, 0xe

    .line 47
    .line 48
    if-le p1, v2, :cond_3

    .line 49
    .line 50
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 51
    .line 52
    sget-object v0, Lw0/a;->t:[I

    .line 53
    .line 54
    aget p1, v0, p1

    .line 55
    .line 56
    return p1

    .line 57
    :cond_2
    sget-object v0, Lw0/a;->s:[I

    .line 58
    .line 59
    aget p1, v0, p1

    .line 60
    .line 61
    return p1

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "Illegal AMR "

    .line 65
    .line 66
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-boolean v2, p0, Lw0/a;->d:Z

    .line 70
    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    const-string v2, "WB"

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    const-string v2, "NB"

    .line 77
    .line 78
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, " frame type "

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    throw p1

    .line 98
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v2, "Invalid padding bits for frame header "

    .line 101
    .line 102
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    throw p1
.end method

.method public final b(Lv0/D;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lw0/a;->u:[B

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    array-length v2, v0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-interface {p1, v1, v3, v2}, Lv0/D;->peekFully([BII)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iput-boolean v3, p0, Lw0/a;->d:Z

    .line 22
    .line 23
    array-length v0, v0

    .line 24
    invoke-interface {p1, v0}, Lv0/D;->skipFully(I)V

    .line 25
    .line 26
    .line 27
    return v2

    .line 28
    :cond_0
    invoke-interface {p1}, Lv0/D;->resetPeekPosition()V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lw0/a;->v:[B

    .line 32
    .line 33
    array-length v1, v0

    .line 34
    new-array v1, v1, [B

    .line 35
    .line 36
    array-length v4, v0

    .line 37
    invoke-interface {p1, v1, v3, v4}, Lv0/D;->peekFully([BII)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iput-boolean v2, p0, Lw0/a;->d:Z

    .line 47
    .line 48
    array-length v0, v0

    .line 49
    invoke-interface {p1, v0}, Lv0/D;->skipFully(I)V

    .line 50
    .line 51
    .line 52
    return v2

    .line 53
    :cond_1
    return v3
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
    iput-object p1, p0, Lw0/a;->l:Lv0/F;

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
    move-result-object v0

    .line 9
    iput-object v0, p0, Lw0/a;->m:Lv0/r0;

    .line 10
    .line 11
    iput-object v0, p0, Lw0/a;->n:Lv0/r0;

    .line 12
    .line 13
    invoke-interface {p1}, Lv0/F;->endTracks()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, v0, Lw0/a;->m:Lv0/r0;

    .line 6
    .line 7
    invoke-static {v3}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Lw0/a;->l:Lv0/F;

    .line 11
    .line 12
    invoke-static {v3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-interface/range {p1 .. p1}, Lv0/D;->getPosition()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    const-wide/16 v5, 0x0

    .line 20
    .line 21
    cmp-long v3, v3, v5

    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p1}, Lw0/a;->b(Lv0/D;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v1, "Could not find AMR header."

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    throw v1

    .line 40
    :cond_1
    :goto_0
    iget-boolean v3, v0, Lw0/a;->r:Z

    .line 41
    .line 42
    if-nez v3, :cond_6

    .line 43
    .line 44
    iput-boolean v2, v0, Lw0/a;->r:Z

    .line 45
    .line 46
    iget-boolean v3, v0, Lw0/a;->d:Z

    .line 47
    .line 48
    const-string v4, "audio/amr-wb"

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    move-object v7, v4

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const-string v7, "audio/amr"

    .line 55
    .line 56
    :goto_1
    if-eqz v3, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    const-string v4, "audio/3gpp"

    .line 60
    .line 61
    :goto_2
    if-eqz v3, :cond_4

    .line 62
    .line 63
    const/16 v8, 0x3e80

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v8, 0x1f40

    .line 67
    .line 68
    :goto_3
    if-eqz v3, :cond_5

    .line 69
    .line 70
    sget-object v3, Lw0/a;->t:[I

    .line 71
    .line 72
    const/16 v9, 0x8

    .line 73
    .line 74
    aget v3, v3, v9

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_5
    sget-object v3, Lw0/a;->s:[I

    .line 78
    .line 79
    const/4 v9, 0x7

    .line 80
    aget v3, v3, v9

    .line 81
    .line 82
    :goto_4
    iget-object v9, v0, Lw0/a;->m:Lv0/r0;

    .line 83
    .line 84
    new-instance v10, Landroidx/media3/common/Format$Builder;

    .line 85
    .line 86
    invoke-direct {v10}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v10, v7}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v7, v4}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v4, v3}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3, v8}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-interface {v9, v3}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    iget v3, v0, Lw0/a;->g:I

    .line 117
    .line 118
    const-wide/16 v7, 0x4e20

    .line 119
    .line 120
    const/4 v4, -0x1

    .line 121
    if-nez v3, :cond_a

    .line 122
    .line 123
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lw0/a;->a(Lv0/D;)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    iput v3, v0, Lw0/a;->f:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    iput v3, v0, Lw0/a;->g:I

    .line 130
    .line 131
    iget v3, v0, Lw0/a;->i:I

    .line 132
    .line 133
    if-ne v3, v4, :cond_7

    .line 134
    .line 135
    invoke-interface/range {p1 .. p1}, Lv0/D;->getPosition()J

    .line 136
    .line 137
    .line 138
    move-result-wide v9

    .line 139
    iput-wide v9, v0, Lw0/a;->h:J

    .line 140
    .line 141
    iget v3, v0, Lw0/a;->f:I

    .line 142
    .line 143
    iput v3, v0, Lw0/a;->i:I

    .line 144
    .line 145
    :cond_7
    iget v3, v0, Lw0/a;->i:I

    .line 146
    .line 147
    iget v9, v0, Lw0/a;->f:I

    .line 148
    .line 149
    if-ne v3, v9, :cond_8

    .line 150
    .line 151
    iget v3, v0, Lw0/a;->j:I

    .line 152
    .line 153
    add-int/2addr v3, v2

    .line 154
    iput v3, v0, Lw0/a;->j:I

    .line 155
    .line 156
    :cond_8
    iget-object v3, v0, Lw0/a;->o:Lv0/g0;

    .line 157
    .line 158
    instance-of v9, v3, Lv0/X;

    .line 159
    .line 160
    if-eqz v9, :cond_a

    .line 161
    .line 162
    check-cast v3, Lv0/X;

    .line 163
    .line 164
    iget-wide v9, v0, Lw0/a;->k:J

    .line 165
    .line 166
    iget-wide v11, v0, Lw0/a;->e:J

    .line 167
    .line 168
    add-long/2addr v9, v11

    .line 169
    add-long/2addr v9, v7

    .line 170
    invoke-interface/range {p1 .. p1}, Lv0/D;->getPosition()J

    .line 171
    .line 172
    .line 173
    move-result-wide v11

    .line 174
    iget v13, v0, Lw0/a;->f:I

    .line 175
    .line 176
    int-to-long v13, v13

    .line 177
    add-long/2addr v11, v13

    .line 178
    const-wide/32 v13, 0x186a0

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v9, v10, v13, v14}, Lv0/X;->isTimeUsInIndex(JJ)Z

    .line 182
    .line 183
    .line 184
    move-result v13

    .line 185
    if-nez v13, :cond_9

    .line 186
    .line 187
    invoke-virtual {v3, v9, v10, v11, v12}, Lv0/X;->addSeekPoint(JJ)V

    .line 188
    .line 189
    .line 190
    :cond_9
    iget-boolean v3, v0, Lw0/a;->p:Z

    .line 191
    .line 192
    if-eqz v3, :cond_a

    .line 193
    .line 194
    iget-wide v11, v0, Lw0/a;->q:J

    .line 195
    .line 196
    sub-long/2addr v11, v9

    .line 197
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    .line 198
    .line 199
    .line 200
    move-result-wide v9

    .line 201
    cmp-long v3, v9, v7

    .line 202
    .line 203
    if-gez v3, :cond_a

    .line 204
    .line 205
    iput-boolean v1, v0, Lw0/a;->p:Z

    .line 206
    .line 207
    iget-object v3, v0, Lw0/a;->m:Lv0/r0;

    .line 208
    .line 209
    iput-object v3, v0, Lw0/a;->n:Lv0/r0;

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :catch_0
    move-object/from16 v10, p1

    .line 213
    .line 214
    :goto_5
    move v3, v4

    .line 215
    goto :goto_8

    .line 216
    :cond_a
    :goto_6
    iget-object v3, v0, Lw0/a;->n:Lv0/r0;

    .line 217
    .line 218
    iget v9, v0, Lw0/a;->g:I

    .line 219
    .line 220
    move-object/from16 v10, p1

    .line 221
    .line 222
    invoke-interface {v3, v10, v9, v2}, Lv0/r0;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-ne v3, v4, :cond_b

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_b
    iget v9, v0, Lw0/a;->g:I

    .line 230
    .line 231
    sub-int/2addr v9, v3

    .line 232
    iput v9, v0, Lw0/a;->g:I

    .line 233
    .line 234
    if-lez v9, :cond_c

    .line 235
    .line 236
    :goto_7
    move v3, v1

    .line 237
    goto :goto_8

    .line 238
    :cond_c
    iget-object v11, v0, Lw0/a;->n:Lv0/r0;

    .line 239
    .line 240
    iget-wide v12, v0, Lw0/a;->k:J

    .line 241
    .line 242
    iget-wide v14, v0, Lw0/a;->e:J

    .line 243
    .line 244
    add-long/2addr v12, v14

    .line 245
    iget v15, v0, Lw0/a;->f:I

    .line 246
    .line 247
    const/4 v14, 0x1

    .line 248
    const/16 v16, 0x0

    .line 249
    .line 250
    const/16 v17, 0x0

    .line 251
    .line 252
    invoke-interface/range {v11 .. v17}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 253
    .line 254
    .line 255
    iget-wide v11, v0, Lw0/a;->e:J

    .line 256
    .line 257
    add-long/2addr v11, v7

    .line 258
    iput-wide v11, v0, Lw0/a;->e:J

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :goto_8
    invoke-interface {v10}, Lv0/D;->getLength()J

    .line 262
    .line 263
    .line 264
    move-result-wide v10

    .line 265
    iget-object v9, v0, Lw0/a;->o:Lv0/g0;

    .line 266
    .line 267
    if-eqz v9, :cond_d

    .line 268
    .line 269
    goto :goto_c

    .line 270
    :cond_d
    iget v9, v0, Lw0/a;->b:I

    .line 271
    .line 272
    and-int/lit8 v12, v9, 0x4

    .line 273
    .line 274
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    if-eqz v12, :cond_e

    .line 280
    .line 281
    new-instance v7, Lv0/X;

    .line 282
    .line 283
    iget-wide v8, v0, Lw0/a;->h:J

    .line 284
    .line 285
    new-array v10, v2, [J

    .line 286
    .line 287
    aput-wide v8, v10, v1

    .line 288
    .line 289
    new-array v2, v2, [J

    .line 290
    .line 291
    aput-wide v5, v2, v1

    .line 292
    .line 293
    invoke-direct {v7, v10, v2, v13, v14}, Lv0/X;-><init>([J[JJ)V

    .line 294
    .line 295
    .line 296
    iput-object v7, v0, Lw0/a;->o:Lv0/g0;

    .line 297
    .line 298
    goto :goto_b

    .line 299
    :cond_e
    and-int/lit8 v5, v9, 0x1

    .line 300
    .line 301
    if-eqz v5, :cond_12

    .line 302
    .line 303
    iget v15, v0, Lw0/a;->i:I

    .line 304
    .line 305
    if-eq v15, v4, :cond_f

    .line 306
    .line 307
    iget v5, v0, Lw0/a;->f:I

    .line 308
    .line 309
    if-eq v15, v5, :cond_f

    .line 310
    .line 311
    goto :goto_a

    .line 312
    :cond_f
    iget v5, v0, Lw0/a;->j:I

    .line 313
    .line 314
    const/16 v6, 0x14

    .line 315
    .line 316
    if-ge v5, v6, :cond_10

    .line 317
    .line 318
    if-ne v3, v4, :cond_13

    .line 319
    .line 320
    :cond_10
    and-int/lit8 v5, v9, 0x2

    .line 321
    .line 322
    if-eqz v5, :cond_11

    .line 323
    .line 324
    move/from16 v16, v2

    .line 325
    .line 326
    goto :goto_9

    .line 327
    :cond_11
    move/from16 v16, v1

    .line 328
    .line 329
    :goto_9
    int-to-long v1, v15

    .line 330
    const-wide/32 v5, 0x7a1200

    .line 331
    .line 332
    .line 333
    mul-long/2addr v1, v5

    .line 334
    div-long/2addr v1, v7

    .line 335
    long-to-int v14, v1

    .line 336
    new-instance v9, Lv0/t;

    .line 337
    .line 338
    iget-wide v12, v0, Lw0/a;->h:J

    .line 339
    .line 340
    invoke-direct/range {v9 .. v16}, Lv0/t;-><init>(JJIIZ)V

    .line 341
    .line 342
    .line 343
    iput-object v9, v0, Lw0/a;->o:Lv0/g0;

    .line 344
    .line 345
    iget-object v1, v0, Lw0/a;->m:Lv0/r0;

    .line 346
    .line 347
    invoke-interface {v9}, Lv0/g0;->getDurationUs()J

    .line 348
    .line 349
    .line 350
    move-result-wide v5

    .line 351
    invoke-interface {v1, v5, v6}, Lv0/r0;->durationUs(J)V

    .line 352
    .line 353
    .line 354
    goto :goto_b

    .line 355
    :cond_12
    :goto_a
    new-instance v1, Lv0/f0;

    .line 356
    .line 357
    invoke-direct {v1, v13, v14}, Lv0/f0;-><init>(J)V

    .line 358
    .line 359
    .line 360
    iput-object v1, v0, Lw0/a;->o:Lv0/g0;

    .line 361
    .line 362
    :cond_13
    :goto_b
    iget-object v1, v0, Lw0/a;->o:Lv0/g0;

    .line 363
    .line 364
    if-eqz v1, :cond_14

    .line 365
    .line 366
    iget-object v2, v0, Lw0/a;->l:Lv0/F;

    .line 367
    .line 368
    invoke-interface {v2, v1}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 369
    .line 370
    .line 371
    :cond_14
    :goto_c
    if-ne v3, v4, :cond_15

    .line 372
    .line 373
    iget-object v1, v0, Lw0/a;->o:Lv0/g0;

    .line 374
    .line 375
    instance-of v2, v1, Lv0/X;

    .line 376
    .line 377
    if-eqz v2, :cond_15

    .line 378
    .line 379
    iget-wide v4, v0, Lw0/a;->k:J

    .line 380
    .line 381
    iget-wide v6, v0, Lw0/a;->e:J

    .line 382
    .line 383
    add-long/2addr v4, v6

    .line 384
    check-cast v1, Lv0/X;

    .line 385
    .line 386
    invoke-virtual {v1, v4, v5}, Lv0/X;->setDurationUs(J)V

    .line 387
    .line 388
    .line 389
    iget-object v1, v0, Lw0/a;->l:Lv0/F;

    .line 390
    .line 391
    iget-object v2, v0, Lw0/a;->o:Lv0/g0;

    .line 392
    .line 393
    invoke-interface {v1, v2}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 394
    .line 395
    .line 396
    iget-object v1, v0, Lw0/a;->m:Lv0/r0;

    .line 397
    .line 398
    invoke-interface {v1, v4, v5}, Lv0/r0;->durationUs(J)V

    .line 399
    .line 400
    .line 401
    :cond_15
    return v3
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lw0/a;->e:J

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lw0/a;->f:I

    .line 7
    .line 8
    iput v2, p0, Lw0/a;->g:I

    .line 9
    .line 10
    iput-wide p3, p0, Lw0/a;->q:J

    .line 11
    .line 12
    iget-object p3, p0, Lw0/a;->o:Lv0/g0;

    .line 13
    .line 14
    instance-of p4, p3, Lv0/X;

    .line 15
    .line 16
    if-eqz p4, :cond_1

    .line 17
    .line 18
    check-cast p3, Lv0/X;

    .line 19
    .line 20
    invoke-virtual {p3, p1, p2}, Lv0/X;->getTimeUs(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    iput-wide p1, p0, Lw0/a;->k:J

    .line 25
    .line 26
    iget-wide p3, p0, Lw0/a;->q:J

    .line 27
    .line 28
    sub-long/2addr p3, p1

    .line 29
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    const-wide/16 p3, 0x4e20

    .line 34
    .line 35
    cmp-long p1, p1, p3

    .line 36
    .line 37
    if-gez p1, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lw0/a;->p:Z

    .line 42
    .line 43
    iget-object p1, p0, Lw0/a;->c:Lv0/y;

    .line 44
    .line 45
    iput-object p1, p0, Lw0/a;->n:Lv0/r0;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    cmp-long p4, p1, v0

    .line 49
    .line 50
    if-eqz p4, :cond_2

    .line 51
    .line 52
    instance-of p4, p3, Lv0/t;

    .line 53
    .line 54
    if-eqz p4, :cond_2

    .line 55
    .line 56
    check-cast p3, Lv0/t;

    .line 57
    .line 58
    invoke-virtual {p3, p1, p2}, Lv0/t;->getTimeUsAtPosition(J)J

    .line 59
    .line 60
    .line 61
    move-result-wide p1

    .line 62
    iput-wide p1, p0, Lw0/a;->k:J

    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    iput-wide v0, p0, Lw0/a;->k:J

    .line 66
    .line 67
    return-void
.end method

.method public sniff(Lv0/D;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lw0/a;->b(Lv0/D;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
