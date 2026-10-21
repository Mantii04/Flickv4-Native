.class public final Ld1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld1/b;


# static fields
.field public static final m:[I

.field public static final n:[I


# instance fields
.field public final a:Lv0/F;

.field public final b:Lv0/r0;

.field public final c:Ld1/e;

.field public final d:I

.field public final e:[B

.field public final f:Landroidx/media3/common/util/ParsableByteArray;

.field public final g:I

.field public final h:Landroidx/media3/common/Format;

.field public i:I

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Ld1/a;->m:[I

    .line 9
    .line 10
    const/16 v0, 0x59

    .line 11
    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Ld1/a;->n:[I

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    .line 22
    .line 23
    .line 24
    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Lv0/F;Lv0/r0;Ld1/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld1/a;->a:Lv0/F;

    .line 5
    .line 6
    iput-object p2, p0, Ld1/a;->b:Lv0/r0;

    .line 7
    .line 8
    iput-object p3, p0, Ld1/a;->c:Ld1/e;

    .line 9
    .line 10
    iget p1, p3, Ld1/e;->c:I

    .line 11
    .line 12
    div-int/lit8 p1, p1, 0xa

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Ld1/a;->g:I

    .line 20
    .line 21
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 22
    .line 23
    iget-object v1, p3, Ld1/e;->f:[B

    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Ld1/a;->d:I

    .line 36
    .line 37
    iget v1, p3, Ld1/e;->b:I

    .line 38
    .line 39
    mul-int/lit8 v2, v1, 0x4

    .line 40
    .line 41
    iget v3, p3, Ld1/e;->d:I

    .line 42
    .line 43
    sub-int v2, v3, v2

    .line 44
    .line 45
    mul-int/lit8 v2, v2, 0x8

    .line 46
    .line 47
    iget v4, p3, Ld1/e;->e:I

    .line 48
    .line 49
    mul-int/2addr v4, v1

    .line 50
    div-int/2addr v2, v4

    .line 51
    add-int/2addr v2, p2

    .line 52
    if-ne v0, v2, :cond_0

    .line 53
    .line 54
    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    mul-int v2, p2, v3

    .line 59
    .line 60
    new-array v2, v2, [B

    .line 61
    .line 62
    iput-object v2, p0, Ld1/a;->e:[B

    .line 63
    .line 64
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 65
    .line 66
    mul-int/lit8 v4, v0, 0x2

    .line 67
    .line 68
    mul-int/2addr v4, v1

    .line 69
    mul-int/2addr v4, p2

    .line 70
    invoke-direct {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Ld1/a;->f:Landroidx/media3/common/util/ParsableByteArray;

    .line 74
    .line 75
    iget p2, p3, Ld1/e;->c:I

    .line 76
    .line 77
    mul-int/2addr v3, p2

    .line 78
    mul-int/lit8 v3, v3, 0x8

    .line 79
    .line 80
    div-int/2addr v3, v0

    .line 81
    new-instance p3, Landroidx/media3/common/Format$Builder;

    .line 82
    .line 83
    invoke-direct {p3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v0, "audio/raw"

    .line 87
    .line 88
    invoke-virtual {p3, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-virtual {p3, v3}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-virtual {p3, v3}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    const/4 v0, 0x2

    .line 101
    mul-int/2addr p1, v0

    .line 102
    mul-int/2addr p1, v1

    .line 103
    invoke-virtual {p3, p1}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iput-object p1, p0, Ld1/a;->h:Landroidx/media3/common/Format;

    .line 124
    .line 125
    return-void

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string p2, "Expected frames per block: "

    .line 129
    .line 130
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p2, "; got: "

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const/4 p2, 0x0

    .line 149
    invoke-static {p1, p2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    throw p1
.end method


# virtual methods
.method public final a(I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-wide v2, v0, Ld1/a;->j:J

    .line 6
    .line 7
    iget-wide v4, v0, Ld1/a;->l:J

    .line 8
    .line 9
    iget-object v10, v0, Ld1/a;->c:Ld1/e;

    .line 10
    .line 11
    iget v6, v10, Ld1/e;->c:I

    .line 12
    .line 13
    int-to-long v8, v6

    .line 14
    const-wide/32 v6, 0xf4240

    .line 15
    .line 16
    .line 17
    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    add-long v12, v2, v4

    .line 22
    .line 23
    iget v2, v10, Ld1/e;->b:I

    .line 24
    .line 25
    mul-int/lit8 v3, v1, 0x2

    .line 26
    .line 27
    mul-int v15, v3, v2

    .line 28
    .line 29
    iget v2, v0, Ld1/a;->k:I

    .line 30
    .line 31
    sub-int v16, v2, v15

    .line 32
    .line 33
    const/16 v17, 0x0

    .line 34
    .line 35
    iget-object v11, v0, Ld1/a;->b:Lv0/r0;

    .line 36
    .line 37
    const/4 v14, 0x1

    .line 38
    invoke-interface/range {v11 .. v17}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 39
    .line 40
    .line 41
    iget-wide v2, v0, Ld1/a;->l:J

    .line 42
    .line 43
    int-to-long v4, v1

    .line 44
    add-long/2addr v2, v4

    .line 45
    iput-wide v2, v0, Ld1/a;->l:J

    .line 46
    .line 47
    iget v1, v0, Ld1/a;->k:I

    .line 48
    .line 49
    sub-int/2addr v1, v15

    .line 50
    iput v1, v0, Ld1/a;->k:I

    .line 51
    .line 52
    return-void
.end method

.method public init(IJ)V
    .locals 7

    .line 1
    new-instance v0, Ld1/h;

    .line 2
    .line 3
    iget v2, p0, Ld1/a;->d:I

    .line 4
    .line 5
    int-to-long v3, p1

    .line 6
    iget-object v1, p0, Ld1/a;->c:Ld1/e;

    .line 7
    .line 8
    move-wide v5, p2

    .line 9
    invoke-direct/range {v0 .. v6}, Ld1/h;-><init>(Ld1/e;IJJ)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Ld1/a;->a:Lv0/F;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Ld1/a;->h:Landroidx/media3/common/Format;

    .line 18
    .line 19
    iget-object p2, p0, Ld1/a;->b:Lv0/r0;

    .line 20
    .line 21
    invoke-interface {p2, p1}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ld1/h;->getDurationUs()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-interface {p2, v0, v1}, Lv0/r0;->durationUs(J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public reset(J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ld1/a;->i:I

    .line 3
    .line 4
    iput-wide p1, p0, Ld1/a;->j:J

    .line 5
    .line 6
    iput v0, p0, Ld1/a;->k:I

    .line 7
    .line 8
    const-wide/16 p1, 0x0

    .line 9
    .line 10
    iput-wide p1, p0, Ld1/a;->l:J

    .line 11
    .line 12
    return-void
.end method

.method public sampleData(Lv0/D;J)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    iget v3, v0, Ld1/a;->k:I

    .line 6
    .line 7
    iget-object v4, v0, Ld1/a;->c:Ld1/e;

    .line 8
    .line 9
    iget v5, v4, Ld1/e;->b:I

    .line 10
    .line 11
    mul-int/lit8 v5, v5, 0x2

    .line 12
    .line 13
    div-int/2addr v3, v5

    .line 14
    iget v5, v0, Ld1/a;->g:I

    .line 15
    .line 16
    sub-int v3, v5, v3

    .line 17
    .line 18
    iget v6, v0, Ld1/a;->d:I

    .line 19
    .line 20
    invoke-static {v3, v6}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget v7, v4, Ld1/e;->d:I

    .line 25
    .line 26
    mul-int/2addr v3, v7

    .line 27
    const-wide/16 v7, 0x0

    .line 28
    .line 29
    cmp-long v7, v1, v7

    .line 30
    .line 31
    if-nez v7, :cond_0

    .line 32
    .line 33
    :goto_0
    const/4 v7, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/4 v7, 0x0

    .line 36
    :goto_1
    iget-object v10, v0, Ld1/a;->e:[B

    .line 37
    .line 38
    if-nez v7, :cond_2

    .line 39
    .line 40
    iget v11, v0, Ld1/a;->i:I

    .line 41
    .line 42
    if-ge v11, v3, :cond_2

    .line 43
    .line 44
    sub-int v11, v3, v11

    .line 45
    .line 46
    int-to-long v11, v11

    .line 47
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v11

    .line 51
    long-to-int v11, v11

    .line 52
    iget v12, v0, Ld1/a;->i:I

    .line 53
    .line 54
    move-object/from16 v13, p1

    .line 55
    .line 56
    invoke-interface {v13, v10, v12, v11}, Lv0/D;->read([BII)I

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    const/4 v11, -0x1

    .line 61
    if-ne v10, v11, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget v11, v0, Ld1/a;->i:I

    .line 65
    .line 66
    add-int/2addr v11, v10

    .line 67
    iput v11, v0, Ld1/a;->i:I

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    iget v1, v0, Ld1/a;->i:I

    .line 71
    .line 72
    iget v2, v4, Ld1/e;->d:I

    .line 73
    .line 74
    div-int/2addr v1, v2

    .line 75
    if-lez v1, :cond_8

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    :goto_2
    iget-object v11, v0, Ld1/a;->f:Landroidx/media3/common/util/ParsableByteArray;

    .line 79
    .line 80
    if-ge v3, v1, :cond_7

    .line 81
    .line 82
    const/4 v12, 0x0

    .line 83
    :goto_3
    iget v13, v4, Ld1/e;->b:I

    .line 84
    .line 85
    if-ge v12, v13, :cond_6

    .line 86
    .line 87
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    mul-int v15, v3, v2

    .line 92
    .line 93
    mul-int/lit8 v16, v12, 0x4

    .line 94
    .line 95
    add-int v16, v16, v15

    .line 96
    .line 97
    mul-int/lit8 v15, v13, 0x4

    .line 98
    .line 99
    add-int v15, v15, v16

    .line 100
    .line 101
    div-int v17, v2, v13

    .line 102
    .line 103
    add-int/lit8 v17, v17, -0x4

    .line 104
    .line 105
    add-int/lit8 v18, v16, 0x1

    .line 106
    .line 107
    const/16 v19, 0x1

    .line 108
    .line 109
    aget-byte v8, v10, v18

    .line 110
    .line 111
    and-int/lit16 v8, v8, 0xff

    .line 112
    .line 113
    shl-int/lit8 v8, v8, 0x8

    .line 114
    .line 115
    aget-byte v9, v10, v16

    .line 116
    .line 117
    and-int/lit16 v9, v9, 0xff

    .line 118
    .line 119
    or-int/2addr v8, v9

    .line 120
    int-to-short v8, v8

    .line 121
    add-int/lit8 v16, v16, 0x2

    .line 122
    .line 123
    aget-byte v9, v10, v16

    .line 124
    .line 125
    and-int/lit16 v9, v9, 0xff

    .line 126
    .line 127
    move/from16 p1, v1

    .line 128
    .line 129
    const/16 v1, 0x58

    .line 130
    .line 131
    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    sget-object v16, Ld1/a;->n:[I

    .line 136
    .line 137
    aget v20, v16, v9

    .line 138
    .line 139
    mul-int v21, v3, v6

    .line 140
    .line 141
    mul-int v21, v21, v13

    .line 142
    .line 143
    add-int v21, v21, v12

    .line 144
    .line 145
    mul-int/lit8 v21, v21, 0x2

    .line 146
    .line 147
    and-int/lit16 v1, v8, 0xff

    .line 148
    .line 149
    int-to-byte v1, v1

    .line 150
    aput-byte v1, v14, v21

    .line 151
    .line 152
    add-int/lit8 v1, v21, 0x1

    .line 153
    .line 154
    move/from16 p3, v1

    .line 155
    .line 156
    shr-int/lit8 v1, v8, 0x8

    .line 157
    .line 158
    int-to-byte v1, v1

    .line 159
    aput-byte v1, v14, p3

    .line 160
    .line 161
    move/from16 p3, v2

    .line 162
    .line 163
    const/4 v1, 0x0

    .line 164
    :goto_4
    mul-int/lit8 v2, v17, 0x2

    .line 165
    .line 166
    if-ge v1, v2, :cond_5

    .line 167
    .line 168
    div-int/lit8 v2, v1, 0x8

    .line 169
    .line 170
    div-int/lit8 v22, v1, 0x2

    .line 171
    .line 172
    rem-int/lit8 v22, v22, 0x4

    .line 173
    .line 174
    mul-int/2addr v2, v13

    .line 175
    mul-int/lit8 v2, v2, 0x4

    .line 176
    .line 177
    add-int/2addr v2, v15

    .line 178
    add-int v2, v2, v22

    .line 179
    .line 180
    aget-byte v2, v10, v2

    .line 181
    .line 182
    move/from16 v22, v1

    .line 183
    .line 184
    and-int/lit16 v1, v2, 0xff

    .line 185
    .line 186
    rem-int/lit8 v23, v22, 0x2

    .line 187
    .line 188
    if-nez v23, :cond_3

    .line 189
    .line 190
    and-int/lit8 v1, v2, 0xf

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_3
    shr-int/lit8 v1, v1, 0x4

    .line 194
    .line 195
    :goto_5
    and-int/lit8 v2, v1, 0x7

    .line 196
    .line 197
    mul-int/lit8 v2, v2, 0x2

    .line 198
    .line 199
    add-int/lit8 v2, v2, 0x1

    .line 200
    .line 201
    mul-int v2, v2, v20

    .line 202
    .line 203
    shr-int/lit8 v2, v2, 0x3

    .line 204
    .line 205
    and-int/lit8 v20, v1, 0x8

    .line 206
    .line 207
    if-eqz v20, :cond_4

    .line 208
    .line 209
    neg-int v2, v2

    .line 210
    :cond_4
    add-int/2addr v8, v2

    .line 211
    const/16 v2, -0x8000

    .line 212
    .line 213
    move/from16 v20, v1

    .line 214
    .line 215
    const/16 v1, 0x7fff

    .line 216
    .line 217
    invoke-static {v8, v2, v1}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    mul-int/lit8 v1, v13, 0x2

    .line 222
    .line 223
    add-int v21, v1, v21

    .line 224
    .line 225
    and-int/lit16 v1, v8, 0xff

    .line 226
    .line 227
    int-to-byte v1, v1

    .line 228
    aput-byte v1, v14, v21

    .line 229
    .line 230
    add-int/lit8 v1, v21, 0x1

    .line 231
    .line 232
    shr-int/lit8 v2, v8, 0x8

    .line 233
    .line 234
    int-to-byte v2, v2

    .line 235
    aput-byte v2, v14, v1

    .line 236
    .line 237
    sget-object v1, Ld1/a;->m:[I

    .line 238
    .line 239
    aget v1, v1, v20

    .line 240
    .line 241
    add-int/2addr v9, v1

    .line 242
    const/4 v1, 0x0

    .line 243
    const/16 v2, 0x58

    .line 244
    .line 245
    invoke-static {v9, v1, v2}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    aget v20, v16, v9

    .line 250
    .line 251
    add-int/lit8 v1, v22, 0x1

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 255
    .line 256
    move/from16 v1, p1

    .line 257
    .line 258
    move/from16 v2, p3

    .line 259
    .line 260
    goto/16 :goto_3

    .line 261
    .line 262
    :cond_6
    move/from16 p1, v1

    .line 263
    .line 264
    move/from16 p3, v2

    .line 265
    .line 266
    const/16 v19, 0x1

    .line 267
    .line 268
    add-int/lit8 v3, v3, 0x1

    .line 269
    .line 270
    goto/16 :goto_2

    .line 271
    .line 272
    :cond_7
    move/from16 p1, v1

    .line 273
    .line 274
    move/from16 p3, v2

    .line 275
    .line 276
    mul-int v6, v6, p1

    .line 277
    .line 278
    iget v1, v4, Ld1/e;->b:I

    .line 279
    .line 280
    mul-int/lit8 v6, v6, 0x2

    .line 281
    .line 282
    mul-int/2addr v6, v1

    .line 283
    const/4 v1, 0x0

    .line 284
    invoke-virtual {v11, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v11, v6}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 288
    .line 289
    .line 290
    iget v1, v0, Ld1/a;->i:I

    .line 291
    .line 292
    mul-int v2, p1, p3

    .line 293
    .line 294
    sub-int/2addr v1, v2

    .line 295
    iput v1, v0, Ld1/a;->i:I

    .line 296
    .line 297
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    iget-object v2, v0, Ld1/a;->b:Lv0/r0;

    .line 302
    .line 303
    invoke-interface {v2, v11, v1}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 304
    .line 305
    .line 306
    iget v2, v0, Ld1/a;->k:I

    .line 307
    .line 308
    add-int/2addr v2, v1

    .line 309
    iput v2, v0, Ld1/a;->k:I

    .line 310
    .line 311
    iget v1, v4, Ld1/e;->b:I

    .line 312
    .line 313
    mul-int/lit8 v1, v1, 0x2

    .line 314
    .line 315
    div-int/2addr v2, v1

    .line 316
    if-lt v2, v5, :cond_8

    .line 317
    .line 318
    invoke-virtual {v0, v5}, Ld1/a;->a(I)V

    .line 319
    .line 320
    .line 321
    :cond_8
    if-eqz v7, :cond_9

    .line 322
    .line 323
    iget v1, v0, Ld1/a;->k:I

    .line 324
    .line 325
    iget v2, v4, Ld1/e;->b:I

    .line 326
    .line 327
    mul-int/lit8 v2, v2, 0x2

    .line 328
    .line 329
    div-int/2addr v1, v2

    .line 330
    if-lez v1, :cond_9

    .line 331
    .line 332
    invoke-virtual {v0, v1}, Ld1/a;->a(I)V

    .line 333
    .line 334
    .line 335
    :cond_9
    return v7
.end method
