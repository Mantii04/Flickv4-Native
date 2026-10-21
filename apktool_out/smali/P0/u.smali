.class public final LP0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/C;


# static fields
.field public static final P:[B

.field public static final Q:Landroidx/media3/common/Format;


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:LP0/t;

.field public E:I

.field public F:I

.field public G:I

.field public H:Z

.field public I:Z

.field public J:Lv0/F;

.field public K:[Lv0/r0;

.field public L:[Lv0/r0;

.field public M:Z

.field public N:Z

.field public O:J

.field public final a:LS0/q;

.field public final b:I

.field public final c:LP0/J;

.field public final d:Ljava/util/List;

.field public final e:Landroid/util/SparseArray;

.field public final f:Landroidx/media3/common/util/ParsableByteArray;

.field public final g:Landroidx/media3/common/util/ParsableByteArray;

.field public final h:Landroidx/media3/common/util/ParsableByteArray;

.field public final i:[B

.field public final j:Landroidx/media3/common/util/ParsableByteArray;

.field public final k:Landroidx/media3/common/util/TimestampAdjuster;

.field public final l:LG0/c;

.field public final m:Landroidx/media3/common/util/ParsableByteArray;

.field public final n:Ljava/util/ArrayDeque;

.field public final o:Ljava/util/ArrayDeque;

.field public final p:Ls0/B;

.field public final q:Lv0/r0;

.field public final r:Lv0/s;

.field public s:Lcom/google/common/collect/ImmutableList;

.field public t:I

.field public u:I

.field public v:J

.field public w:I

.field public x:Landroidx/media3/common/util/ParsableByteArray;

.field public y:J

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, LP0/u;->P:[B

    .line 9
    .line 10
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "application/x-emsg"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, LP0/u;->Q:Landroidx/media3/common/Format;

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(LS0/q;I)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 2
    invoke-direct/range {v0 .. v6}, LP0/u;-><init>(LS0/q;ILandroidx/media3/common/util/TimestampAdjuster;LP0/J;Ljava/util/List;Lv0/r0;)V

    return-void
.end method

.method public constructor <init>(LS0/q;ILandroidx/media3/common/util/TimestampAdjuster;LP0/J;Ljava/util/List;Lv0/r0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LS0/q;",
            "I",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "LP0/J;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Lv0/r0;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LP0/u;->a:LS0/q;

    .line 5
    iput p2, p0, LP0/u;->b:I

    .line 6
    iput-object p3, p0, LP0/u;->k:Landroidx/media3/common/util/TimestampAdjuster;

    .line 7
    iput-object p4, p0, LP0/u;->c:LP0/J;

    .line 8
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LP0/u;->d:Ljava/util/List;

    .line 9
    iput-object p6, p0, LP0/u;->q:Lv0/r0;

    .line 10
    new-instance p1, LG0/c;

    invoke-direct {p1}, LG0/c;-><init>()V

    iput-object p1, p0, LP0/u;->l:LG0/c;

    .line 11
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, LP0/u;->m:Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    sget-object p3, Ls0/v;->a:[B

    invoke-direct {p1, p3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, LP0/u;->f:Landroidx/media3/common/util/ParsableByteArray;

    .line 13
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 p3, 0x6

    invoke-direct {p1, p3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, LP0/u;->g:Landroidx/media3/common/util/ParsableByteArray;

    .line 14
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, LP0/u;->h:Landroidx/media3/common/util/ParsableByteArray;

    .line 15
    new-array p1, p2, [B

    iput-object p1, p0, LP0/u;->i:[B

    .line 16
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p2, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p2, p0, LP0/u;->j:Landroidx/media3/common/util/ParsableByteArray;

    .line 17
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LP0/u;->n:Ljava/util/ArrayDeque;

    .line 18
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LP0/u;->o:Ljava/util/ArrayDeque;

    .line 19
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LP0/u;->e:Landroid/util/SparseArray;

    .line 20
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, LP0/u;->s:Lcom/google/common/collect/ImmutableList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    iput-wide p1, p0, LP0/u;->B:J

    .line 22
    iput-wide p1, p0, LP0/u;->A:J

    .line 23
    iput-wide p1, p0, LP0/u;->C:J

    .line 24
    sget-object p1, Lv0/F;->d:Lv0/E;

    iput-object p1, p0, LP0/u;->J:Lv0/F;

    const/4 p1, 0x0

    .line 25
    new-array p2, p1, [Lv0/r0;

    iput-object p2, p0, LP0/u;->K:[Lv0/r0;

    .line 26
    new-array p1, p1, [Lv0/r0;

    iput-object p1, p0, LP0/u;->L:[Lv0/r0;

    .line 27
    new-instance p1, Ls0/B;

    new-instance p2, LA0/a;

    const/4 p3, 0x7

    invoke-direct {p2, p0, p3}, LA0/a;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2}, Ls0/B;-><init>(Ls0/A;)V

    iput-object p1, p0, LP0/u;->p:Ls0/B;

    .line 28
    new-instance p1, Lv0/s;

    invoke-direct {p1}, Lv0/s;-><init>()V

    iput-object p1, p0, LP0/u;->r:Lv0/s;

    const-wide/16 p1, -0x1

    .line 29
    iput-wide p1, p0, LP0/u;->O:J

    return-void
.end method

.method public static b(Ljava/util/ArrayList;)Landroidx/media3/common/DrmInitData;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    move-object v3, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    check-cast v4, Ls0/e;

    .line 15
    .line 16
    iget v5, v4, Ls0/f;->a:I

    .line 17
    .line 18
    const v6, 0x70737368    # 3.013775E29f

    .line 19
    .line 20
    .line 21
    if-ne v5, v6, :cond_2

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    new-instance v3, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v4, v4, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v4}, LP0/E;->parseUuid([B)Ljava/util/UUID;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    if-nez v5, :cond_1

    .line 41
    .line 42
    const-string v4, "FragmentedMp4Extractor"

    .line 43
    .line 44
    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    .line 45
    .line 46
    invoke-static {v4, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance v6, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 51
    .line 52
    const-string v7, "video/mp4"

    .line 53
    .line 54
    invoke-direct {v6, v5, v7, v4}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    if-nez v3, :cond_4

    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_4
    new-instance p0, Landroidx/media3/common/DrmInitData;

    .line 67
    .line 68
    invoke-direct {p0, v3}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    return-object p0
.end method

.method public static c(Landroidx/media3/common/util/ParsableByteArray;ILP0/L;)V
    .locals 3

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {p1}, LP0/n;->parseFullBoxFlags(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    and-int/lit8 v0, p1, 0x1

    .line 15
    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    and-int/lit8 p1, p1, 0x2

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p1, v0

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget-object p0, p2, LP0/L;->l:[Z

    .line 33
    .line 34
    iget p1, p2, LP0/L;->e:I

    .line 35
    .line 36
    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget v2, p2, LP0/L;->e:I

    .line 41
    .line 42
    if-ne v1, v2, :cond_2

    .line 43
    .line 44
    iget-object v2, p2, LP0/L;->l:[Z

    .line 45
    .line 46
    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p2, p1}, LP0/L;->initEncryptionData(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p0}, LP0/L;->fillEncryptionData(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    const-string p0, "Senc sample count "

    .line 61
    .line 62
    const-string p1, " is different from fragment sample count"

    .line 63
    .line 64
    invoke-static {v1, p0, p1}, LA/i;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    iget p1, p2, LP0/L;->e:I

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const/4 p1, 0x0

    .line 78
    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    throw p0

    .line 83
    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 84
    .line 85
    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    throw p0
.end method

.method public static codecsToParseWithinGopSampleDependenciesAsFlags(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x40

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    and-int/lit8 p0, p0, 0x2

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    or-int/lit16 p0, v0, 0x80

    .line 14
    .line 15
    return p0

    .line 16
    :cond_1
    return v0
.end method

.method public static d(JLandroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 22

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, LP0/n;->parseFullBoxVersion(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 21
    .line 22
    .line 23
    move-result-wide v7

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    :goto_0
    add-long v5, v5, p0

    .line 35
    .line 36
    move-wide v9, v5

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    goto :goto_0

    .line 47
    :goto_1
    const-wide/32 v5, 0xf4240

    .line 48
    .line 49
    .line 50
    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide v11

    .line 54
    const/4 v1, 0x2

    .line 55
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    new-array v13, v1, [I

    .line 63
    .line 64
    new-array v14, v1, [J

    .line 65
    .line 66
    new-array v15, v1, [J

    .line 67
    .line 68
    new-array v5, v1, [J

    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    move-wide/from16 v16, v9

    .line 72
    .line 73
    move-wide/from16 v18, v11

    .line 74
    .line 75
    move v9, v6

    .line 76
    :goto_2
    if-ge v9, v1, :cond_2

    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    const/high16 v10, -0x80000000

    .line 83
    .line 84
    and-int/2addr v10, v6

    .line 85
    if-nez v10, :cond_1

    .line 86
    .line 87
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 88
    .line 89
    .line 90
    move-result-wide v20

    .line 91
    const v10, 0x7fffffff

    .line 92
    .line 93
    .line 94
    and-int/2addr v6, v10

    .line 95
    aput v6, v13, v9

    .line 96
    .line 97
    aput-wide v16, v14, v9

    .line 98
    .line 99
    aput-wide v18, v5, v9

    .line 100
    .line 101
    add-long v3, v3, v20

    .line 102
    .line 103
    move-object v10, v5

    .line 104
    const-wide/32 v5, 0xf4240

    .line 105
    .line 106
    .line 107
    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 108
    .line 109
    .line 110
    move-result-wide v18

    .line 111
    aget-wide v5, v10, v9

    .line 112
    .line 113
    sub-long v5, v18, v5

    .line 114
    .line 115
    aput-wide v5, v15, v9

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 118
    .line 119
    .line 120
    aget v5, v13, v9

    .line 121
    .line 122
    int-to-long v5, v5

    .line 123
    add-long v16, v16, v5

    .line 124
    .line 125
    add-int/lit8 v9, v9, 0x1

    .line 126
    .line 127
    move-object v5, v10

    .line 128
    goto :goto_2

    .line 129
    :cond_1
    const-string v0, "Unhandled indirect reference"

    .line 130
    .line 131
    const/4 v1, 0x0

    .line 132
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    throw v0

    .line 137
    :cond_2
    move-object v10, v5

    .line 138
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    new-instance v1, Lv0/r;

    .line 143
    .line 144
    invoke-direct {v1, v13, v14, v15, v10}, Lv0/r;-><init>([I[J[J[J)V

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LP0/u;->t:I

    .line 3
    .line 4
    iput v0, p0, LP0/u;->w:I

    .line 5
    .line 6
    return-void
.end method

.method public final e(J)V
    .locals 57

    move-object/from16 v0, p0

    .line 1
    :cond_0
    :goto_0
    iget-object v7, v0, LP0/u;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_59

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls0/d;

    iget-wide v8, v8, Ls0/d;->b:J

    cmp-long v8, v8, p1

    if-nez v8, :cond_59

    .line 2
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ls0/d;

    .line 3
    iget v8, v9, Ls0/f;->a:I

    iget-object v10, v0, LP0/u;->e:Landroid/util/SparseArray;

    iget-object v11, v9, Ls0/d;->c:Ljava/util/ArrayList;

    const/4 v12, 0x0

    const v13, 0x6d6f6f76

    iget v14, v0, LP0/u;->b:I

    const/16 v15, 0xc

    const/16 v18, 0x10

    const/16 v19, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v3, v0, LP0/u;->c:LP0/J;

    if-ne v8, v13, :cond_10

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move/from16 v3, v19

    .line 4
    :goto_1
    const-string v4, "Unexpected moov box."

    invoke-static {v3, v4}, LP3/v;->checkState(ZLjava/lang/Object;)V

    .line 5
    invoke-static {v11}, LP0/u;->b(Ljava/util/ArrayList;)Landroidx/media3/common/DrmInitData;

    move-result-object v13

    const v3, 0x6d766578

    .line 6
    invoke-virtual {v9, v3}, Ls0/d;->getContainerBoxOfType(I)Ls0/d;

    move-result-object v3

    invoke-static {v3}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls0/d;

    .line 7
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 8
    iget-object v7, v3, Ls0/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object v1, v12

    move-wide/from16 v11, v16

    move/from16 v8, v19

    const/16 v20, 0x4

    :goto_2
    if-ge v8, v7, :cond_5

    .line 9
    iget-object v1, v3, Ls0/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls0/e;

    .line 10
    iget v5, v1, Ls0/f;->a:I

    const/16 v23, 0x1

    const v6, 0x74726578

    iget-object v1, v1, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    if-ne v5, v6, :cond_2

    .line 11
    invoke-virtual {v1, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 12
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 13
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 14
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 15
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 16
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 17
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v26, v3

    new-instance v3, LP0/o;

    invoke-direct {v3, v6, v15, v2, v1}, LP0/o;-><init>(IIII)V

    .line 18
    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 19
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, LP0/o;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_2
    move-object/from16 v26, v3

    const v2, 0x6d656864

    if-ne v5, v2, :cond_4

    const/16 v2, 0x8

    .line 20
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 21
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 22
    invoke-static {v2}, LP0/n;->parseFullBoxVersion(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 23
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v1

    :goto_3
    move-wide v11, v1

    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v26

    const/4 v1, 0x0

    const/16 v15, 0xc

    goto :goto_2

    :cond_5
    const/16 v23, 0x1

    const v1, 0x6d657461

    .line 24
    invoke-virtual {v9, v1}, Ls0/d;->getContainerBoxOfType(I)Ls0/d;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 25
    invoke-static {v1}, LP0/n;->parseMdtaFromMeta(Ls0/d;)Landroidx/media3/common/Metadata;

    move-result-object v1

    :goto_5
    move-object v2, v10

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    .line 26
    :goto_6
    new-instance v10, Lv0/U;

    invoke-direct {v10}, Lv0/U;-><init>()V

    const v3, 0x75647461

    .line 27
    invoke-virtual {v9, v3}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 28
    invoke-static {v3}, LP0/n;->parseUdta(Ls0/e;)Landroidx/media3/common/Metadata;

    move-result-object v3

    .line 29
    invoke-virtual {v10, v3}, Lv0/U;->setFromMetadata(Landroidx/media3/common/Metadata;)Z

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    .line 30
    :goto_7
    new-instance v5, Landroidx/media3/common/Metadata;

    const v6, 0x6d766864

    .line 31
    invoke-virtual {v9, v6}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    move-result-object v6

    invoke-static {v6}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls0/e;

    iget-object v6, v6, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v6}, LP0/n;->parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Ls0/h;

    move-result-object v6

    move/from16 v7, v23

    new-array v8, v7, [Landroidx/media3/common/Metadata$Entry;

    aput-object v6, v8, v19

    invoke-direct {v5, v8}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    and-int/lit8 v6, v14, 0x10

    if-eqz v6, :cond_8

    const/4 v14, 0x1

    goto :goto_8

    :cond_8
    move/from16 v14, v19

    .line 32
    :goto_8
    new-instance v6, LP0/r;

    invoke-direct {v6, v0}, LP0/r;-><init>(LP0/u;)V

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v6

    .line 33
    invoke-static/range {v9 .. v17}, LP0/n;->parseTraks(Ls0/d;Lv0/U;JLandroidx/media3/common/DrmInitData;ZZLP3/p;Z)Ljava/util/List;

    move-result-object v6

    .line 34
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 35
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-nez v8, :cond_b

    .line 36
    invoke-static {v6}, LP0/x;->getContainerMimeType(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    move/from16 v9, v19

    :goto_9
    if-ge v9, v7, :cond_a

    .line 37
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LP0/M;

    .line 38
    iget-object v12, v11, LP0/M;->a:LP0/J;

    .line 39
    iget-object v13, v0, LP0/u;->J:Lv0/F;

    iget v14, v12, LP0/J;->b:I

    invoke-interface {v13, v9, v14}, Lv0/F;->track(II)Lv0/r0;

    move-result-object v13

    .line 40
    iget-wide v14, v12, LP0/J;->e:J

    invoke-interface {v13, v14, v15}, Lv0/r0;->durationUs(J)V

    move-object/from16 v16, v3

    .line 41
    iget-object v3, v12, LP0/J;->g:Landroidx/media3/common/Format;

    move-object/from16 v17, v5

    invoke-virtual {v3}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 42
    invoke-virtual {v5, v8}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-object/from16 v21, v8

    .line 43
    iget v8, v12, LP0/J;->b:I

    invoke-static {v8, v10, v5}, LP0/w;->setFormatGaplessInfo(ILv0/U;Landroidx/media3/common/Format$Builder;)V

    .line 44
    iget-object v3, v3, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    move/from16 v24, v9

    move-object/from16 v26, v10

    const/4 v9, 0x2

    new-array v10, v9, [Landroidx/media3/common/Metadata;

    aput-object v16, v10, v19

    const/4 v9, 0x1

    aput-object v17, v10, v9

    invoke-static {v8, v1, v5, v3, v10}, LP0/w;->setFormatMetadata(ILandroidx/media3/common/Metadata;Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Metadata;[Landroidx/media3/common/Metadata;)V

    .line 45
    new-instance v3, LP0/t;

    .line 46
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v8

    iget v10, v12, LP0/J;->a:I

    if-ne v8, v9, :cond_9

    move/from16 v8, v19

    .line 47
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LP0/o;

    goto :goto_a

    .line 48
    :cond_9
    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LP0/o;

    invoke-static {v8}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, LP0/o;

    .line 49
    :goto_a
    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    invoke-direct {v3, v13, v11, v9, v5}, LP0/t;-><init>(Lv0/r0;LP0/M;LP0/o;Landroidx/media3/common/Format;)V

    .line 50
    invoke-virtual {v2, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    iget-wide v8, v0, LP0/u;->B:J

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, LP0/u;->B:J

    const/16 v23, 0x1

    add-int/lit8 v9, v24, 0x1

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    move-object/from16 v8, v21

    move-object/from16 v10, v26

    const/16 v19, 0x0

    goto :goto_9

    .line 52
    :cond_a
    iget-object v1, v0, LP0/u;->J:Lv0/F;

    invoke-interface {v1}, Lv0/F;->endTracks()V

    goto :goto_e

    .line 53
    :cond_b
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ne v1, v7, :cond_c

    const/4 v1, 0x1

    goto :goto_b

    :cond_c
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, LP3/v;->checkState(Z)V

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v7, :cond_e

    .line 54
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LP0/M;

    .line 55
    iget-object v5, v3, LP0/M;->a:LP0/J;

    .line 56
    iget v8, v5, LP0/J;->a:I

    .line 57
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LP0/t;

    .line 58
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    const/4 v9, 0x0

    .line 59
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LP0/o;

    goto :goto_d

    .line 60
    :cond_d
    iget v5, v5, LP0/J;->a:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LP0/o;

    invoke-static {v5}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LP0/o;

    .line 61
    :goto_d
    invoke-virtual {v8, v3, v5}, LP0/t;->reset(LP0/M;LP0/o;)V

    add-int/2addr v1, v10

    goto :goto_c

    :cond_e
    :goto_e
    move/from16 v10, v18

    const/16 v6, 0x8

    const/4 v14, 0x0

    const/16 v22, 0x2

    :cond_f
    const/16 v23, 0x1

    goto/16 :goto_0

    :cond_10
    move-object v2, v10

    const/16 v20, 0x4

    const v1, 0x6d6f6f66

    if-ne v8, v1, :cond_58

    if-eqz v3, :cond_11

    const/4 v1, 0x1

    goto :goto_f

    :cond_11
    const/4 v1, 0x0

    .line 62
    :goto_f
    iget-object v3, v9, Ls0/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x0

    :goto_10
    if-ge v8, v4, :cond_55

    .line 63
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/d;

    .line 64
    iget v6, v5, Ls0/f;->a:I

    const v7, 0x74726166

    if-ne v6, v7, :cond_54

    const v6, 0x74666864

    .line 65
    invoke-virtual {v5, v6}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    move-result-object v6

    invoke-static {v6}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls0/e;

    .line 66
    iget-object v6, v6, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v7, 0x8

    .line 67
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 68
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 69
    invoke-static {v7}, LP0/n;->parseFullBoxFlags(I)I

    move-result v7

    .line 70
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    if-eqz v1, :cond_12

    const/4 v10, 0x0

    .line 71
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    :goto_11
    check-cast v9, LP0/t;

    goto :goto_12

    :cond_12
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    goto :goto_11

    :goto_12
    if-nez v9, :cond_13

    move/from16 v26, v1

    move-object v10, v3

    move v13, v4

    const/4 v9, 0x0

    goto :goto_19

    :cond_13
    const/16 v23, 0x1

    and-int/lit8 v10, v7, 0x1

    .line 72
    iget-object v12, v9, LP0/t;->b:LP0/L;

    if-eqz v10, :cond_14

    move-object v10, v3

    move v13, v4

    .line 73
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    .line 74
    iput-wide v3, v12, LP0/L;->b:J

    .line 75
    iput-wide v3, v12, LP0/L;->c:J

    goto :goto_13

    :cond_14
    move-object v10, v3

    move v13, v4

    .line 76
    :goto_13
    iget-object v3, v9, LP0/t;->e:LP0/o;

    const/16 v22, 0x2

    and-int/lit8 v4, v7, 0x2

    if-eqz v4, :cond_15

    .line 77
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const/16 v23, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_14
    const/16 v25, 0x8

    goto :goto_15

    .line 78
    :cond_15
    iget v4, v3, LP0/o;->a:I

    goto :goto_14

    :goto_15
    and-int/lit8 v15, v7, 0x8

    if-eqz v15, :cond_16

    .line 79
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    goto :goto_16

    .line 80
    :cond_16
    iget v15, v3, LP0/o;->b:I

    :goto_16
    and-int/lit8 v26, v7, 0x10

    if-eqz v26, :cond_17

    .line 81
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v26

    move/from16 v56, v26

    move/from16 v26, v1

    move/from16 v1, v56

    goto :goto_17

    :cond_17
    move/from16 v26, v1

    .line 82
    iget v1, v3, LP0/o;->c:I

    :goto_17
    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_18

    .line 83
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    goto :goto_18

    .line 84
    :cond_18
    iget v3, v3, LP0/o;->d:I

    .line 85
    :goto_18
    new-instance v6, LP0/o;

    invoke-direct {v6, v4, v15, v1, v3}, LP0/o;-><init>(IIII)V

    iput-object v6, v12, LP0/L;->a:LP0/o;

    :goto_19
    if-nez v9, :cond_19

    move/from16 v27, v8

    move-object/from16 v44, v10

    move-object/from16 v43, v11

    move/from16 v49, v13

    move/from16 v48, v14

    move/from16 v10, v18

    const/16 v15, 0xc

    const/16 v22, 0x2

    :goto_1a
    const/16 v6, 0x8

    const/4 v14, 0x0

    goto/16 :goto_46

    .line 86
    :cond_19
    iget-object v1, v9, LP0/t;->b:LP0/L;

    iget-wide v3, v1, LP0/L;->p:J

    .line 87
    iget-boolean v6, v1, LP0/L;->q:Z

    .line 88
    invoke-virtual {v9}, LP0/t;->resetFragmentInfo()V

    const/4 v7, 0x1

    .line 89
    iput-boolean v7, v9, LP0/t;->m:Z

    const v12, 0x74666474

    .line 90
    invoke-virtual {v5, v12}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    move-result-object v12

    if-eqz v12, :cond_1b

    const/16 v22, 0x2

    and-int/lit8 v15, v14, 0x2

    if-nez v15, :cond_1b

    .line 91
    iget-object v3, v12, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 92
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 93
    invoke-static {v4}, LP0/n;->parseFullBoxVersion(I)I

    move-result v4

    if-ne v4, v7, :cond_1a

    .line 94
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    goto :goto_1b

    :cond_1a
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 95
    :goto_1b
    iput-wide v3, v1, LP0/L;->p:J

    .line 96
    iput-boolean v7, v1, LP0/L;->q:Z

    goto :goto_1c

    .line 97
    :cond_1b
    iput-wide v3, v1, LP0/L;->p:J

    .line 98
    iput-boolean v6, v1, LP0/L;->q:Z

    .line 99
    :goto_1c
    iget-object v3, v5, Ls0/d;->c:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_1d
    const v15, 0x7472756e

    if-ge v6, v4, :cond_1d

    .line 101
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    move/from16 v28, v6

    move-object/from16 v6, v27

    check-cast v6, Ls0/e;

    move/from16 v27, v8

    .line 102
    iget v8, v6, Ls0/f;->a:I

    if-ne v8, v15, :cond_1c

    .line 103
    iget-object v6, v6, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v8, 0xc

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 104
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    if-lez v6, :cond_1c

    add-int/2addr v12, v6

    const/16 v23, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_1c
    const/16 v23, 0x1

    :goto_1e
    add-int/lit8 v6, v28, 0x1

    move/from16 v8, v27

    goto :goto_1d

    :cond_1d
    move/from16 v27, v8

    const/4 v8, 0x0

    .line 105
    iput v8, v9, LP0/t;->h:I

    .line 106
    iput v8, v9, LP0/t;->g:I

    .line 107
    iput v8, v9, LP0/t;->f:I

    .line 108
    invoke-virtual {v1, v7, v12}, LP0/L;->initTables(II)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1f
    const-wide/16 v28, 0x0

    if-ge v6, v4, :cond_35

    .line 109
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ls0/e;

    move/from16 v30, v4

    .line 110
    iget v4, v12, Ls0/f;->a:I

    if-ne v4, v15, :cond_34

    const/16 v23, 0x1

    add-int/lit8 v4, v7, 0x1

    .line 111
    iget-object v12, v12, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v15, 0x8

    invoke-virtual {v12, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 112
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 113
    invoke-static {v15}, LP0/n;->parseFullBoxFlags(I)I

    move-result v15

    move/from16 v31, v4

    .line 114
    iget-object v4, v9, LP0/t;->d:LP0/M;

    iget-object v4, v4, LP0/M;->a:LP0/J;

    move/from16 v32, v6

    .line 115
    iget-object v6, v1, LP0/L;->a:LP0/o;

    invoke-static {v6}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LP0/o;

    move/from16 v33, v7

    .line 116
    iget-object v7, v1, LP0/L;->g:[I

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v34

    aput v34, v7, v33

    .line 117
    iget-object v7, v1, LP0/L;->f:[J

    move-object/from16 v35, v7

    move/from16 v34, v8

    iget-wide v7, v1, LP0/L;->b:J

    aput-wide v7, v35, v33

    const/16 v23, 0x1

    and-int/lit8 v36, v15, 0x1

    if-eqz v36, :cond_1e

    move-wide/from16 v36, v7

    .line 118
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    int-to-long v7, v7

    add-long v7, v36, v7

    aput-wide v7, v35, v33

    :cond_1e
    and-int/lit8 v7, v15, 0x4

    if-eqz v7, :cond_1f

    const/4 v7, 0x1

    goto :goto_20

    :cond_1f
    const/4 v7, 0x0

    .line 119
    :goto_20
    iget v8, v6, LP0/o;->d:I

    if-eqz v7, :cond_20

    .line 120
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    :cond_20
    move/from16 v35, v7

    and-int/lit16 v7, v15, 0x100

    if-eqz v7, :cond_21

    const/4 v7, 0x1

    goto :goto_21

    :cond_21
    const/4 v7, 0x0

    :goto_21
    move/from16 v36, v7

    and-int/lit16 v7, v15, 0x200

    if-eqz v7, :cond_22

    const/4 v7, 0x1

    goto :goto_22

    :cond_22
    const/4 v7, 0x0

    :goto_22
    move/from16 v37, v7

    and-int/lit16 v7, v15, 0x400

    if-eqz v7, :cond_23

    const/4 v7, 0x1

    goto :goto_23

    :cond_23
    const/4 v7, 0x0

    :goto_23
    and-int/lit16 v15, v15, 0x800

    if-eqz v15, :cond_24

    const/4 v15, 0x1

    :goto_24
    move/from16 v38, v7

    goto :goto_25

    :cond_24
    const/4 v15, 0x0

    goto :goto_24

    .line 121
    :goto_25
    iget-object v7, v4, LP0/J;->i:[J

    move/from16 v39, v8

    if-eqz v7, :cond_27

    array-length v8, v7

    move-object/from16 v40, v7

    const/4 v7, 0x1

    if-ne v8, v7, :cond_27

    iget-object v7, v4, LP0/J;->j:[J

    if-nez v7, :cond_25

    goto :goto_27

    :cond_25
    const/16 v19, 0x0

    .line 122
    aget-wide v41, v40, v19

    cmp-long v8, v41, v28

    if-nez v8, :cond_26

    move-object/from16 v40, v7

    goto :goto_26

    :cond_26
    const-wide/32 v43, 0xf4240

    move-object/from16 v40, v7

    .line 123
    iget-wide v7, v4, LP0/J;->d:J

    move-wide/from16 v45, v7

    .line 124
    invoke-static/range {v41 .. v46}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 125
    aget-wide v41, v40, v19

    move-wide/from16 v47, v7

    iget-wide v7, v4, LP0/J;->c:J

    move-wide/from16 v45, v7

    .line 126
    invoke-static/range {v41 .. v46}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    add-long v7, v47, v7

    move-wide/from16 v41, v7

    .line 127
    iget-wide v7, v4, LP0/J;->e:J

    cmp-long v7, v41, v7

    if-ltz v7, :cond_27

    .line 128
    :goto_26
    invoke-static/range {v40 .. v40}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    aget-wide v28, v7, v19

    .line 129
    :cond_27
    :goto_27
    iget-object v7, v1, LP0/L;->h:[I

    .line 130
    iget-object v8, v1, LP0/L;->i:[J

    move-object/from16 v40, v7

    .line 131
    iget-object v7, v1, LP0/L;->j:[Z

    move-object/from16 v41, v7

    .line 132
    iget v7, v4, LP0/J;->b:I

    move-object/from16 v42, v8

    const/4 v8, 0x2

    if-ne v7, v8, :cond_28

    const/16 v23, 0x1

    and-int/lit8 v7, v14, 0x1

    if-eqz v7, :cond_28

    const/4 v7, 0x1

    goto :goto_28

    :cond_28
    const/4 v7, 0x0

    .line 133
    :goto_28
    iget-object v8, v1, LP0/L;->g:[I

    aget v8, v8, v33

    add-int v8, v34, v8

    move-object/from16 v44, v10

    move-object/from16 v43, v11

    .line 134
    iget-wide v10, v1, LP0/L;->p:J

    move-object/from16 v45, v12

    move-wide v11, v10

    move/from16 v10, v34

    :goto_29
    if-ge v10, v8, :cond_33

    if-eqz v36, :cond_29

    .line 135
    invoke-virtual/range {v45 .. v45}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v33

    move/from16 v46, v7

    move/from16 v7, v33

    :goto_2a
    move/from16 v33, v8

    goto :goto_2b

    :cond_29
    move/from16 v46, v7

    iget v7, v6, LP0/o;->b:I

    goto :goto_2a

    .line 136
    :goto_2b
    const-string v8, "Unexpected negative value: "

    if-ltz v7, :cond_32

    if-eqz v37, :cond_2a

    .line 137
    invoke-virtual/range {v45 .. v45}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v34

    move/from16 v56, v34

    move/from16 v34, v10

    move/from16 v10, v56

    goto :goto_2c

    :cond_2a
    move/from16 v34, v10

    iget v10, v6, LP0/o;->c:I

    :goto_2c
    if-ltz v10, :cond_31

    if-eqz v38, :cond_2b

    .line 138
    invoke-virtual/range {v45 .. v45}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    goto :goto_2d

    :cond_2b
    if-nez v34, :cond_2c

    if-eqz v35, :cond_2c

    move/from16 v8, v39

    goto :goto_2d

    .line 139
    :cond_2c
    iget v8, v6, LP0/o;->d:I

    :goto_2d
    if-eqz v15, :cond_2d

    .line 140
    invoke-virtual/range {v45 .. v45}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v47

    move/from16 v48, v47

    move-object/from16 v47, v6

    move/from16 v6, v48

    :goto_2e
    move/from16 v49, v13

    move/from16 v48, v14

    goto :goto_2f

    :cond_2d
    move-object/from16 v47, v6

    const/4 v6, 0x0

    goto :goto_2e

    :goto_2f
    int-to-long v13, v6

    add-long/2addr v13, v11

    sub-long v50, v13, v28

    const-wide/32 v52, 0xf4240

    .line 141
    iget-wide v13, v4, LP0/J;->c:J

    move-wide/from16 v54, v13

    invoke-static/range {v50 .. v55}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v13

    aput-wide v13, v42, v34

    .line 142
    iget-boolean v6, v1, LP0/L;->q:Z

    if-nez v6, :cond_2e

    .line 143
    iget-object v6, v9, LP0/t;->d:LP0/M;

    move-wide/from16 v50, v13

    iget-wide v13, v6, LP0/M;->i:J

    add-long v13, v50, v13

    aput-wide v13, v42, v34

    .line 144
    :cond_2e
    aput v10, v40, v34

    shr-int/lit8 v6, v8, 0x10

    const/16 v23, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_30

    if-eqz v46, :cond_2f

    if-nez v34, :cond_30

    :cond_2f
    const/4 v6, 0x1

    goto :goto_30

    :cond_30
    const/4 v6, 0x0

    .line 145
    :goto_30
    aput-boolean v6, v41, v34

    int-to-long v6, v7

    add-long/2addr v11, v6

    const/16 v23, 0x1

    add-int/lit8 v10, v34, 0x1

    move/from16 v8, v33

    move/from16 v7, v46

    move-object/from16 v6, v47

    move/from16 v14, v48

    move/from16 v13, v49

    goto/16 :goto_29

    .line 146
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_32
    const/4 v2, 0x0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_33
    move/from16 v33, v8

    move/from16 v49, v13

    move/from16 v48, v14

    .line 148
    iput-wide v11, v1, LP0/L;->p:J

    move/from16 v7, v31

    move/from16 v8, v33

    :goto_31
    const/16 v23, 0x1

    goto :goto_32

    :cond_34
    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v34, v8

    move-object/from16 v44, v10

    move-object/from16 v43, v11

    move/from16 v49, v13

    move/from16 v48, v14

    goto :goto_31

    :goto_32
    add-int/lit8 v6, v32, 0x1

    move/from16 v4, v30

    move-object/from16 v11, v43

    move-object/from16 v10, v44

    move/from16 v14, v48

    move/from16 v13, v49

    const v15, 0x7472756e

    goto/16 :goto_1f

    :cond_35
    move-object/from16 v44, v10

    move-object/from16 v43, v11

    move/from16 v49, v13

    move/from16 v48, v14

    .line 149
    iget-object v4, v9, LP0/t;->d:LP0/M;

    iget-object v4, v4, LP0/M;->a:LP0/J;

    iget-object v6, v1, LP0/L;->a:LP0/o;

    .line 150
    invoke-static {v6}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LP0/o;

    iget v6, v6, LP0/o;->a:I

    .line 151
    invoke-virtual {v4, v6}, LP0/J;->getSampleDescriptionEncryptionBox(I)LP0/K;

    move-result-object v4

    const v6, 0x7361697a

    .line 152
    invoke-virtual {v5, v6}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    move-result-object v6

    if-eqz v6, :cond_3c

    .line 153
    invoke-static {v4}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LP0/K;

    .line 154
    iget v7, v7, LP0/K;->d:I

    .line 155
    iget-object v6, v6, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 156
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 157
    invoke-static {v8}, LP0/n;->parseFullBoxFlags(I)I

    move-result v8

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_36

    .line 158
    invoke-virtual {v6, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 159
    :cond_36
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 160
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .line 161
    iget v10, v1, LP0/L;->e:I

    if-gt v9, v10, :cond_3b

    if-nez v8, :cond_39

    .line 162
    iget-object v8, v1, LP0/L;->l:[Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_33
    if-ge v10, v9, :cond_38

    .line 163
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    add-int/2addr v11, v12

    if-le v12, v7, :cond_37

    const/4 v12, 0x1

    goto :goto_34

    :cond_37
    const/4 v12, 0x0

    .line 164
    :goto_34
    aput-boolean v12, v8, v10

    const/16 v23, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_33

    :cond_38
    const/4 v8, 0x0

    goto :goto_36

    :cond_39
    if-le v8, v7, :cond_3a

    const/4 v6, 0x1

    goto :goto_35

    :cond_3a
    const/4 v6, 0x0

    :goto_35
    mul-int v11, v8, v9

    .line 165
    iget-object v7, v1, LP0/L;->l:[Z

    const/4 v8, 0x0

    invoke-static {v7, v8, v9, v6}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 166
    :goto_36
    iget-object v6, v1, LP0/L;->l:[Z

    iget v7, v1, LP0/L;->e:I

    invoke-static {v6, v9, v7, v8}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v11, :cond_3c

    .line 167
    invoke-virtual {v1, v11}, LP0/L;->initEncryptionData(I)V

    goto :goto_37

    .line 168
    :cond_3b
    const-string v2, "Saiz sample count "

    const-string v3, " is greater than fragment sample count"

    .line 169
    invoke-static {v9, v2, v3}, LA/i;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 170
    iget v1, v1, LP0/L;->e:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_3c
    :goto_37
    const v6, 0x7361696f

    .line 171
    invoke-virtual {v5, v6}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    move-result-object v6

    if-eqz v6, :cond_3f

    .line 172
    iget-object v6, v6, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 173
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 174
    invoke-static {v7}, LP0/n;->parseFullBoxFlags(I)I

    move-result v8

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_3d

    .line 175
    invoke-virtual {v6, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 176
    :cond_3d
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    if-ne v8, v9, :cond_40

    .line 177
    invoke-static {v7}, LP0/n;->parseFullBoxVersion(I)I

    move-result v7

    .line 178
    iget-wide v8, v1, LP0/L;->c:J

    if-nez v7, :cond_3e

    .line 179
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    goto :goto_38

    :cond_3e
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    :goto_38
    add-long/2addr v8, v6

    iput-wide v8, v1, LP0/L;->c:J

    :cond_3f
    const/4 v6, 0x0

    goto :goto_39

    .line 180
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected saio entry count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :goto_39
    const v7, 0x73656e63

    .line 181
    invoke-virtual {v5, v7}, Ls0/d;->getLeafBoxOfType(I)Ls0/e;

    move-result-object v5

    if-eqz v5, :cond_41

    .line 182
    iget-object v5, v5, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v8, 0x0

    invoke-static {v5, v8, v1}, LP0/u;->c(Landroidx/media3/common/util/ParsableByteArray;ILP0/L;)V

    :cond_41
    if-eqz v4, :cond_42

    .line 183
    iget-object v4, v4, LP0/K;->b:Ljava/lang/String;

    move-object v9, v4

    goto :goto_3a

    :cond_42
    move-object v9, v6

    :goto_3a
    move-object v4, v6

    move-object v5, v4

    const/4 v7, 0x0

    .line 184
    :goto_3b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_45

    .line 185
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls0/e;

    .line 186
    iget-object v10, v8, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    const v11, 0x73626770

    const v12, 0x73656967

    .line 187
    iget v8, v8, Ls0/f;->a:I

    if-ne v8, v11, :cond_44

    const/16 v15, 0xc

    .line 188
    invoke-virtual {v10, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 189
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    if-ne v8, v12, :cond_43

    move-object v4, v10

    :cond_43
    :goto_3c
    const/4 v10, 0x1

    goto :goto_3d

    :cond_44
    const/16 v15, 0xc

    const v11, 0x73677064

    if-ne v8, v11, :cond_43

    .line 190
    invoke-virtual {v10, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 191
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    if-ne v8, v12, :cond_43

    move-object v5, v10

    goto :goto_3c

    :goto_3d
    add-int/2addr v7, v10

    goto :goto_3b

    :cond_45
    const/4 v10, 0x1

    const/16 v15, 0xc

    if-eqz v4, :cond_46

    if-nez v5, :cond_47

    :cond_46
    const/16 v22, 0x2

    goto/16 :goto_42

    :cond_47
    const/16 v7, 0x8

    .line 192
    invoke-virtual {v4, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 193
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    invoke-static {v8}, LP0/n;->parseFullBoxVersion(I)I

    move-result v8

    move/from16 v11, v20

    .line 194
    invoke-virtual {v4, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-ne v8, v10, :cond_48

    .line 195
    invoke-virtual {v4, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 196
    :cond_48
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    if-ne v4, v10, :cond_50

    .line 197
    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 198
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-static {v4}, LP0/n;->parseFullBoxVersion(I)I

    move-result v4

    .line 199
    invoke-virtual {v5, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-ne v4, v10, :cond_4a

    .line 200
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    cmp-long v4, v7, v28

    if-eqz v4, :cond_49

    const/4 v7, 0x2

    goto :goto_3e

    .line 201
    :cond_49
    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_4a
    const/4 v7, 0x2

    if-lt v4, v7, :cond_4b

    .line 202
    invoke-virtual {v5, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 203
    :cond_4b
    :goto_3e
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    const-wide/16 v20, 0x1

    cmp-long v4, v12, v20

    if-nez v4, :cond_4f

    const/4 v10, 0x1

    .line 204
    invoke-virtual {v5, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 205
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    and-int/lit16 v8, v4, 0xf0

    shr-int/lit8 v12, v8, 0x4

    and-int/lit8 v13, v4, 0xf

    .line 206
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    if-ne v4, v10, :cond_4c

    const/4 v8, 0x1

    goto :goto_3f

    :cond_4c
    const/4 v8, 0x0

    :goto_3f
    if-nez v8, :cond_4d

    move/from16 v22, v7

    move/from16 v20, v11

    goto :goto_42

    .line 207
    :cond_4d
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    move/from16 v20, v11

    move/from16 v4, v18

    .line 208
    new-array v11, v4, [B

    const/4 v14, 0x0

    .line 209
    invoke-virtual {v5, v11, v14, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    if-nez v10, :cond_4e

    .line 210
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 211
    new-array v6, v4, [B

    .line 212
    invoke-virtual {v5, v6, v14, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    move-object v14, v6

    :goto_40
    const/4 v4, 0x1

    goto :goto_41

    :cond_4e
    const/4 v14, 0x0

    goto :goto_40

    .line 213
    :goto_41
    iput-boolean v4, v1, LP0/L;->k:Z

    move/from16 v22, v7

    .line 214
    new-instance v7, LP0/K;

    invoke-direct/range {v7 .. v14}, LP0/K;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v7, v1, LP0/L;->m:LP0/K;

    goto :goto_42

    .line 215
    :cond_4f
    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 216
    :cond_50
    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 217
    :goto_42
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x0

    :goto_43
    if-ge v8, v4, :cond_53

    .line 218
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/e;

    .line 219
    iget v6, v5, Ls0/f;->a:I

    const v7, 0x75756964

    if-ne v6, v7, :cond_52

    .line 220
    iget-object v5, v5, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 221
    iget-object v7, v0, LP0/u;->i:[B

    const/16 v10, 0x10

    const/4 v14, 0x0

    invoke-virtual {v5, v7, v14, v10}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 222
    sget-object v9, LP0/u;->P:[B

    invoke-static {v7, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_51

    goto :goto_44

    .line 223
    :cond_51
    invoke-static {v5, v10, v1}, LP0/u;->c(Landroidx/media3/common/util/ParsableByteArray;ILP0/L;)V

    :goto_44
    const/16 v23, 0x1

    goto :goto_45

    :cond_52
    const/16 v6, 0x8

    const/16 v10, 0x10

    const/4 v14, 0x0

    goto :goto_44

    :goto_45
    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    :cond_53
    const/16 v10, 0x10

    goto/16 :goto_1a

    :cond_54
    move/from16 v26, v1

    move-object/from16 v44, v3

    move/from16 v49, v4

    move/from16 v27, v8

    move-object/from16 v43, v11

    move/from16 v48, v14

    move/from16 v10, v18

    const/16 v6, 0x8

    const/4 v14, 0x0

    const/16 v15, 0xc

    const/16 v22, 0x2

    :goto_46
    const/16 v23, 0x1

    add-int/lit8 v8, v27, 0x1

    move/from16 v18, v10

    move/from16 v1, v26

    move-object/from16 v11, v43

    move-object/from16 v3, v44

    move/from16 v14, v48

    move/from16 v4, v49

    goto/16 :goto_10

    :cond_55
    move-object/from16 v43, v11

    move/from16 v10, v18

    const/16 v6, 0x8

    const/4 v14, 0x0

    const/16 v22, 0x2

    const/16 v23, 0x1

    .line 224
    invoke-static/range {v43 .. v43}, LP0/u;->b(Ljava/util/ArrayList;)Landroidx/media3/common/DrmInitData;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 225
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v8, v14

    :goto_47
    if-ge v8, v3, :cond_56

    .line 226
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LP0/t;

    invoke-virtual {v4, v1}, LP0/t;->updateDrmInitData(Landroidx/media3/common/DrmInitData;)V

    add-int/lit8 v8, v8, 0x1

    const/16 v23, 0x1

    goto :goto_47

    .line 227
    :cond_56
    iget-wide v3, v0, LP0/u;->A:J

    cmp-long v1, v3, v16

    if-eqz v1, :cond_f

    .line 228
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v8, v14

    :goto_48
    if-ge v8, v1, :cond_57

    .line 229
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LP0/t;

    iget-wide v4, v0, LP0/u;->A:J

    invoke-virtual {v3, v4, v5}, LP0/t;->seek(J)V

    const/16 v23, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    :cond_57
    move-wide/from16 v3, v16

    const/16 v23, 0x1

    .line 230
    iput-wide v3, v0, LP0/u;->A:J

    goto/16 :goto_0

    :cond_58
    move/from16 v10, v18

    const/16 v6, 0x8

    const/4 v14, 0x0

    const/16 v22, 0x2

    const/16 v23, 0x1

    .line 231
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls0/d;

    invoke-virtual {v1, v9}, Ls0/d;->add(Ls0/d;)V

    goto/16 :goto_0

    .line 233
    :cond_59
    invoke-virtual {v0}, LP0/u;->a()V

    return-void
.end method

.method public getSniffFailureDetails()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lv0/k0;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LP0/u;->s:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getSniffFailureDetails()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, LP0/u;->getSniffFailureDetails()Lcom/google/common/collect/ImmutableList;

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LP0/u;->b:I

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x20

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    new-instance v2, LS0/t;

    .line 10
    .line 11
    iget-object v3, v0, LP0/u;->a:LS0/q;

    .line 12
    .line 13
    move-object/from16 v4, p1

    .line 14
    .line 15
    invoke-direct {v2, v4, v3}, LS0/t;-><init>(Lv0/F;LS0/q;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object/from16 v4, p1

    .line 20
    .line 21
    move-object v2, v4

    .line 22
    :goto_0
    iput-object v2, v0, LP0/u;->J:Lv0/F;

    .line 23
    .line 24
    invoke-virtual {v0}, LP0/u;->a()V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    new-array v2, v2, [Lv0/r0;

    .line 29
    .line 30
    iput-object v2, v0, LP0/u;->K:[Lv0/r0;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    iget-object v4, v0, LP0/u;->q:Lv0/r0;

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    aput-object v4, v2, v3

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v4, v3

    .line 42
    :goto_1
    and-int/lit8 v1, v1, 0x4

    .line 43
    .line 44
    const/16 v5, 0x64

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    add-int/lit8 v1, v4, 0x1

    .line 49
    .line 50
    iget-object v6, v0, LP0/u;->J:Lv0/F;

    .line 51
    .line 52
    const/4 v7, 0x5

    .line 53
    invoke-interface {v6, v5, v7}, Lv0/F;->track(II)Lv0/r0;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    aput-object v5, v2, v4

    .line 58
    .line 59
    const/16 v5, 0x65

    .line 60
    .line 61
    move v4, v1

    .line 62
    :cond_2
    iget-object v1, v0, LP0/u;->K:[Lv0/r0;

    .line 63
    .line 64
    invoke-static {v1, v4}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, [Lv0/r0;

    .line 69
    .line 70
    iput-object v1, v0, LP0/u;->K:[Lv0/r0;

    .line 71
    .line 72
    array-length v2, v1

    .line 73
    move v4, v3

    .line 74
    :goto_2
    if-ge v4, v2, :cond_3

    .line 75
    .line 76
    aget-object v6, v1, v4

    .line 77
    .line 78
    sget-object v7, LP0/u;->Q:Landroidx/media3/common/Format;

    .line 79
    .line 80
    invoke-interface {v6, v7}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    iget-object v1, v0, LP0/u;->d:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    new-array v2, v2, [Lv0/r0;

    .line 93
    .line 94
    iput-object v2, v0, LP0/u;->L:[Lv0/r0;

    .line 95
    .line 96
    move v2, v3

    .line 97
    :goto_3
    iget-object v4, v0, LP0/u;->L:[Lv0/r0;

    .line 98
    .line 99
    array-length v4, v4

    .line 100
    if-ge v2, v4, :cond_4

    .line 101
    .line 102
    iget-object v4, v0, LP0/u;->J:Lv0/F;

    .line 103
    .line 104
    add-int/lit8 v6, v5, 0x1

    .line 105
    .line 106
    const/4 v7, 0x3

    .line 107
    invoke-interface {v4, v5, v7}, Lv0/F;->track(II)Lv0/r0;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Landroidx/media3/common/Format;

    .line 116
    .line 117
    invoke-interface {v4, v5}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 118
    .line 119
    .line 120
    iget-object v5, v0, LP0/u;->L:[Lv0/r0;

    .line 121
    .line 122
    aput-object v4, v5, v2

    .line 123
    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    move v5, v6

    .line 127
    goto :goto_3

    .line 128
    :cond_4
    iget-object v1, v0, LP0/u;->c:LP0/J;

    .line 129
    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    iget-object v2, v1, LP0/J;->g:Landroidx/media3/common/Format;

    .line 133
    .line 134
    invoke-virtual {v2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iget-object v4, v1, LP0/J;->g:Landroidx/media3/common/Format;

    .line 139
    .line 140
    invoke-static {v4}, LP0/x;->getContainerMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v2, v4}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 145
    .line 146
    .line 147
    new-instance v4, LP0/t;

    .line 148
    .line 149
    iget-object v5, v0, LP0/u;->J:Lv0/F;

    .line 150
    .line 151
    iget v1, v1, LP0/J;->b:I

    .line 152
    .line 153
    invoke-interface {v5, v3, v1}, Lv0/F;->track(II)Lv0/r0;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    new-instance v5, LP0/M;

    .line 158
    .line 159
    new-array v7, v3, [J

    .line 160
    .line 161
    new-array v8, v3, [I

    .line 162
    .line 163
    new-array v10, v3, [J

    .line 164
    .line 165
    new-array v11, v3, [I

    .line 166
    .line 167
    new-array v12, v3, [I

    .line 168
    .line 169
    const-wide/16 v14, 0x0

    .line 170
    .line 171
    const/16 v16, 0x0

    .line 172
    .line 173
    iget-object v6, v0, LP0/u;->c:LP0/J;

    .line 174
    .line 175
    const/4 v9, 0x0

    .line 176
    const/4 v13, 0x0

    .line 177
    invoke-direct/range {v5 .. v16}, LP0/M;-><init>(LP0/J;[J[II[J[I[IZJI)V

    .line 178
    .line 179
    .line 180
    new-instance v6, LP0/o;

    .line 181
    .line 182
    invoke-direct {v6, v3, v3, v3, v3}, LP0/o;-><init>(IIII)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-direct {v4, v1, v5, v6, v2}, LP0/t;-><init>(Lv0/r0;LP0/M;LP0/o;Landroidx/media3/common/Format;)V

    .line 190
    .line 191
    .line 192
    iget-object v1, v0, LP0/u;->e:Landroid/util/SparseArray;

    .line 193
    .line 194
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v0, LP0/u;->J:Lv0/F;

    .line 198
    .line 199
    invoke-interface {v1}, Lv0/F;->endTracks()V

    .line 200
    .line 201
    .line 202
    :cond_5
    return-void
.end method

.method public modifyTrack(LP0/J;)LP0/J;
    .locals 0

    .line 1
    return-object p1
.end method

.method public read(Lv0/D;Lv0/c0;)I
    .locals 32
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
    :goto_0
    iget v2, v0, LP0/u;->t:I

    .line 6
    .line 7
    iget-object v3, v0, LP0/u;->n:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    iget-object v4, v0, LP0/u;->e:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    iget-object v8, v0, LP0/u;->p:Ls0/B;

    .line 13
    .line 14
    iget-object v10, v0, LP0/u;->j:Landroidx/media3/common/util/ParsableByteArray;

    .line 15
    .line 16
    iget-object v11, v0, LP0/u;->r:Lv0/s;

    .line 17
    .line 18
    const/4 v14, 0x2

    .line 19
    if-eqz v2, :cond_39

    .line 20
    .line 21
    iget-object v6, v0, LP0/u;->o:Ljava/util/ArrayDeque;

    .line 22
    .line 23
    iget-object v7, v0, LP0/u;->k:Landroidx/media3/common/util/TimestampAdjuster;

    .line 24
    .line 25
    iget v9, v0, LP0/u;->b:I

    .line 26
    .line 27
    const/16 v19, 0x0

    .line 28
    .line 29
    const-string v15, "FragmentedMp4Extractor"

    .line 30
    .line 31
    if-eq v2, v5, :cond_2a

    .line 32
    .line 33
    const-wide v16, 0x7fffffffffffffffL

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    if-eq v2, v14, :cond_25

    .line 39
    .line 40
    iget-object v2, v0, LP0/u;->D:LP0/t;

    .line 41
    .line 42
    if-nez v2, :cond_7

    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    move/from16 v20, v14

    .line 49
    .line 50
    move/from16 v14, v19

    .line 51
    .line 52
    const/4 v11, 0x0

    .line 53
    :goto_1
    if-ge v14, v2, :cond_3

    .line 54
    .line 55
    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v21

    .line 59
    const/16 v22, 0x8

    .line 60
    .line 61
    move-object/from16 v12, v21

    .line 62
    .line 63
    check-cast v12, LP0/t;

    .line 64
    .line 65
    move/from16 v21, v5

    .line 66
    .line 67
    iget-boolean v5, v12, LP0/t;->m:Z

    .line 68
    .line 69
    if-nez v5, :cond_0

    .line 70
    .line 71
    iget v3, v12, LP0/t;->f:I

    .line 72
    .line 73
    iget-object v13, v12, LP0/t;->d:LP0/M;

    .line 74
    .line 75
    iget v13, v13, LP0/M;->b:I

    .line 76
    .line 77
    if-eq v3, v13, :cond_2

    .line 78
    .line 79
    :cond_0
    if-eqz v5, :cond_1

    .line 80
    .line 81
    iget v3, v12, LP0/t;->h:I

    .line 82
    .line 83
    iget-object v5, v12, LP0/t;->b:LP0/L;

    .line 84
    .line 85
    iget v5, v5, LP0/L;->d:I

    .line 86
    .line 87
    if-ne v3, v5, :cond_1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_1
    invoke-virtual {v12}, LP0/t;->getCurrentSampleOffset()J

    .line 91
    .line 92
    .line 93
    move-result-wide v25

    .line 94
    cmp-long v3, v25, v16

    .line 95
    .line 96
    if-gez v3, :cond_2

    .line 97
    .line 98
    move-object v11, v12

    .line 99
    move-wide/from16 v16, v25

    .line 100
    .line 101
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    .line 102
    .line 103
    move/from16 v5, v21

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    move/from16 v21, v5

    .line 107
    .line 108
    const/16 v22, 0x8

    .line 109
    .line 110
    if-nez v11, :cond_5

    .line 111
    .line 112
    iget-wide v2, v0, LP0/u;->y:J

    .line 113
    .line 114
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 115
    .line 116
    .line 117
    move-result-wide v4

    .line 118
    sub-long/2addr v2, v4

    .line 119
    long-to-int v2, v2

    .line 120
    if-ltz v2, :cond_4

    .line 121
    .line 122
    invoke-interface {v1, v2}, Lv0/D;->skipFully(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, LP0/u;->a()V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_4
    const-string v1, "Offset to end of mdat was negative."

    .line 130
    .line 131
    const/4 v2, 0x0

    .line 132
    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    throw v1

    .line 137
    :cond_5
    invoke-virtual {v11}, LP0/t;->getCurrentSampleOffset()J

    .line 138
    .line 139
    .line 140
    move-result-wide v2

    .line 141
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 142
    .line 143
    .line 144
    move-result-wide v4

    .line 145
    sub-long/2addr v2, v4

    .line 146
    long-to-int v2, v2

    .line 147
    if-gez v2, :cond_6

    .line 148
    .line 149
    const-string v2, "Ignoring negative offset to sample data."

    .line 150
    .line 151
    invoke-static {v15, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    move/from16 v2, v19

    .line 155
    .line 156
    :cond_6
    invoke-interface {v1, v2}, Lv0/D;->skipFully(I)V

    .line 157
    .line 158
    .line 159
    iput-object v11, v0, LP0/u;->D:LP0/t;

    .line 160
    .line 161
    move-object v2, v11

    .line 162
    goto :goto_3

    .line 163
    :cond_7
    move/from16 v21, v5

    .line 164
    .line 165
    move/from16 v20, v14

    .line 166
    .line 167
    const/16 v22, 0x8

    .line 168
    .line 169
    :goto_3
    iget v3, v0, LP0/u;->t:I

    .line 170
    .line 171
    const/4 v4, 0x4

    .line 172
    const/4 v5, 0x3

    .line 173
    if-ne v3, v5, :cond_e

    .line 174
    .line 175
    invoke-virtual {v2}, LP0/t;->getCurrentSampleSize()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    iput v3, v0, LP0/u;->E:I

    .line 180
    .line 181
    iget-object v3, v2, LP0/t;->d:LP0/M;

    .line 182
    .line 183
    iget-object v3, v3, LP0/M;->a:LP0/J;

    .line 184
    .line 185
    iget-object v3, v3, LP0/J;->g:Landroidx/media3/common/Format;

    .line 186
    .line 187
    iget-object v5, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 188
    .line 189
    const-string v11, "video/avc"

    .line 190
    .line 191
    invoke-static {v5, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_9

    .line 196
    .line 197
    and-int/lit8 v3, v9, 0x40

    .line 198
    .line 199
    if-eqz v3, :cond_8

    .line 200
    .line 201
    :goto_4
    move/from16 v3, v21

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_8
    move/from16 v3, v19

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_9
    iget-object v3, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 208
    .line 209
    const-string v5, "video/hevc"

    .line 210
    .line 211
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_8

    .line 216
    .line 217
    and-int/lit16 v3, v9, 0x80

    .line 218
    .line 219
    if-eqz v3, :cond_8

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :goto_5
    xor-int/lit8 v3, v3, 0x1

    .line 223
    .line 224
    iput-boolean v3, v0, LP0/u;->H:Z

    .line 225
    .line 226
    iget v3, v2, LP0/t;->f:I

    .line 227
    .line 228
    iget v5, v2, LP0/t;->i:I

    .line 229
    .line 230
    if-ge v3, v5, :cond_b

    .line 231
    .line 232
    iget v3, v0, LP0/u;->E:I

    .line 233
    .line 234
    invoke-interface {v1, v3}, Lv0/D;->skipFully(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, LP0/t;->skipSampleEncryptionData()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2}, LP0/t;->next()Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-nez v1, :cond_a

    .line 245
    .line 246
    const/4 v2, 0x0

    .line 247
    iput-object v2, v0, LP0/u;->D:LP0/t;

    .line 248
    .line 249
    :cond_a
    const/4 v5, 0x3

    .line 250
    iput v5, v0, LP0/u;->t:I

    .line 251
    .line 252
    return v19

    .line 253
    :cond_b
    iget-object v3, v2, LP0/t;->d:LP0/M;

    .line 254
    .line 255
    iget-object v3, v3, LP0/M;->a:LP0/J;

    .line 256
    .line 257
    iget v3, v3, LP0/J;->h:I

    .line 258
    .line 259
    move/from16 v5, v21

    .line 260
    .line 261
    if-ne v3, v5, :cond_c

    .line 262
    .line 263
    iget v3, v0, LP0/u;->E:I

    .line 264
    .line 265
    add-int/lit8 v3, v3, -0x8

    .line 266
    .line 267
    iput v3, v0, LP0/u;->E:I

    .line 268
    .line 269
    move/from16 v3, v22

    .line 270
    .line 271
    invoke-interface {v1, v3}, Lv0/D;->skipFully(I)V

    .line 272
    .line 273
    .line 274
    :cond_c
    iget-object v3, v2, LP0/t;->d:LP0/M;

    .line 275
    .line 276
    iget-object v3, v3, LP0/M;->a:LP0/J;

    .line 277
    .line 278
    iget-object v3, v3, LP0/J;->g:Landroidx/media3/common/Format;

    .line 279
    .line 280
    iget-object v3, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 281
    .line 282
    const-string v5, "audio/ac4"

    .line 283
    .line 284
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-eqz v3, :cond_d

    .line 289
    .line 290
    iget v3, v0, LP0/u;->E:I

    .line 291
    .line 292
    const/4 v5, 0x7

    .line 293
    invoke-virtual {v2, v3, v5}, LP0/t;->outputSampleEncryptionData(II)I

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    iput v3, v0, LP0/u;->F:I

    .line 298
    .line 299
    iget v3, v0, LP0/u;->E:I

    .line 300
    .line 301
    invoke-static {v3, v10}, Lv0/g;->getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 302
    .line 303
    .line 304
    iget-object v3, v2, LP0/t;->a:Lv0/r0;

    .line 305
    .line 306
    invoke-interface {v3, v10, v5}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 307
    .line 308
    .line 309
    iget v3, v0, LP0/u;->F:I

    .line 310
    .line 311
    add-int/2addr v3, v5

    .line 312
    iput v3, v0, LP0/u;->F:I

    .line 313
    .line 314
    move/from16 v5, v19

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_d
    iget v3, v0, LP0/u;->E:I

    .line 318
    .line 319
    move/from16 v5, v19

    .line 320
    .line 321
    invoke-virtual {v2, v3, v5}, LP0/t;->outputSampleEncryptionData(II)I

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    iput v3, v0, LP0/u;->F:I

    .line 326
    .line 327
    :goto_6
    iget v3, v0, LP0/u;->E:I

    .line 328
    .line 329
    iget v9, v0, LP0/u;->F:I

    .line 330
    .line 331
    add-int/2addr v3, v9

    .line 332
    iput v3, v0, LP0/u;->E:I

    .line 333
    .line 334
    iput v4, v0, LP0/u;->t:I

    .line 335
    .line 336
    iput v5, v0, LP0/u;->G:I

    .line 337
    .line 338
    :cond_e
    iget-object v3, v2, LP0/t;->d:LP0/M;

    .line 339
    .line 340
    iget-object v3, v3, LP0/M;->a:LP0/J;

    .line 341
    .line 342
    invoke-virtual {v2}, LP0/t;->getCurrentSamplePresentationTimeUs()J

    .line 343
    .line 344
    .line 345
    move-result-wide v9

    .line 346
    if-eqz v7, :cond_f

    .line 347
    .line 348
    invoke-virtual {v7, v9, v10}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    .line 349
    .line 350
    .line 351
    move-result-wide v9

    .line 352
    :cond_f
    move-wide v12, v9

    .line 353
    iget v5, v3, LP0/J;->k:I

    .line 354
    .line 355
    iget-object v11, v2, LP0/t;->a:Lv0/r0;

    .line 356
    .line 357
    if-eqz v5, :cond_1c

    .line 358
    .line 359
    iget-object v5, v0, LP0/u;->g:Landroidx/media3/common/util/ParsableByteArray;

    .line 360
    .line 361
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 362
    .line 363
    .line 364
    move-result-object v9

    .line 365
    const/16 v19, 0x0

    .line 366
    .line 367
    aput-byte v19, v9, v19

    .line 368
    .line 369
    const/16 v21, 0x1

    .line 370
    .line 371
    aput-byte v19, v9, v21

    .line 372
    .line 373
    aput-byte v19, v9, v20

    .line 374
    .line 375
    iget v10, v3, LP0/J;->k:I

    .line 376
    .line 377
    rsub-int/lit8 v14, v10, 0x4

    .line 378
    .line 379
    :goto_7
    iget v15, v0, LP0/u;->F:I

    .line 380
    .line 381
    iget v4, v0, LP0/u;->E:I

    .line 382
    .line 383
    if-ge v15, v4, :cond_1b

    .line 384
    .line 385
    iget v4, v0, LP0/u;->G:I

    .line 386
    .line 387
    iget-object v15, v3, LP0/J;->g:Landroidx/media3/common/Format;

    .line 388
    .line 389
    if-nez v4, :cond_16

    .line 390
    .line 391
    iget-object v4, v0, LP0/u;->L:[Lv0/r0;

    .line 392
    .line 393
    array-length v4, v4

    .line 394
    if-gtz v4, :cond_11

    .line 395
    .line 396
    iget-boolean v4, v0, LP0/u;->H:Z

    .line 397
    .line 398
    if-nez v4, :cond_10

    .line 399
    .line 400
    goto :goto_8

    .line 401
    :cond_10
    move-object/from16 v22, v2

    .line 402
    .line 403
    move-object/from16 v16, v3

    .line 404
    .line 405
    goto :goto_9

    .line 406
    :cond_11
    :goto_8
    invoke-static {v15}, Ls0/v;->numberOfBytesInNalUnitHeader(Landroidx/media3/common/Format;)I

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    move-object/from16 v22, v2

    .line 411
    .line 412
    add-int v2, v10, v4

    .line 413
    .line 414
    move-object/from16 v16, v3

    .line 415
    .line 416
    iget v3, v0, LP0/u;->E:I

    .line 417
    .line 418
    move/from16 v17, v3

    .line 419
    .line 420
    iget v3, v0, LP0/u;->F:I

    .line 421
    .line 422
    sub-int v3, v17, v3

    .line 423
    .line 424
    if-gt v2, v3, :cond_12

    .line 425
    .line 426
    goto :goto_a

    .line 427
    :cond_12
    :goto_9
    const/4 v4, 0x0

    .line 428
    :goto_a
    add-int v2, v10, v4

    .line 429
    .line 430
    invoke-interface {v1, v9, v14, v2}, Lv0/D;->readFully([BII)V

    .line 431
    .line 432
    .line 433
    const/4 v2, 0x0

    .line 434
    invoke-virtual {v5, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-ltz v3, :cond_15

    .line 442
    .line 443
    sub-int/2addr v3, v4

    .line 444
    iput v3, v0, LP0/u;->G:I

    .line 445
    .line 446
    iget-object v3, v0, LP0/u;->f:Landroidx/media3/common/util/ParsableByteArray;

    .line 447
    .line 448
    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 449
    .line 450
    .line 451
    const/4 v2, 0x4

    .line 452
    invoke-interface {v11, v3, v2}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 453
    .line 454
    .line 455
    iget v3, v0, LP0/u;->F:I

    .line 456
    .line 457
    add-int/2addr v3, v2

    .line 458
    iput v3, v0, LP0/u;->F:I

    .line 459
    .line 460
    iget v3, v0, LP0/u;->E:I

    .line 461
    .line 462
    add-int/2addr v3, v14

    .line 463
    iput v3, v0, LP0/u;->E:I

    .line 464
    .line 465
    iget-object v3, v0, LP0/u;->L:[Lv0/r0;

    .line 466
    .line 467
    array-length v3, v3

    .line 468
    if-lez v3, :cond_13

    .line 469
    .line 470
    if-lez v4, :cond_13

    .line 471
    .line 472
    aget-byte v3, v9, v2

    .line 473
    .line 474
    invoke-static {v15, v3}, Ls0/v;->isNalUnitSei(Landroidx/media3/common/Format;B)Z

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    if-eqz v2, :cond_13

    .line 479
    .line 480
    const/4 v2, 0x1

    .line 481
    goto :goto_b

    .line 482
    :cond_13
    const/4 v2, 0x0

    .line 483
    :goto_b
    iput-boolean v2, v0, LP0/u;->I:Z

    .line 484
    .line 485
    invoke-interface {v11, v5, v4}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 486
    .line 487
    .line 488
    iget v2, v0, LP0/u;->F:I

    .line 489
    .line 490
    add-int/2addr v2, v4

    .line 491
    iput v2, v0, LP0/u;->F:I

    .line 492
    .line 493
    if-lez v4, :cond_14

    .line 494
    .line 495
    iget-boolean v2, v0, LP0/u;->H:Z

    .line 496
    .line 497
    if-nez v2, :cond_14

    .line 498
    .line 499
    const/4 v2, 0x4

    .line 500
    invoke-static {v9, v2, v4, v15}, Ls0/v;->isDependedOn([BIILandroidx/media3/common/Format;)Z

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    if-eqz v3, :cond_14

    .line 505
    .line 506
    const/4 v2, 0x1

    .line 507
    iput-boolean v2, v0, LP0/u;->H:Z

    .line 508
    .line 509
    :cond_14
    move-object/from16 v3, v16

    .line 510
    .line 511
    move-object/from16 v2, v22

    .line 512
    .line 513
    const/4 v4, 0x4

    .line 514
    goto/16 :goto_7

    .line 515
    .line 516
    :cond_15
    const-string v1, "Invalid NAL length"

    .line 517
    .line 518
    const/4 v2, 0x0

    .line 519
    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    throw v1

    .line 524
    :cond_16
    move-object/from16 v22, v2

    .line 525
    .line 526
    move-object/from16 v16, v3

    .line 527
    .line 528
    iget-boolean v2, v0, LP0/u;->I:Z

    .line 529
    .line 530
    if-eqz v2, :cond_1a

    .line 531
    .line 532
    iget-object v2, v0, LP0/u;->h:Landroidx/media3/common/util/ParsableByteArray;

    .line 533
    .line 534
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    iget v4, v0, LP0/u;->G:I

    .line 542
    .line 543
    move-object/from16 v17, v5

    .line 544
    .line 545
    const/4 v5, 0x0

    .line 546
    invoke-interface {v1, v3, v5, v4}, Lv0/D;->readFully([BII)V

    .line 547
    .line 548
    .line 549
    iget v3, v0, LP0/u;->G:I

    .line 550
    .line 551
    invoke-interface {v11, v2, v3}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 552
    .line 553
    .line 554
    iget v3, v0, LP0/u;->G:I

    .line 555
    .line 556
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    move/from16 v20, v3

    .line 561
    .line 562
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    invoke-static {v4, v3}, Ls0/v;->unescapeStream([BI)I

    .line 567
    .line 568
    .line 569
    move-result v3

    .line 570
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 574
    .line 575
    .line 576
    iget v3, v15, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    .line 577
    .line 578
    const/4 v4, -0x1

    .line 579
    if-ne v3, v4, :cond_17

    .line 580
    .line 581
    invoke-virtual {v8}, Ls0/B;->getMaxSize()I

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    if-eqz v3, :cond_18

    .line 586
    .line 587
    invoke-virtual {v8, v5}, Ls0/B;->setMaxSize(I)V

    .line 588
    .line 589
    .line 590
    goto :goto_c

    .line 591
    :cond_17
    invoke-virtual {v8}, Ls0/B;->getMaxSize()I

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    iget v4, v15, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    .line 596
    .line 597
    if-eq v3, v4, :cond_18

    .line 598
    .line 599
    invoke-virtual {v8, v4}, Ls0/B;->setMaxSize(I)V

    .line 600
    .line 601
    .line 602
    :cond_18
    :goto_c
    invoke-virtual {v8, v12, v13, v2}, Ls0/B;->add(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual/range {v22 .. v22}, LP0/t;->getCurrentSampleFlags()I

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    const/4 v3, 0x4

    .line 610
    and-int/2addr v2, v3

    .line 611
    if-eqz v2, :cond_19

    .line 612
    .line 613
    invoke-virtual {v8}, Ls0/B;->flush()V

    .line 614
    .line 615
    .line 616
    :cond_19
    move/from16 v2, v20

    .line 617
    .line 618
    goto :goto_d

    .line 619
    :cond_1a
    move-object/from16 v17, v5

    .line 620
    .line 621
    const/4 v3, 0x4

    .line 622
    const/4 v5, 0x0

    .line 623
    invoke-interface {v11, v1, v4, v5}, Lv0/r0;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    :goto_d
    iget v4, v0, LP0/u;->F:I

    .line 628
    .line 629
    add-int/2addr v4, v2

    .line 630
    iput v4, v0, LP0/u;->F:I

    .line 631
    .line 632
    iget v4, v0, LP0/u;->G:I

    .line 633
    .line 634
    sub-int/2addr v4, v2

    .line 635
    iput v4, v0, LP0/u;->G:I

    .line 636
    .line 637
    move v4, v3

    .line 638
    move-object/from16 v3, v16

    .line 639
    .line 640
    move-object/from16 v5, v17

    .line 641
    .line 642
    move-object/from16 v2, v22

    .line 643
    .line 644
    goto/16 :goto_7

    .line 645
    .line 646
    :cond_1b
    move-object/from16 v22, v2

    .line 647
    .line 648
    goto :goto_f

    .line 649
    :cond_1c
    move-object/from16 v22, v2

    .line 650
    .line 651
    :goto_e
    iget v2, v0, LP0/u;->F:I

    .line 652
    .line 653
    iget v3, v0, LP0/u;->E:I

    .line 654
    .line 655
    if-ge v2, v3, :cond_1d

    .line 656
    .line 657
    sub-int/2addr v3, v2

    .line 658
    const/4 v5, 0x0

    .line 659
    invoke-interface {v11, v1, v3, v5}, Lv0/r0;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    iget v3, v0, LP0/u;->F:I

    .line 664
    .line 665
    add-int/2addr v3, v2

    .line 666
    iput v3, v0, LP0/u;->F:I

    .line 667
    .line 668
    goto :goto_e

    .line 669
    :cond_1d
    :goto_f
    invoke-virtual/range {v22 .. v22}, LP0/t;->getCurrentSampleFlags()I

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    iget-boolean v2, v0, LP0/u;->H:Z

    .line 674
    .line 675
    if-nez v2, :cond_1e

    .line 676
    .line 677
    const/high16 v2, 0x4000000

    .line 678
    .line 679
    or-int/2addr v1, v2

    .line 680
    :cond_1e
    move v14, v1

    .line 681
    invoke-virtual/range {v22 .. v22}, LP0/t;->getEncryptionBoxIfEncrypted()LP0/K;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    if-eqz v1, :cond_1f

    .line 686
    .line 687
    iget-object v1, v1, LP0/K;->c:Lv0/q0;

    .line 688
    .line 689
    move-object/from16 v17, v1

    .line 690
    .line 691
    goto :goto_10

    .line 692
    :cond_1f
    const/16 v17, 0x0

    .line 693
    .line 694
    :goto_10
    iget v15, v0, LP0/u;->E:I

    .line 695
    .line 696
    const/16 v16, 0x0

    .line 697
    .line 698
    invoke-interface/range {v11 .. v17}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 699
    .line 700
    .line 701
    :cond_20
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 702
    .line 703
    .line 704
    move-result v1

    .line 705
    if-nez v1, :cond_23

    .line 706
    .line 707
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    check-cast v1, LP0/s;

    .line 712
    .line 713
    iget v2, v0, LP0/u;->z:I

    .line 714
    .line 715
    iget v3, v1, LP0/s;->c:I

    .line 716
    .line 717
    sub-int/2addr v2, v3

    .line 718
    iput v2, v0, LP0/u;->z:I

    .line 719
    .line 720
    iget-boolean v2, v1, LP0/s;->b:Z

    .line 721
    .line 722
    iget-wide v3, v1, LP0/s;->a:J

    .line 723
    .line 724
    if-eqz v2, :cond_21

    .line 725
    .line 726
    add-long/2addr v3, v12

    .line 727
    :cond_21
    if-eqz v7, :cond_22

    .line 728
    .line 729
    invoke-virtual {v7, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    .line 730
    .line 731
    .line 732
    move-result-wide v3

    .line 733
    :cond_22
    move-wide/from16 v26, v3

    .line 734
    .line 735
    iget-object v2, v0, LP0/u;->K:[Lv0/r0;

    .line 736
    .line 737
    array-length v3, v2

    .line 738
    const/4 v4, 0x0

    .line 739
    :goto_11
    if-ge v4, v3, :cond_20

    .line 740
    .line 741
    aget-object v25, v2, v4

    .line 742
    .line 743
    iget v5, v0, LP0/u;->z:I

    .line 744
    .line 745
    const/16 v31, 0x0

    .line 746
    .line 747
    const/16 v28, 0x1

    .line 748
    .line 749
    iget v8, v1, LP0/s;->c:I

    .line 750
    .line 751
    move/from16 v30, v5

    .line 752
    .line 753
    move/from16 v29, v8

    .line 754
    .line 755
    invoke-interface/range {v25 .. v31}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 756
    .line 757
    .line 758
    add-int/lit8 v4, v4, 0x1

    .line 759
    .line 760
    goto :goto_11

    .line 761
    :cond_23
    invoke-virtual/range {v22 .. v22}, LP0/t;->next()Z

    .line 762
    .line 763
    .line 764
    move-result v1

    .line 765
    if-nez v1, :cond_24

    .line 766
    .line 767
    const/4 v2, 0x0

    .line 768
    iput-object v2, v0, LP0/u;->D:LP0/t;

    .line 769
    .line 770
    :cond_24
    const/4 v5, 0x3

    .line 771
    iput v5, v0, LP0/u;->t:I

    .line 772
    .line 773
    const/16 v19, 0x0

    .line 774
    .line 775
    return v19

    .line 776
    :cond_25
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 777
    .line 778
    .line 779
    move-result v2

    .line 780
    const/4 v3, 0x0

    .line 781
    const/4 v15, 0x0

    .line 782
    :goto_12
    if-ge v15, v2, :cond_27

    .line 783
    .line 784
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v5

    .line 788
    check-cast v5, LP0/t;

    .line 789
    .line 790
    iget-object v5, v5, LP0/t;->b:LP0/L;

    .line 791
    .line 792
    iget-boolean v6, v5, LP0/L;->o:Z

    .line 793
    .line 794
    if-eqz v6, :cond_26

    .line 795
    .line 796
    iget-wide v5, v5, LP0/L;->c:J

    .line 797
    .line 798
    cmp-long v7, v5, v16

    .line 799
    .line 800
    if-gez v7, :cond_26

    .line 801
    .line 802
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v3

    .line 806
    check-cast v3, LP0/t;

    .line 807
    .line 808
    move-wide/from16 v16, v5

    .line 809
    .line 810
    :cond_26
    add-int/lit8 v15, v15, 0x1

    .line 811
    .line 812
    goto :goto_12

    .line 813
    :cond_27
    if-nez v3, :cond_28

    .line 814
    .line 815
    const/4 v5, 0x3

    .line 816
    iput v5, v0, LP0/u;->t:I

    .line 817
    .line 818
    goto/16 :goto_0

    .line 819
    .line 820
    :cond_28
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 821
    .line 822
    .line 823
    move-result-wide v4

    .line 824
    sub-long v4, v16, v4

    .line 825
    .line 826
    long-to-int v2, v4

    .line 827
    if-ltz v2, :cond_29

    .line 828
    .line 829
    invoke-interface {v1, v2}, Lv0/D;->skipFully(I)V

    .line 830
    .line 831
    .line 832
    iget-object v2, v3, LP0/t;->b:LP0/L;

    .line 833
    .line 834
    invoke-virtual {v2, v1}, LP0/L;->fillEncryptionData(Lv0/D;)V

    .line 835
    .line 836
    .line 837
    goto/16 :goto_0

    .line 838
    .line 839
    :cond_29
    const-string v1, "Offset to encryption data was negative."

    .line 840
    .line 841
    const/4 v2, 0x0

    .line 842
    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 843
    .line 844
    .line 845
    move-result-object v1

    .line 846
    throw v1

    .line 847
    :cond_2a
    iget-wide v4, v0, LP0/u;->v:J

    .line 848
    .line 849
    iget v2, v0, LP0/u;->w:I

    .line 850
    .line 851
    int-to-long v12, v2

    .line 852
    sub-long/2addr v4, v12

    .line 853
    long-to-int v2, v4

    .line 854
    iget-object v4, v0, LP0/u;->x:Landroidx/media3/common/util/ParsableByteArray;

    .line 855
    .line 856
    if-eqz v4, :cond_37

    .line 857
    .line 858
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 859
    .line 860
    .line 861
    move-result-object v5

    .line 862
    const/16 v8, 0x8

    .line 863
    .line 864
    invoke-interface {v1, v5, v8, v2}, Lv0/D;->readFully([BII)V

    .line 865
    .line 866
    .line 867
    new-instance v2, Ls0/e;

    .line 868
    .line 869
    iget v5, v0, LP0/u;->u:I

    .line 870
    .line 871
    invoke-direct {v2, v5, v4}, Ls0/e;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 875
    .line 876
    .line 877
    move-result v4

    .line 878
    if-nez v4, :cond_2b

    .line 879
    .line 880
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v3

    .line 884
    check-cast v3, Ls0/d;

    .line 885
    .line 886
    invoke-virtual {v3, v2}, Ls0/d;->add(Ls0/e;)V

    .line 887
    .line 888
    .line 889
    goto/16 :goto_18

    .line 890
    .line 891
    :cond_2b
    iget v3, v2, Ls0/f;->a:I

    .line 892
    .line 893
    iget-object v2, v2, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 894
    .line 895
    const v4, 0x73696478

    .line 896
    .line 897
    .line 898
    if-ne v3, v4, :cond_2d

    .line 899
    .line 900
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 901
    .line 902
    .line 903
    move-result-wide v3

    .line 904
    invoke-static {v3, v4, v2}, LP0/u;->d(JLandroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    .line 905
    .line 906
    .line 907
    move-result-object v2

    .line 908
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 909
    .line 910
    check-cast v3, Lv0/r;

    .line 911
    .line 912
    invoke-virtual {v11, v3}, Lv0/s;->add(Lv0/r;)V

    .line 913
    .line 914
    .line 915
    iget-boolean v3, v0, LP0/u;->M:Z

    .line 916
    .line 917
    if-nez v3, :cond_2c

    .line 918
    .line 919
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 920
    .line 921
    check-cast v3, Ljava/lang/Long;

    .line 922
    .line 923
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 924
    .line 925
    .line 926
    move-result-wide v3

    .line 927
    iput-wide v3, v0, LP0/u;->C:J

    .line 928
    .line 929
    iget-object v3, v0, LP0/u;->J:Lv0/F;

    .line 930
    .line 931
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 932
    .line 933
    check-cast v2, Lv0/g0;

    .line 934
    .line 935
    invoke-interface {v3, v2}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 936
    .line 937
    .line 938
    const/4 v2, 0x1

    .line 939
    iput-boolean v2, v0, LP0/u;->M:Z

    .line 940
    .line 941
    goto/16 :goto_18

    .line 942
    .line 943
    :cond_2c
    const/4 v2, 0x1

    .line 944
    and-int/lit16 v3, v9, 0x100

    .line 945
    .line 946
    if-eqz v3, :cond_38

    .line 947
    .line 948
    iget-boolean v3, v0, LP0/u;->N:Z

    .line 949
    .line 950
    if-nez v3, :cond_38

    .line 951
    .line 952
    invoke-virtual {v11}, Lv0/s;->size()I

    .line 953
    .line 954
    .line 955
    move-result v3

    .line 956
    if-le v3, v2, :cond_38

    .line 957
    .line 958
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 959
    .line 960
    .line 961
    move-result-wide v2

    .line 962
    iput-wide v2, v0, LP0/u;->O:J

    .line 963
    .line 964
    goto/16 :goto_18

    .line 965
    .line 966
    :cond_2d
    const v4, 0x656d7367

    .line 967
    .line 968
    .line 969
    if-ne v3, v4, :cond_38

    .line 970
    .line 971
    iget-object v3, v0, LP0/u;->K:[Lv0/r0;

    .line 972
    .line 973
    array-length v3, v3

    .line 974
    if-nez v3, :cond_2e

    .line 975
    .line 976
    goto/16 :goto_18

    .line 977
    .line 978
    :cond_2e
    const/16 v3, 0x8

    .line 979
    .line 980
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 984
    .line 985
    .line 986
    move-result v3

    .line 987
    invoke-static {v3}, LP0/n;->parseFullBoxVersion(I)I

    .line 988
    .line 989
    .line 990
    move-result v3

    .line 991
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    if-eqz v3, :cond_30

    .line 997
    .line 998
    const/4 v8, 0x1

    .line 999
    if-eq v3, v8, :cond_2f

    .line 1000
    .line 1001
    const-string v2, "Skipping unsupported emsg version: "

    .line 1002
    .line 1003
    invoke-static {v3, v2, v15}, LA/i;->v(ILjava/lang/String;Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    goto/16 :goto_18

    .line 1007
    .line 1008
    :cond_2f
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 1009
    .line 1010
    .line 1011
    move-result-wide v12

    .line 1012
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    .line 1013
    .line 1014
    .line 1015
    move-result-wide v8

    .line 1016
    const-wide/32 v10, 0xf4240

    .line 1017
    .line 1018
    .line 1019
    invoke-static/range {v8 .. v13}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1020
    .line 1021
    .line 1022
    move-result-wide v14

    .line 1023
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 1024
    .line 1025
    .line 1026
    move-result-wide v8

    .line 1027
    const-wide/16 v10, 0x3e8

    .line 1028
    .line 1029
    invoke-static/range {v8 .. v13}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1030
    .line 1031
    .line 1032
    move-result-wide v8

    .line 1033
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 1034
    .line 1035
    .line 1036
    move-result-wide v10

    .line 1037
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v3

    .line 1041
    invoke-static {v3}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v3

    .line 1045
    check-cast v3, Ljava/lang/String;

    .line 1046
    .line 1047
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v12

    .line 1051
    invoke-static {v12}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v12

    .line 1055
    check-cast v12, Ljava/lang/String;

    .line 1056
    .line 1057
    move-wide/from16 v25, v8

    .line 1058
    .line 1059
    move-wide/from16 v27, v10

    .line 1060
    .line 1061
    move-wide v8, v4

    .line 1062
    :goto_13
    move-object/from16 v23, v3

    .line 1063
    .line 1064
    move-object/from16 v24, v12

    .line 1065
    .line 1066
    goto :goto_15

    .line 1067
    :cond_30
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v3

    .line 1071
    invoke-static {v3}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v3

    .line 1075
    check-cast v3, Ljava/lang/String;

    .line 1076
    .line 1077
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v8

    .line 1081
    invoke-static {v8}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v8

    .line 1085
    move-object v12, v8

    .line 1086
    check-cast v12, Ljava/lang/String;

    .line 1087
    .line 1088
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 1089
    .line 1090
    .line 1091
    move-result-wide v17

    .line 1092
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 1093
    .line 1094
    .line 1095
    move-result-wide v13

    .line 1096
    const-wide/32 v15, 0xf4240

    .line 1097
    .line 1098
    .line 1099
    invoke-static/range {v13 .. v18}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1100
    .line 1101
    .line 1102
    move-result-wide v8

    .line 1103
    iget-wide v10, v0, LP0/u;->C:J

    .line 1104
    .line 1105
    cmp-long v13, v10, v4

    .line 1106
    .line 1107
    if-eqz v13, :cond_31

    .line 1108
    .line 1109
    add-long/2addr v10, v8

    .line 1110
    goto :goto_14

    .line 1111
    :cond_31
    move-wide v10, v4

    .line 1112
    :goto_14
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 1113
    .line 1114
    .line 1115
    move-result-wide v13

    .line 1116
    const-wide/16 v15, 0x3e8

    .line 1117
    .line 1118
    invoke-static/range {v13 .. v18}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 1119
    .line 1120
    .line 1121
    move-result-wide v13

    .line 1122
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 1123
    .line 1124
    .line 1125
    move-result-wide v15

    .line 1126
    move-wide/from16 v25, v13

    .line 1127
    .line 1128
    move-wide/from16 v27, v15

    .line 1129
    .line 1130
    move-wide v14, v10

    .line 1131
    goto :goto_13

    .line 1132
    :goto_15
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 1133
    .line 1134
    .line 1135
    move-result v3

    .line 1136
    new-array v3, v3, [B

    .line 1137
    .line 1138
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 1139
    .line 1140
    .line 1141
    move-result v10

    .line 1142
    const/4 v11, 0x0

    .line 1143
    invoke-virtual {v2, v3, v11, v10}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1144
    .line 1145
    .line 1146
    new-instance v22, LG0/a;

    .line 1147
    .line 1148
    move-object/from16 v29, v3

    .line 1149
    .line 1150
    invoke-direct/range {v22 .. v29}, LG0/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 1151
    .line 1152
    .line 1153
    move-object/from16 v2, v22

    .line 1154
    .line 1155
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    .line 1156
    .line 1157
    iget-object v10, v0, LP0/u;->l:LG0/c;

    .line 1158
    .line 1159
    invoke-virtual {v10, v2}, LG0/c;->encode(LG0/a;)[B

    .line 1160
    .line 1161
    .line 1162
    move-result-object v2

    .line 1163
    invoke-direct {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 1167
    .line 1168
    .line 1169
    move-result v2

    .line 1170
    iget-object v10, v0, LP0/u;->K:[Lv0/r0;

    .line 1171
    .line 1172
    array-length v11, v10

    .line 1173
    const/4 v12, 0x0

    .line 1174
    :goto_16
    if-ge v12, v11, :cond_32

    .line 1175
    .line 1176
    aget-object v13, v10, v12

    .line 1177
    .line 1178
    move-wide/from16 v16, v4

    .line 1179
    .line 1180
    const/4 v4, 0x0

    .line 1181
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1182
    .line 1183
    .line 1184
    invoke-interface {v13, v3, v2}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 1185
    .line 1186
    .line 1187
    add-int/lit8 v12, v12, 0x1

    .line 1188
    .line 1189
    move-wide/from16 v4, v16

    .line 1190
    .line 1191
    goto :goto_16

    .line 1192
    :cond_32
    move-wide/from16 v16, v4

    .line 1193
    .line 1194
    cmp-long v3, v14, v16

    .line 1195
    .line 1196
    if-nez v3, :cond_33

    .line 1197
    .line 1198
    new-instance v3, LP0/s;

    .line 1199
    .line 1200
    const/4 v5, 0x1

    .line 1201
    invoke-direct {v3, v8, v9, v5, v2}, LP0/s;-><init>(JZI)V

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v6, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1205
    .line 1206
    .line 1207
    iget v3, v0, LP0/u;->z:I

    .line 1208
    .line 1209
    add-int/2addr v3, v2

    .line 1210
    iput v3, v0, LP0/u;->z:I

    .line 1211
    .line 1212
    goto :goto_18

    .line 1213
    :cond_33
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1214
    .line 1215
    .line 1216
    move-result v3

    .line 1217
    if-nez v3, :cond_34

    .line 1218
    .line 1219
    new-instance v3, LP0/s;

    .line 1220
    .line 1221
    const/4 v5, 0x0

    .line 1222
    invoke-direct {v3, v14, v15, v5, v2}, LP0/s;-><init>(JZI)V

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {v6, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1226
    .line 1227
    .line 1228
    iget v3, v0, LP0/u;->z:I

    .line 1229
    .line 1230
    add-int/2addr v3, v2

    .line 1231
    iput v3, v0, LP0/u;->z:I

    .line 1232
    .line 1233
    goto :goto_18

    .line 1234
    :cond_34
    const/4 v5, 0x0

    .line 1235
    if-eqz v7, :cond_35

    .line 1236
    .line 1237
    invoke-virtual {v7}, Landroidx/media3/common/util/TimestampAdjuster;->isInitialized()Z

    .line 1238
    .line 1239
    .line 1240
    move-result v3

    .line 1241
    if-nez v3, :cond_35

    .line 1242
    .line 1243
    new-instance v3, LP0/s;

    .line 1244
    .line 1245
    invoke-direct {v3, v14, v15, v5, v2}, LP0/s;-><init>(JZI)V

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v6, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1249
    .line 1250
    .line 1251
    iget v3, v0, LP0/u;->z:I

    .line 1252
    .line 1253
    add-int/2addr v3, v2

    .line 1254
    iput v3, v0, LP0/u;->z:I

    .line 1255
    .line 1256
    goto :goto_18

    .line 1257
    :cond_35
    if-eqz v7, :cond_36

    .line 1258
    .line 1259
    invoke-virtual {v7, v14, v15}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    .line 1260
    .line 1261
    .line 1262
    move-result-wide v14

    .line 1263
    :cond_36
    move-wide/from16 v23, v14

    .line 1264
    .line 1265
    iget-object v3, v0, LP0/u;->K:[Lv0/r0;

    .line 1266
    .line 1267
    array-length v4, v3

    .line 1268
    const/4 v15, 0x0

    .line 1269
    :goto_17
    if-ge v15, v4, :cond_38

    .line 1270
    .line 1271
    aget-object v22, v3, v15

    .line 1272
    .line 1273
    const/16 v28, 0x0

    .line 1274
    .line 1275
    const/16 v25, 0x1

    .line 1276
    .line 1277
    const/16 v27, 0x0

    .line 1278
    .line 1279
    move/from16 v26, v2

    .line 1280
    .line 1281
    invoke-interface/range {v22 .. v28}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 1282
    .line 1283
    .line 1284
    add-int/lit8 v15, v15, 0x1

    .line 1285
    .line 1286
    goto :goto_17

    .line 1287
    :cond_37
    invoke-interface {v1, v2}, Lv0/D;->skipFully(I)V

    .line 1288
    .line 1289
    .line 1290
    :cond_38
    :goto_18
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 1291
    .line 1292
    .line 1293
    move-result-wide v2

    .line 1294
    invoke-virtual {v0, v2, v3}, LP0/u;->e(J)V

    .line 1295
    .line 1296
    .line 1297
    goto/16 :goto_0

    .line 1298
    .line 1299
    :cond_39
    move/from16 v20, v14

    .line 1300
    .line 1301
    iget v2, v0, LP0/u;->w:I

    .line 1302
    .line 1303
    const-wide/16 v5, -0x1

    .line 1304
    .line 1305
    iget-object v7, v0, LP0/u;->m:Landroidx/media3/common/util/ParsableByteArray;

    .line 1306
    .line 1307
    if-nez v2, :cond_3c

    .line 1308
    .line 1309
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 1310
    .line 1311
    .line 1312
    move-result-object v2

    .line 1313
    const/4 v9, 0x1

    .line 1314
    const/16 v12, 0x8

    .line 1315
    .line 1316
    const/4 v13, 0x0

    .line 1317
    invoke-interface {v1, v2, v13, v12, v9}, Lv0/D;->readFully([BIIZ)Z

    .line 1318
    .line 1319
    .line 1320
    move-result v2

    .line 1321
    if-nez v2, :cond_3b

    .line 1322
    .line 1323
    iget-wide v1, v0, LP0/u;->O:J

    .line 1324
    .line 1325
    cmp-long v3, v1, v5

    .line 1326
    .line 1327
    if-eqz v3, :cond_3a

    .line 1328
    .line 1329
    move-object/from16 v12, p2

    .line 1330
    .line 1331
    iput-wide v1, v12, Lv0/c0;->a:J

    .line 1332
    .line 1333
    iput-wide v5, v0, LP0/u;->O:J

    .line 1334
    .line 1335
    iget-object v1, v0, LP0/u;->J:Lv0/F;

    .line 1336
    .line 1337
    invoke-virtual {v11}, Lv0/s;->merge()Lv0/r;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v2

    .line 1341
    invoke-interface {v1, v2}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 1342
    .line 1343
    .line 1344
    iput-boolean v9, v0, LP0/u;->N:Z

    .line 1345
    .line 1346
    return v9

    .line 1347
    :cond_3a
    invoke-virtual {v8}, Ls0/B;->flush()V

    .line 1348
    .line 1349
    .line 1350
    const/16 v18, -0x1

    .line 1351
    .line 1352
    return v18

    .line 1353
    :cond_3b
    move-object/from16 v12, p2

    .line 1354
    .line 1355
    const/16 v8, 0x8

    .line 1356
    .line 1357
    iput v8, v0, LP0/u;->w:I

    .line 1358
    .line 1359
    const/4 v13, 0x0

    .line 1360
    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 1364
    .line 1365
    .line 1366
    move-result-wide v8

    .line 1367
    iput-wide v8, v0, LP0/u;->v:J

    .line 1368
    .line 1369
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 1370
    .line 1371
    .line 1372
    move-result v2

    .line 1373
    iput v2, v0, LP0/u;->u:I

    .line 1374
    .line 1375
    goto :goto_19

    .line 1376
    :cond_3c
    move-object/from16 v12, p2

    .line 1377
    .line 1378
    :goto_19
    iget-wide v8, v0, LP0/u;->v:J

    .line 1379
    .line 1380
    const-wide/16 v13, 0x1

    .line 1381
    .line 1382
    cmp-long v2, v8, v13

    .line 1383
    .line 1384
    if-nez v2, :cond_3d

    .line 1385
    .line 1386
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 1387
    .line 1388
    .line 1389
    move-result-object v2

    .line 1390
    const/16 v8, 0x8

    .line 1391
    .line 1392
    invoke-interface {v1, v2, v8, v8}, Lv0/D;->readFully([BII)V

    .line 1393
    .line 1394
    .line 1395
    iget v2, v0, LP0/u;->w:I

    .line 1396
    .line 1397
    add-int/2addr v2, v8

    .line 1398
    iput v2, v0, LP0/u;->w:I

    .line 1399
    .line 1400
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    .line 1401
    .line 1402
    .line 1403
    move-result-wide v8

    .line 1404
    iput-wide v8, v0, LP0/u;->v:J

    .line 1405
    .line 1406
    goto :goto_1a

    .line 1407
    :cond_3d
    const-wide/16 v13, 0x0

    .line 1408
    .line 1409
    cmp-long v2, v8, v13

    .line 1410
    .line 1411
    if-nez v2, :cond_3f

    .line 1412
    .line 1413
    invoke-interface {v1}, Lv0/D;->getLength()J

    .line 1414
    .line 1415
    .line 1416
    move-result-wide v8

    .line 1417
    cmp-long v2, v8, v5

    .line 1418
    .line 1419
    if-nez v2, :cond_3e

    .line 1420
    .line 1421
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1422
    .line 1423
    .line 1424
    move-result v2

    .line 1425
    if-nez v2, :cond_3e

    .line 1426
    .line 1427
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v2

    .line 1431
    check-cast v2, Ls0/d;

    .line 1432
    .line 1433
    iget-wide v8, v2, Ls0/d;->b:J

    .line 1434
    .line 1435
    :cond_3e
    cmp-long v2, v8, v5

    .line 1436
    .line 1437
    if-eqz v2, :cond_3f

    .line 1438
    .line 1439
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 1440
    .line 1441
    .line 1442
    move-result-wide v13

    .line 1443
    sub-long/2addr v8, v13

    .line 1444
    iget v2, v0, LP0/u;->w:I

    .line 1445
    .line 1446
    int-to-long v13, v2

    .line 1447
    add-long/2addr v8, v13

    .line 1448
    iput-wide v8, v0, LP0/u;->v:J

    .line 1449
    .line 1450
    :cond_3f
    :goto_1a
    iget-wide v8, v0, LP0/u;->v:J

    .line 1451
    .line 1452
    iget v2, v0, LP0/u;->w:I

    .line 1453
    .line 1454
    int-to-long v13, v2

    .line 1455
    cmp-long v8, v8, v13

    .line 1456
    .line 1457
    if-gez v8, :cond_41

    .line 1458
    .line 1459
    iget v8, v0, LP0/u;->u:I

    .line 1460
    .line 1461
    const v9, 0x66726565

    .line 1462
    .line 1463
    .line 1464
    if-ne v8, v9, :cond_40

    .line 1465
    .line 1466
    const/16 v8, 0x8

    .line 1467
    .line 1468
    if-ne v2, v8, :cond_40

    .line 1469
    .line 1470
    iput-wide v13, v0, LP0/u;->v:J

    .line 1471
    .line 1472
    goto :goto_1b

    .line 1473
    :cond_40
    const-string v1, "Atom size less than header length (unsupported)."

    .line 1474
    .line 1475
    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v1

    .line 1479
    throw v1

    .line 1480
    :cond_41
    :goto_1b
    iget-wide v8, v0, LP0/u;->O:J

    .line 1481
    .line 1482
    cmp-long v2, v8, v5

    .line 1483
    .line 1484
    if-eqz v2, :cond_43

    .line 1485
    .line 1486
    iget v2, v0, LP0/u;->u:I

    .line 1487
    .line 1488
    const v4, 0x73696478

    .line 1489
    .line 1490
    .line 1491
    if-ne v2, v4, :cond_42

    .line 1492
    .line 1493
    iget-wide v2, v0, LP0/u;->v:J

    .line 1494
    .line 1495
    long-to-int v2, v2

    .line 1496
    invoke-virtual {v10, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1497
    .line 1498
    .line 1499
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 1500
    .line 1501
    .line 1502
    move-result-object v2

    .line 1503
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 1504
    .line 1505
    .line 1506
    move-result-object v3

    .line 1507
    const/4 v5, 0x0

    .line 1508
    const/16 v8, 0x8

    .line 1509
    .line 1510
    invoke-static {v2, v5, v3, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 1514
    .line 1515
    .line 1516
    move-result-object v2

    .line 1517
    iget-wide v3, v0, LP0/u;->v:J

    .line 1518
    .line 1519
    iget v5, v0, LP0/u;->w:I

    .line 1520
    .line 1521
    int-to-long v5, v5

    .line 1522
    sub-long/2addr v3, v5

    .line 1523
    long-to-int v3, v3

    .line 1524
    invoke-interface {v1, v2, v8, v3}, Lv0/D;->readFully([BII)V

    .line 1525
    .line 1526
    .line 1527
    new-instance v2, Ls0/e;

    .line 1528
    .line 1529
    const v4, 0x73696478

    .line 1530
    .line 1531
    .line 1532
    invoke-direct {v2, v4, v10}, Ls0/e;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 1533
    .line 1534
    .line 1535
    iget-object v2, v2, Ls0/e;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 1536
    .line 1537
    invoke-interface {v1}, Lv0/D;->getPeekPosition()J

    .line 1538
    .line 1539
    .line 1540
    move-result-wide v3

    .line 1541
    invoke-static {v3, v4, v2}, LP0/u;->d(JLandroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v2

    .line 1545
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1546
    .line 1547
    check-cast v2, Lv0/r;

    .line 1548
    .line 1549
    invoke-virtual {v11, v2}, Lv0/s;->add(Lv0/r;)V

    .line 1550
    .line 1551
    .line 1552
    goto :goto_1c

    .line 1553
    :cond_42
    iget-wide v2, v0, LP0/u;->v:J

    .line 1554
    .line 1555
    sub-long/2addr v2, v13

    .line 1556
    long-to-int v2, v2

    .line 1557
    const/4 v5, 0x1

    .line 1558
    invoke-interface {v1, v2, v5}, Lv0/D;->skipFully(IZ)Z

    .line 1559
    .line 1560
    .line 1561
    :goto_1c
    invoke-virtual {v0}, LP0/u;->a()V

    .line 1562
    .line 1563
    .line 1564
    goto/16 :goto_0

    .line 1565
    .line 1566
    :cond_43
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 1567
    .line 1568
    .line 1569
    move-result-wide v5

    .line 1570
    iget v2, v0, LP0/u;->w:I

    .line 1571
    .line 1572
    int-to-long v8, v2

    .line 1573
    sub-long/2addr v5, v8

    .line 1574
    iget v2, v0, LP0/u;->u:I

    .line 1575
    .line 1576
    const v8, 0x6d646174

    .line 1577
    .line 1578
    .line 1579
    const v9, 0x6d6f6f66

    .line 1580
    .line 1581
    .line 1582
    if-eq v2, v9, :cond_44

    .line 1583
    .line 1584
    if-ne v2, v8, :cond_45

    .line 1585
    .line 1586
    :cond_44
    iget-boolean v2, v0, LP0/u;->M:Z

    .line 1587
    .line 1588
    if-nez v2, :cond_45

    .line 1589
    .line 1590
    iget-object v2, v0, LP0/u;->J:Lv0/F;

    .line 1591
    .line 1592
    new-instance v11, Lv0/f0;

    .line 1593
    .line 1594
    iget-wide v13, v0, LP0/u;->B:J

    .line 1595
    .line 1596
    invoke-direct {v11, v13, v14, v5, v6}, Lv0/f0;-><init>(JJ)V

    .line 1597
    .line 1598
    .line 1599
    invoke-interface {v2, v11}, Lv0/F;->seekMap(Lv0/g0;)V

    .line 1600
    .line 1601
    .line 1602
    const/4 v2, 0x1

    .line 1603
    iput-boolean v2, v0, LP0/u;->M:Z

    .line 1604
    .line 1605
    :cond_45
    iget v2, v0, LP0/u;->u:I

    .line 1606
    .line 1607
    if-ne v2, v9, :cond_46

    .line 1608
    .line 1609
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 1610
    .line 1611
    .line 1612
    move-result v2

    .line 1613
    const/4 v11, 0x0

    .line 1614
    :goto_1d
    if-ge v11, v2, :cond_46

    .line 1615
    .line 1616
    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v13

    .line 1620
    check-cast v13, LP0/t;

    .line 1621
    .line 1622
    iget-object v13, v13, LP0/t;->b:LP0/L;

    .line 1623
    .line 1624
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1625
    .line 1626
    .line 1627
    iput-wide v5, v13, LP0/L;->c:J

    .line 1628
    .line 1629
    iput-wide v5, v13, LP0/L;->b:J

    .line 1630
    .line 1631
    add-int/lit8 v11, v11, 0x1

    .line 1632
    .line 1633
    goto :goto_1d

    .line 1634
    :cond_46
    iget v2, v0, LP0/u;->u:I

    .line 1635
    .line 1636
    if-ne v2, v8, :cond_47

    .line 1637
    .line 1638
    const/4 v4, 0x0

    .line 1639
    iput-object v4, v0, LP0/u;->D:LP0/t;

    .line 1640
    .line 1641
    iget-wide v2, v0, LP0/u;->v:J

    .line 1642
    .line 1643
    add-long/2addr v5, v2

    .line 1644
    iput-wide v5, v0, LP0/u;->y:J

    .line 1645
    .line 1646
    move/from16 v2, v20

    .line 1647
    .line 1648
    iput v2, v0, LP0/u;->t:I

    .line 1649
    .line 1650
    goto/16 :goto_0

    .line 1651
    .line 1652
    :cond_47
    const v4, 0x6d6f6f76

    .line 1653
    .line 1654
    .line 1655
    const v5, 0x6d657461

    .line 1656
    .line 1657
    .line 1658
    if-eq v2, v4, :cond_4e

    .line 1659
    .line 1660
    const v4, 0x7472616b

    .line 1661
    .line 1662
    .line 1663
    if-eq v2, v4, :cond_4e

    .line 1664
    .line 1665
    const v4, 0x6d646961

    .line 1666
    .line 1667
    .line 1668
    if-eq v2, v4, :cond_4e

    .line 1669
    .line 1670
    const v4, 0x6d696e66

    .line 1671
    .line 1672
    .line 1673
    if-eq v2, v4, :cond_4e

    .line 1674
    .line 1675
    const v4, 0x7374626c

    .line 1676
    .line 1677
    .line 1678
    if-eq v2, v4, :cond_4e

    .line 1679
    .line 1680
    if-eq v2, v9, :cond_4e

    .line 1681
    .line 1682
    const v4, 0x74726166

    .line 1683
    .line 1684
    .line 1685
    if-eq v2, v4, :cond_4e

    .line 1686
    .line 1687
    const v4, 0x6d766578

    .line 1688
    .line 1689
    .line 1690
    if-eq v2, v4, :cond_4e

    .line 1691
    .line 1692
    const v4, 0x65647473

    .line 1693
    .line 1694
    .line 1695
    if-eq v2, v4, :cond_4e

    .line 1696
    .line 1697
    if-ne v2, v5, :cond_48

    .line 1698
    .line 1699
    goto/16 :goto_1f

    .line 1700
    .line 1701
    :cond_48
    const v3, 0x68646c72    # 4.3148E24f

    .line 1702
    .line 1703
    .line 1704
    const-wide/32 v4, 0x7fffffff

    .line 1705
    .line 1706
    .line 1707
    if-eq v2, v3, :cond_4b

    .line 1708
    .line 1709
    const v3, 0x6d646864

    .line 1710
    .line 1711
    .line 1712
    if-eq v2, v3, :cond_4b

    .line 1713
    .line 1714
    const v3, 0x6d766864

    .line 1715
    .line 1716
    .line 1717
    if-eq v2, v3, :cond_4b

    .line 1718
    .line 1719
    const v3, 0x73696478

    .line 1720
    .line 1721
    .line 1722
    if-eq v2, v3, :cond_4b

    .line 1723
    .line 1724
    const v3, 0x73747364

    .line 1725
    .line 1726
    .line 1727
    if-eq v2, v3, :cond_4b

    .line 1728
    .line 1729
    const v3, 0x73747473

    .line 1730
    .line 1731
    .line 1732
    if-eq v2, v3, :cond_4b

    .line 1733
    .line 1734
    const v3, 0x63747473

    .line 1735
    .line 1736
    .line 1737
    if-eq v2, v3, :cond_4b

    .line 1738
    .line 1739
    const v3, 0x73747363

    .line 1740
    .line 1741
    .line 1742
    if-eq v2, v3, :cond_4b

    .line 1743
    .line 1744
    const v3, 0x7374737a

    .line 1745
    .line 1746
    .line 1747
    if-eq v2, v3, :cond_4b

    .line 1748
    .line 1749
    const v3, 0x73747a32

    .line 1750
    .line 1751
    .line 1752
    if-eq v2, v3, :cond_4b

    .line 1753
    .line 1754
    const v3, 0x7374636f

    .line 1755
    .line 1756
    .line 1757
    if-eq v2, v3, :cond_4b

    .line 1758
    .line 1759
    const v3, 0x636f3634

    .line 1760
    .line 1761
    .line 1762
    if-eq v2, v3, :cond_4b

    .line 1763
    .line 1764
    const v3, 0x73747373

    .line 1765
    .line 1766
    .line 1767
    if-eq v2, v3, :cond_4b

    .line 1768
    .line 1769
    const v3, 0x74666474

    .line 1770
    .line 1771
    .line 1772
    if-eq v2, v3, :cond_4b

    .line 1773
    .line 1774
    const v3, 0x74666864

    .line 1775
    .line 1776
    .line 1777
    if-eq v2, v3, :cond_4b

    .line 1778
    .line 1779
    const v3, 0x746b6864

    .line 1780
    .line 1781
    .line 1782
    if-eq v2, v3, :cond_4b

    .line 1783
    .line 1784
    const v3, 0x74726578

    .line 1785
    .line 1786
    .line 1787
    if-eq v2, v3, :cond_4b

    .line 1788
    .line 1789
    const v3, 0x7472756e

    .line 1790
    .line 1791
    .line 1792
    if-eq v2, v3, :cond_4b

    .line 1793
    .line 1794
    const v3, 0x70737368    # 3.013775E29f

    .line 1795
    .line 1796
    .line 1797
    if-eq v2, v3, :cond_4b

    .line 1798
    .line 1799
    const v3, 0x7361697a

    .line 1800
    .line 1801
    .line 1802
    if-eq v2, v3, :cond_4b

    .line 1803
    .line 1804
    const v3, 0x7361696f

    .line 1805
    .line 1806
    .line 1807
    if-eq v2, v3, :cond_4b

    .line 1808
    .line 1809
    const v3, 0x73656e63

    .line 1810
    .line 1811
    .line 1812
    if-eq v2, v3, :cond_4b

    .line 1813
    .line 1814
    const v3, 0x75756964

    .line 1815
    .line 1816
    .line 1817
    if-eq v2, v3, :cond_4b

    .line 1818
    .line 1819
    const v3, 0x73626770

    .line 1820
    .line 1821
    .line 1822
    if-eq v2, v3, :cond_4b

    .line 1823
    .line 1824
    const v3, 0x73677064

    .line 1825
    .line 1826
    .line 1827
    if-eq v2, v3, :cond_4b

    .line 1828
    .line 1829
    const v3, 0x656c7374

    .line 1830
    .line 1831
    .line 1832
    if-eq v2, v3, :cond_4b

    .line 1833
    .line 1834
    const v3, 0x6d656864

    .line 1835
    .line 1836
    .line 1837
    if-eq v2, v3, :cond_4b

    .line 1838
    .line 1839
    const v3, 0x656d7367

    .line 1840
    .line 1841
    .line 1842
    if-eq v2, v3, :cond_4b

    .line 1843
    .line 1844
    const v3, 0x75647461

    .line 1845
    .line 1846
    .line 1847
    if-eq v2, v3, :cond_4b

    .line 1848
    .line 1849
    const v3, 0x6b657973

    .line 1850
    .line 1851
    .line 1852
    if-eq v2, v3, :cond_4b

    .line 1853
    .line 1854
    const v3, 0x696c7374

    .line 1855
    .line 1856
    .line 1857
    if-ne v2, v3, :cond_49

    .line 1858
    .line 1859
    goto :goto_1e

    .line 1860
    :cond_49
    iget-wide v2, v0, LP0/u;->v:J

    .line 1861
    .line 1862
    cmp-long v2, v2, v4

    .line 1863
    .line 1864
    if-gtz v2, :cond_4a

    .line 1865
    .line 1866
    const/4 v2, 0x0

    .line 1867
    iput-object v2, v0, LP0/u;->x:Landroidx/media3/common/util/ParsableByteArray;

    .line 1868
    .line 1869
    const/4 v2, 0x1

    .line 1870
    iput v2, v0, LP0/u;->t:I

    .line 1871
    .line 1872
    goto/16 :goto_0

    .line 1873
    .line 1874
    :cond_4a
    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    .line 1875
    .line 1876
    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v1

    .line 1880
    throw v1

    .line 1881
    :cond_4b
    :goto_1e
    iget v2, v0, LP0/u;->w:I

    .line 1882
    .line 1883
    const/16 v8, 0x8

    .line 1884
    .line 1885
    if-ne v2, v8, :cond_4d

    .line 1886
    .line 1887
    iget-wide v2, v0, LP0/u;->v:J

    .line 1888
    .line 1889
    cmp-long v2, v2, v4

    .line 1890
    .line 1891
    if-gtz v2, :cond_4c

    .line 1892
    .line 1893
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 1894
    .line 1895
    iget-wide v3, v0, LP0/u;->v:J

    .line 1896
    .line 1897
    long-to-int v3, v3

    .line 1898
    invoke-direct {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 1899
    .line 1900
    .line 1901
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 1902
    .line 1903
    .line 1904
    move-result-object v3

    .line 1905
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 1906
    .line 1907
    .line 1908
    move-result-object v4

    .line 1909
    const/4 v5, 0x0

    .line 1910
    invoke-static {v3, v5, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1911
    .line 1912
    .line 1913
    iput-object v2, v0, LP0/u;->x:Landroidx/media3/common/util/ParsableByteArray;

    .line 1914
    .line 1915
    const/4 v2, 0x1

    .line 1916
    iput v2, v0, LP0/u;->t:I

    .line 1917
    .line 1918
    goto/16 :goto_0

    .line 1919
    .line 1920
    :cond_4c
    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    .line 1921
    .line 1922
    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v1

    .line 1926
    throw v1

    .line 1927
    :cond_4d
    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    .line 1928
    .line 1929
    invoke-static {v1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1930
    .line 1931
    .line 1932
    move-result-object v1

    .line 1933
    throw v1

    .line 1934
    :cond_4e
    :goto_1f
    invoke-interface {v1}, Lv0/D;->getPosition()J

    .line 1935
    .line 1936
    .line 1937
    move-result-wide v6

    .line 1938
    iget-wide v8, v0, LP0/u;->v:J

    .line 1939
    .line 1940
    add-long/2addr v6, v8

    .line 1941
    const-wide/16 v13, 0x8

    .line 1942
    .line 1943
    sub-long/2addr v6, v13

    .line 1944
    iget v2, v0, LP0/u;->w:I

    .line 1945
    .line 1946
    int-to-long v13, v2

    .line 1947
    cmp-long v2, v8, v13

    .line 1948
    .line 1949
    if-eqz v2, :cond_4f

    .line 1950
    .line 1951
    iget v2, v0, LP0/u;->u:I

    .line 1952
    .line 1953
    if-ne v2, v5, :cond_4f

    .line 1954
    .line 1955
    const/16 v8, 0x8

    .line 1956
    .line 1957
    invoke-virtual {v10, v8}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1958
    .line 1959
    .line 1960
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 1961
    .line 1962
    .line 1963
    move-result-object v2

    .line 1964
    const/4 v5, 0x0

    .line 1965
    invoke-interface {v1, v2, v5, v8}, Lv0/D;->peekFully([BII)V

    .line 1966
    .line 1967
    .line 1968
    invoke-static {v10}, LP0/n;->maybeSkipRemainingMetaBoxHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 1969
    .line 1970
    .line 1971
    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 1972
    .line 1973
    .line 1974
    move-result v2

    .line 1975
    invoke-interface {v1, v2}, Lv0/D;->skipFully(I)V

    .line 1976
    .line 1977
    .line 1978
    invoke-interface {v1}, Lv0/D;->resetPeekPosition()V

    .line 1979
    .line 1980
    .line 1981
    :cond_4f
    new-instance v2, Ls0/d;

    .line 1982
    .line 1983
    iget v4, v0, LP0/u;->u:I

    .line 1984
    .line 1985
    invoke-direct {v2, v4, v6, v7}, Ls0/d;-><init>(IJ)V

    .line 1986
    .line 1987
    .line 1988
    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1989
    .line 1990
    .line 1991
    iget-wide v2, v0, LP0/u;->v:J

    .line 1992
    .line 1993
    iget v4, v0, LP0/u;->w:I

    .line 1994
    .line 1995
    int-to-long v4, v4

    .line 1996
    cmp-long v2, v2, v4

    .line 1997
    .line 1998
    if-nez v2, :cond_50

    .line 1999
    .line 2000
    invoke-virtual {v0, v6, v7}, LP0/u;->e(J)V

    .line 2001
    .line 2002
    .line 2003
    goto/16 :goto_0

    .line 2004
    .line 2005
    :cond_50
    invoke-virtual {v0}, LP0/u;->a()V

    .line 2006
    .line 2007
    .line 2008
    goto/16 :goto_0
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 3

    .line 1
    iget-object p1, p0, LP0/u;->e:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    if-ge v1, p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, LP0/t;

    .line 16
    .line 17
    invoke-virtual {v2}, LP0/t;->resetFragmentInfo()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, LP0/u;->o:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 26
    .line 27
    .line 28
    iput v0, p0, LP0/u;->z:I

    .line 29
    .line 30
    iget-object p1, p0, LP0/u;->p:Ls0/B;

    .line 31
    .line 32
    invoke-virtual {p1}, Ls0/B;->clear()V

    .line 33
    .line 34
    .line 35
    iput-wide p3, p0, LP0/u;->A:J

    .line 36
    .line 37
    iget-object p1, p0, LP0/u;->n:Ljava/util/ArrayDeque;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, LP0/u;->a()V

    .line 43
    .line 44
    .line 45
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
    invoke-static {p1}, LP0/I;->sniffFragmented(Lv0/D;)Lv0/k0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    iput-object v0, p0, LP0/u;->s:Lcom/google/common/collect/ImmutableList;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    return p1
.end method
