.class public final Lc1/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/J;


# instance fields
.field public a:Landroidx/media3/common/Format;

.field public b:Landroidx/media3/common/util/TimestampAdjuster;

.field public c:Lv0/r0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2, p1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lc1/C;->a:Landroidx/media3/common/Format;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lc1/C;->b:Landroidx/media3/common/util/TimestampAdjuster;

    .line 2
    .line 3
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc1/C;->c:Lv0/r0;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc1/C;->b:Landroidx/media3/common/util/TimestampAdjuster;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/common/util/TimestampAdjuster;->getLastAdjustedTimestampUs()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-object v0, p0, Lc1/C;->b:Landroidx/media3/common/util/TimestampAdjuster;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/media3/common/util/TimestampAdjuster;->getTimestampOffsetUs()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    cmp-long v6, v2, v4

    .line 29
    .line 30
    if-eqz v6, :cond_2

    .line 31
    .line 32
    cmp-long v4, v0, v4

    .line 33
    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v4, p0, Lc1/C;->a:Landroidx/media3/common/Format;

    .line 38
    .line 39
    iget-wide v5, v4, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 40
    .line 41
    cmp-long v5, v0, v5

    .line 42
    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4, v0, v1}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lc1/C;->a:Landroidx/media3/common/Format;

    .line 58
    .line 59
    iget-object v1, p0, Lc1/C;->c:Lv0/r0;

    .line 60
    .line 61
    invoke-interface {v1, v0}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    iget-object v0, p0, Lc1/C;->c:Lv0/r0;

    .line 69
    .line 70
    invoke-interface {v0, p1, v5}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lc1/C;->c:Lv0/r0;

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    const/4 v7, 0x0

    .line 77
    const/4 v4, 0x1

    .line 78
    invoke-interface/range {v1 .. v7}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    return-void
.end method

.method public init(Landroidx/media3/common/util/TimestampAdjuster;Lv0/F;Lc1/W;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/C;->b:Landroidx/media3/common/util/TimestampAdjuster;

    .line 2
    .line 3
    invoke-virtual {p3}, Lc1/W;->generateNewId()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Lc1/W;->getTrackId()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 p3, 0x5

    .line 11
    invoke-interface {p2, p1, p3}, Lv0/F;->track(II)Lv0/r0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lc1/C;->c:Lv0/r0;

    .line 16
    .line 17
    iget-object p2, p0, Lc1/C;->a:Landroidx/media3/common/Format;

    .line 18
    .line 19
    invoke-interface {p1, p2}, Lv0/r0;->format(Landroidx/media3/common/Format;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
