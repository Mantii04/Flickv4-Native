.class public final Lv0/P;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:J

.field public final k:Lv0/O;

.field public final l:Landroidx/media3/common/Metadata;


# direct methods
.method public constructor <init>(IIIIIIIJLv0/O;Landroidx/media3/common/Metadata;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lv0/P;->a:I

    .line 18
    iput p2, p0, Lv0/P;->b:I

    .line 19
    iput p3, p0, Lv0/P;->c:I

    .line 20
    iput p4, p0, Lv0/P;->d:I

    .line 21
    iput p5, p0, Lv0/P;->e:I

    .line 22
    invoke-static {p5}, Lv0/P;->b(I)I

    move-result p1

    iput p1, p0, Lv0/P;->f:I

    .line 23
    iput p6, p0, Lv0/P;->g:I

    .line 24
    iput p7, p0, Lv0/P;->h:I

    .line 25
    invoke-static {p7}, Lv0/P;->a(I)I

    move-result p1

    iput p1, p0, Lv0/P;->i:I

    .line 26
    iput-wide p8, p0, Lv0/P;->j:J

    .line 27
    iput-object p10, p0, Lv0/P;->k:Lv0/O;

    .line 28
    iput-object p11, p0, Lv0/P;->l:Landroidx/media3/common/Metadata;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    mul-int/lit8 p2, p2, 0x8

    .line 3
    invoke-virtual {v0, p2}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    const/16 p1, 0x10

    .line 4
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p2

    iput p2, p0, Lv0/P;->a:I

    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Lv0/P;->b:I

    const/16 p1, 0x18

    .line 6
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p2

    iput p2, p0, Lv0/P;->c:I

    .line 7
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Lv0/P;->d:I

    const/16 p1, 0x14

    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Lv0/P;->e:I

    .line 9
    invoke-static {p1}, Lv0/P;->b(I)I

    move-result p1

    iput p1, p0, Lv0/P;->f:I

    const/4 p1, 0x3

    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lv0/P;->g:I

    const/4 p1, 0x5

    .line 11
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lv0/P;->h:I

    .line 12
    invoke-static {p1}, Lv0/P;->a(I)I

    move-result p1

    iput p1, p0, Lv0/P;->i:I

    const/16 p1, 0x24

    .line 13
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBitsToLong(I)J

    move-result-wide p1

    iput-wide p1, p0, Lv0/P;->j:J

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lv0/P;->k:Lv0/O;

    .line 15
    iput-object p1, p0, Lv0/P;->l:Landroidx/media3/common/Metadata;

    return-void
.end method

.method public static a(I)I
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eq p0, v0, :cond_5

    .line 4
    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    if-eq p0, v0, :cond_4

    .line 8
    .line 9
    const/16 v0, 0x10

    .line 10
    .line 11
    if-eq p0, v0, :cond_3

    .line 12
    .line 13
    const/16 v0, 0x14

    .line 14
    .line 15
    if-eq p0, v0, :cond_2

    .line 16
    .line 17
    const/16 v0, 0x18

    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x20

    .line 22
    .line 23
    if-eq p0, v0, :cond_0

    .line 24
    .line 25
    const/4 p0, -0x1

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x7

    .line 28
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x6

    .line 30
    return p0

    .line 31
    :cond_2
    const/4 p0, 0x5

    .line 32
    return p0

    .line 33
    :cond_3
    const/4 p0, 0x4

    .line 34
    return p0

    .line 35
    :cond_4
    const/4 p0, 0x2

    .line 36
    return p0

    .line 37
    :cond_5
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method public static b(I)I
    .locals 0

    .line 1
    sparse-switch p0, :sswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, -0x1

    .line 5
    return p0

    .line 6
    :sswitch_0
    const/4 p0, 0x3

    .line 7
    return p0

    .line 8
    :sswitch_1
    const/4 p0, 0x2

    .line 9
    return p0

    .line 10
    :sswitch_2
    const/16 p0, 0xb

    .line 11
    .line 12
    return p0

    .line 13
    :sswitch_3
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :sswitch_4
    const/16 p0, 0xa

    .line 16
    .line 17
    return p0

    .line 18
    :sswitch_5
    const/16 p0, 0x9

    .line 19
    .line 20
    return p0

    .line 21
    :sswitch_6
    const/16 p0, 0x8

    .line 22
    .line 23
    return p0

    .line 24
    :sswitch_7
    const/4 p0, 0x7

    .line 25
    return p0

    .line 26
    :sswitch_8
    const/4 p0, 0x6

    .line 27
    return p0

    .line 28
    :sswitch_9
    const/4 p0, 0x5

    .line 29
    return p0

    .line 30
    :sswitch_a
    const/4 p0, 0x4

    .line 31
    return p0

    .line 32
    nop

    .line 33
    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public copyWithPictureFrames(Ljava/util/List;)Lv0/P;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LH0/a;",
            ">;)",
            "Lv0/P;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/media3/common/Metadata;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lv0/P;->getMetadataCopyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 7
    .line 8
    .line 9
    move-result-object v12

    .line 10
    new-instance v1, Lv0/P;

    .line 11
    .line 12
    iget-wide v9, p0, Lv0/P;->j:J

    .line 13
    .line 14
    iget-object v11, p0, Lv0/P;->k:Lv0/O;

    .line 15
    .line 16
    iget v2, p0, Lv0/P;->a:I

    .line 17
    .line 18
    iget v3, p0, Lv0/P;->b:I

    .line 19
    .line 20
    iget v4, p0, Lv0/P;->c:I

    .line 21
    .line 22
    iget v5, p0, Lv0/P;->d:I

    .line 23
    .line 24
    iget v6, p0, Lv0/P;->e:I

    .line 25
    .line 26
    iget v7, p0, Lv0/P;->g:I

    .line 27
    .line 28
    iget v8, p0, Lv0/P;->h:I

    .line 29
    .line 30
    invoke-direct/range {v1 .. v12}, Lv0/P;-><init>(IIIIIIIJLv0/O;Landroidx/media3/common/Metadata;)V

    .line 31
    .line 32
    .line 33
    return-object v1
.end method

.method public copyWithSeekTable(Lv0/O;)Lv0/P;
    .locals 12

    .line 1
    new-instance v0, Lv0/P;

    .line 2
    .line 3
    iget-wide v8, p0, Lv0/P;->j:J

    .line 4
    .line 5
    iget-object v11, p0, Lv0/P;->l:Landroidx/media3/common/Metadata;

    .line 6
    .line 7
    iget v1, p0, Lv0/P;->a:I

    .line 8
    .line 9
    iget v2, p0, Lv0/P;->b:I

    .line 10
    .line 11
    iget v3, p0, Lv0/P;->c:I

    .line 12
    .line 13
    iget v4, p0, Lv0/P;->d:I

    .line 14
    .line 15
    iget v5, p0, Lv0/P;->e:I

    .line 16
    .line 17
    iget v6, p0, Lv0/P;->g:I

    .line 18
    .line 19
    iget v7, p0, Lv0/P;->h:I

    .line 20
    .line 21
    move-object v10, p1

    .line 22
    invoke-direct/range {v0 .. v11}, Lv0/P;-><init>(IIIIIIIJLv0/O;Landroidx/media3/common/Metadata;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public copyWithVorbisComments(Ljava/util/List;)Lv0/P;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lv0/P;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lv0/x0;->parseVorbisComments(Ljava/util/List;)Landroidx/media3/common/Metadata;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lv0/P;->getMetadataCopyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 6
    .line 7
    .line 8
    move-result-object v11

    .line 9
    new-instance v0, Lv0/P;

    .line 10
    .line 11
    iget-wide v8, p0, Lv0/P;->j:J

    .line 12
    .line 13
    iget-object v10, p0, Lv0/P;->k:Lv0/O;

    .line 14
    .line 15
    iget v1, p0, Lv0/P;->a:I

    .line 16
    .line 17
    iget v2, p0, Lv0/P;->b:I

    .line 18
    .line 19
    iget v3, p0, Lv0/P;->c:I

    .line 20
    .line 21
    iget v4, p0, Lv0/P;->d:I

    .line 22
    .line 23
    iget v5, p0, Lv0/P;->e:I

    .line 24
    .line 25
    iget v6, p0, Lv0/P;->g:I

    .line 26
    .line 27
    iget v7, p0, Lv0/P;->h:I

    .line 28
    .line 29
    invoke-direct/range {v0 .. v11}, Lv0/P;-><init>(IIIIIIIJLv0/O;Landroidx/media3/common/Metadata;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public getApproxBytesPerFrame()J
    .locals 4

    .line 1
    iget v0, p0, Lv0/P;->d:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    int-to-long v0, v0

    .line 6
    iget v2, p0, Lv0/P;->c:I

    .line 7
    .line 8
    int-to-long v2, v2

    .line 9
    add-long/2addr v0, v2

    .line 10
    const-wide/16 v2, 0x2

    .line 11
    .line 12
    div-long/2addr v0, v2

    .line 13
    const-wide/16 v2, 0x1

    .line 14
    .line 15
    :goto_0
    add-long/2addr v0, v2

    .line 16
    return-wide v0

    .line 17
    :cond_0
    iget v0, p0, Lv0/P;->b:I

    .line 18
    .line 19
    iget v1, p0, Lv0/P;->a:I

    .line 20
    .line 21
    if-ne v1, v0, :cond_1

    .line 22
    .line 23
    if-lez v1, :cond_1

    .line 24
    .line 25
    int-to-long v0, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const-wide/16 v0, 0x1000

    .line 28
    .line 29
    :goto_1
    iget v2, p0, Lv0/P;->g:I

    .line 30
    .line 31
    int-to-long v2, v2

    .line 32
    mul-long/2addr v0, v2

    .line 33
    iget v2, p0, Lv0/P;->h:I

    .line 34
    .line 35
    int-to-long v2, v2

    .line 36
    mul-long/2addr v0, v2

    .line 37
    const-wide/16 v2, 0x8

    .line 38
    .line 39
    div-long/2addr v0, v2

    .line 40
    const-wide/16 v2, 0x40

    .line 41
    .line 42
    goto :goto_0
.end method

.method public getDurationUs()J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iget-wide v2, p0, Lv0/P;->j:J

    .line 4
    .line 5
    cmp-long v0, v2, v0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_0
    const-wide/32 v0, 0xf4240

    .line 16
    .line 17
    .line 18
    mul-long/2addr v2, v0

    .line 19
    iget v0, p0, Lv0/P;->e:I

    .line 20
    .line 21
    int-to-long v0, v0

    .line 22
    div-long/2addr v2, v0

    .line 23
    return-wide v2
.end method

.method public getFormat([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    const/16 v1, -0x80

    .line 3
    .line 4
    aput-byte v1, p1, v0

    .line 5
    .line 6
    iget v0, p0, Lv0/P;->d:I

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, -0x1

    .line 12
    :goto_0
    invoke-virtual {p0, p2}, Lv0/P;->getMetadataCopyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    new-instance v1, Landroidx/media3/common/Format$Builder;

    .line 17
    .line 18
    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "audio/flac"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget v1, p0, Lv0/P;->g:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget v1, p0, Lv0/P;->e:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget v1, p0, Lv0/P;->h:I

    .line 44
    .line 45
    invoke-static {v1}, Landroidx/media3/common/util/Util;->getPcmEncoding(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method public getMetadataCopyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/P;->l:Landroidx/media3/common/Metadata;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public getSampleNumber(J)J
    .locals 8

    .line 1
    iget v0, p0, Lv0/P;->e:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    mul-long/2addr p1, v0

    .line 5
    const-wide/32 v0, 0xf4240

    .line 6
    .line 7
    .line 8
    div-long v2, p1, v0

    .line 9
    .line 10
    iget-wide p1, p0, Lv0/P;->j:J

    .line 11
    .line 12
    const-wide/16 v0, 0x1

    .line 13
    .line 14
    sub-long v6, p1, v0

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    return-wide p1
.end method
