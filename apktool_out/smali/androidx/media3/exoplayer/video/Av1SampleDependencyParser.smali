.class public final Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final MAX_BYTES_FROM_KEYFRAME_TO_READ:I = 0x1f4

.field private static final MAX_OBU_COUNT_FOR_PARTIAL_SKIP:I = 0x8


# instance fields
.field private final delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

.field private sequenceHeader:Landroidx/media3/container/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1f4

    .line 5
    .line 6
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    return-void
.end method

.method private canSkipObu(Ls0/w;Z)Z
    .locals 4

    .line 1
    iget v0, p1, Ls0/w;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_4

    .line 6
    .line 7
    const/16 v1, 0xf

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x3

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    return v3

    .line 19
    :cond_1
    const/4 p2, 0x6

    .line 20
    if-eq v0, p2, :cond_2

    .line 21
    .line 22
    if-ne v0, v1, :cond_3

    .line 23
    .line 24
    :cond_2
    iget-object p2, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->sequenceHeader:Landroidx/media3/container/b;

    .line 25
    .line 26
    if-eqz p2, :cond_3

    .line 27
    .line 28
    invoke-static {p2, p1}, Landroidx/media3/container/a;->parse(Landroidx/media3/container/b;Ls0/w;)Landroidx/media3/container/a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/media3/container/a;->isDependedOn()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    return v2

    .line 41
    :cond_3
    return v3

    .line 42
    :cond_4
    :goto_0
    return v2
.end method

.method private emptyDelayedKeyFrameTruncatedSample()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private updateSequenceHeaders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls0/w;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ls0/w;

    .line 13
    .line 14
    iget v1, v1, Ls0/w;->a:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ls0/w;

    .line 24
    .line 25
    invoke-static {v1}, Landroidx/media3/container/b;->parse(Ls0/w;)Landroidx/media3/container/b;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->sequenceHeader:Landroidx/media3/container/b;

    .line 30
    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public queueInputBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit16 v2, v0, 0x1f4

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->sequenceHeader:Landroidx/media3/container/b;

    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->emptyDelayedKeyFrameTruncatedSample()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public sampleLimitAfterSkippingNonReferenceFrame(Ljava/nio/ByteBuffer;Z)I
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->delayedKeyFrameTruncatedSample:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    invoke-static {v0}, Ls0/x;->split(Ljava/nio/ByteBuffer;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->updateSequenceHeaders(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->emptyDelayedKeyFrameTruncatedSample()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {p1}, Ls0/x;->split(Ljava/nio/ByteBuffer;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->updateSequenceHeaders(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x1

    .line 33
    sub-int/2addr v1, v2

    .line 34
    const/4 v3, 0x0

    .line 35
    :goto_0
    if-ltz v1, :cond_3

    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ls0/w;

    .line 42
    .line 43
    invoke-direct {p0, v4, p2}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->canSkipObu(Ls0/w;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ls0/w;

    .line 54
    .line 55
    iget v4, v4, Ls0/w;->a:I

    .line 56
    .line 57
    const/4 v5, 0x6

    .line 58
    if-eq v4, v5, :cond_1

    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Ls0/w;

    .line 65
    .line 66
    iget v4, v4, Ls0/w;->a:I

    .line 67
    .line 68
    const/4 v5, 0x3

    .line 69
    if-ne v4, v5, :cond_2

    .line 70
    .line 71
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    if-gt v3, v2, :cond_6

    .line 77
    .line 78
    add-int/lit8 p2, v1, 0x1

    .line 79
    .line 80
    const/16 v2, 0x8

    .line 81
    .line 82
    if-lt p2, v2, :cond_4

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    if-ltz v1, :cond_5

    .line 86
    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Ls0/w;

    .line 92
    .line 93
    iget-object p1, p1, Ls0/w;->b:Ljava/nio/ByteBuffer;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    return p1

    .line 100
    :cond_5
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    return p1

    .line 105
    :cond_6
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    return p1
.end method
