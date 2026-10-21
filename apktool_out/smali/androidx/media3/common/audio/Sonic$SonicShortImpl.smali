.class final Landroidx/media3/common/audio/Sonic$SonicShortImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/audio/Sonic$SonicImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/audio/Sonic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SonicShortImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/common/audio/Sonic$SonicImpl<",
        "[S>;"
    }
.end annotation


# instance fields
.field private final downSampleBuffer:[S

.field private inputBuffer:[S

.field private maxDiff:I

.field private minDiff:I

.field private outputBuffer:[S

.field private pitchBuffer:[S

.field private prevMinDiff:I

.field final synthetic this$0:Landroidx/media3/common/audio/Sonic;


# direct methods
.method public constructor <init>(Landroidx/media3/common/audio/Sonic;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$000(Landroidx/media3/common/audio/Sonic;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-array v0, v0, [S

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->downSampleBuffer:[S

    .line 13
    .line 14
    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$000(Landroidx/media3/common/audio/Sonic;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    mul-int/2addr v0, v1

    .line 23
    new-array v0, v0, [S

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    .line 26
    .line 27
    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$000(Landroidx/media3/common/audio/Sonic;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    mul-int/2addr v0, v1

    .line 36
    new-array v0, v0, [S

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->outputBuffer:[S

    .line 39
    .line 40
    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$000(Landroidx/media3/common/audio/Sonic;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {p1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    mul-int/2addr v0, p1

    .line 49
    new-array p1, v0, [S

    .line 50
    .line 51
    iput-object p1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->pitchBuffer:[S

    .line 52
    .line 53
    return-void
.end method

.method private ensureSpaceForAdditionalFrames([SII)[S
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 3
    .line 4
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    div-int/2addr v0, v1

    .line 9
    add-int/2addr p2, p3

    .line 10
    if-gt p2, v0, :cond_0

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    const/4 p2, 0x3

    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-static {v0, p2, v1, p3}, LA/i;->D(IIII)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iget-object p3, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 20
    .line 21
    invoke-static {p3}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    mul-int/2addr p2, p3

    .line 26
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([SI)[S

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method private findPitchPeriodInRange([SIII)I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/2addr p2, v0

    .line 8
    const/4 v0, 0x0

    .line 9
    const/16 v1, 0xff

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    move v3, v0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    if-gt p3, p4, :cond_3

    .line 15
    .line 16
    move v5, v0

    .line 17
    move v6, v5

    .line 18
    :goto_1
    if-ge v5, p3, :cond_0

    .line 19
    .line 20
    add-int v7, p2, v5

    .line 21
    .line 22
    aget-short v7, p1, v7

    .line 23
    .line 24
    add-int v8, p2, p3

    .line 25
    .line 26
    add-int/2addr v8, v5

    .line 27
    aget-short v8, p1, v8

    .line 28
    .line 29
    sub-int/2addr v7, v8

    .line 30
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    add-int/2addr v6, v7

    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    mul-int v5, v6, v3

    .line 39
    .line 40
    mul-int v7, v2, p3

    .line 41
    .line 42
    if-ge v5, v7, :cond_1

    .line 43
    .line 44
    move v3, p3

    .line 45
    move v2, v6

    .line 46
    :cond_1
    mul-int v5, v6, v1

    .line 47
    .line 48
    mul-int v7, v4, p3

    .line 49
    .line 50
    if-le v5, v7, :cond_2

    .line 51
    .line 52
    move v1, p3

    .line 53
    move v4, v6

    .line 54
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    div-int/2addr v2, v3

    .line 58
    iput v2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->minDiff:I

    .line 59
    .line 60
    div-int/2addr v4, v1

    .line 61
    iput v4, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->maxDiff:I

    .line 62
    .line 63
    return v3
.end method

.method private interpolate([SIJJ)S
    .locals 5

    .line 1
    aget-short v0, p1, p2

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr p2, v1

    .line 10
    aget-short p1, p1, p2

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 13
    .line 14
    invoke-static {p2}, Landroidx/media3/common/audio/Sonic;->access$600(Landroidx/media3/common/audio/Sonic;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    int-to-long v1, p2

    .line 19
    mul-long/2addr v1, p3

    .line 20
    iget-object p2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 21
    .line 22
    invoke-static {p2}, Landroidx/media3/common/audio/Sonic;->access$700(Landroidx/media3/common/audio/Sonic;)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    int-to-long p2, p2

    .line 27
    mul-long/2addr p2, p5

    .line 28
    iget-object p4, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 29
    .line 30
    invoke-static {p4}, Landroidx/media3/common/audio/Sonic;->access$700(Landroidx/media3/common/audio/Sonic;)I

    .line 31
    .line 32
    .line 33
    move-result p4

    .line 34
    add-int/lit8 p4, p4, 0x1

    .line 35
    .line 36
    int-to-long v3, p4

    .line 37
    mul-long/2addr v3, p5

    .line 38
    sub-long p4, v3, v1

    .line 39
    .line 40
    sub-long/2addr v3, p2

    .line 41
    int-to-long p2, v0

    .line 42
    mul-long/2addr p2, p4

    .line 43
    sub-long p4, v3, p4

    .line 44
    .line 45
    int-to-long v0, p1

    .line 46
    mul-long/2addr p4, v0

    .line 47
    add-long/2addr p4, p2

    .line 48
    div-long/2addr p4, v3

    .line 49
    long-to-int p1, p4

    .line 50
    int-to-short p1, p1

    .line 51
    return p1
.end method

.method private overlapAdd(II[SI[SI[SI)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    mul-int v2, p4, p2

    add-int/2addr v2, v1

    mul-int v3, p8, p2

    add-int/2addr v3, v1

    mul-int v4, p6, p2

    add-int/2addr v4, v1

    move v5, v0

    :goto_1
    if-ge v5, p1, :cond_0

    .line 2
    aget-short v6, p5, v4

    sub-int v7, p1, v5

    mul-int/2addr v7, v6

    aget-short v6, p7, v3

    mul-int/2addr v6, v5

    add-int/2addr v6, v7

    div-int/2addr v6, p1

    int-to-short v6, v6

    aput-short v6, p3, v2

    add-int/2addr v2, p2

    add-int/2addr v4, p2

    add-int/2addr v3, p2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bytesPerSample()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public copyBufferToInputBuffer(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 8
    .line 9
    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$400(Landroidx/media3/common/audio/Sonic;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 14
    .line 15
    invoke-static {v3}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    mul-int/2addr v2, v3

    .line 20
    div-int/lit8 v3, p2, 0x2

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/2addr v0, p2

    .line 30
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public copyOutputToByteBuffer(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->outputBuffer:[S

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 8
    .line 9
    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    mul-int/2addr v2, p2

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->bytesPerSample()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    mul-int/2addr p2, v1

    .line 27
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 28
    .line 29
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    mul-int/2addr p2, v1

    .line 34
    add-int/2addr p2, v0

    .line 35
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public downSampleInput(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$000(Landroidx/media3/common/audio/Sonic;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    div-int/2addr v1, p2

    .line 10
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 11
    .line 12
    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    mul-int/2addr v2, p2

    .line 17
    iget-object p2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 18
    .line 19
    invoke-static {p2}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    mul-int/2addr p1, p2

    .line 24
    const/4 p2, 0x0

    .line 25
    move v3, p2

    .line 26
    :goto_0
    if-ge v3, v1, :cond_1

    .line 27
    .line 28
    move v4, p2

    .line 29
    move v5, v4

    .line 30
    :goto_1
    if-ge v4, v2, :cond_0

    .line 31
    .line 32
    mul-int v6, v3, v2

    .line 33
    .line 34
    add-int/2addr v6, p1

    .line 35
    add-int/2addr v6, v4

    .line 36
    aget-short v6, v0, v6

    .line 37
    .line 38
    add-int/2addr v5, v6

    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    div-int/2addr v5, v2

    .line 43
    iget-object v4, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->downSampleBuffer:[S

    .line 44
    .line 45
    int-to-short v5, v5

    .line 46
    aput-short v5, v4, v3

    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method public ensureAdditionalFramesInInputBuffer(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$400(Landroidx/media3/common/audio/Sonic;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->ensureSpaceForAdditionalFrames([SII)[S

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    .line 14
    .line 15
    return-void
.end method

.method public ensureAdditionalFramesInOutputBuffer(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->outputBuffer:[S

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$200(Landroidx/media3/common/audio/Sonic;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->ensureSpaceForAdditionalFrames([SII)[S

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->outputBuffer:[S

    .line 14
    .line 15
    return-void
.end method

.method public ensureAdditionalFramesInPitchBuffer(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->pitchBuffer:[S

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$500(Landroidx/media3/common/audio/Sonic;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->ensureSpaceForAdditionalFrames([SII)[S

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->pitchBuffer:[S

    .line 14
    .line 15
    return-void
.end method

.method public findPitchPeriodInRangeWithDownsampleBuffer(III)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->downSampleBuffer:[S

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->findPitchPeriodInRange([SIII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public findPitchPeriodInRangeWithInputBuffer(III)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->findPitchPeriodInRange([SIII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public flush()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->prevMinDiff:I

    .line 3
    .line 4
    iput v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->minDiff:I

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->maxDiff:I

    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic getInputBuffer()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->getInputBuffer()[S

    move-result-object v0

    return-object v0
.end method

.method public getInputBuffer()[S
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    return-object v0
.end method

.method public bridge synthetic getOutputBuffer()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->getOutputBuffer()[S

    move-result-object v0

    return-object v0
.end method

.method public getOutputBuffer()[S
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->outputBuffer:[S

    return-object v0
.end method

.method public bridge synthetic getPitchBuffer()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->getPitchBuffer()[S

    move-result-object v0

    return-object v0
.end method

.method public getPitchBuffer()[S
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->pitchBuffer:[S

    return-object v0
.end method

.method public interpolateFrame(IJJ)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 3
    .line 4
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->outputBuffer:[S

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 13
    .line 14
    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$200(Landroidx/media3/common/audio/Sonic;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 19
    .line 20
    invoke-static {v3}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    mul-int/2addr v2, v3

    .line 25
    add-int/2addr v2, v0

    .line 26
    iget-object v4, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->pitchBuffer:[S

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 29
    .line 30
    invoke-static {v3}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    mul-int/2addr v3, p1

    .line 35
    add-int v5, v3, v0

    .line 36
    .line 37
    move-object v3, p0

    .line 38
    move-wide v6, p2

    .line 39
    move-wide v8, p4

    .line 40
    invoke-direct/range {v3 .. v9}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->interpolate([SIJJ)S

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    aput-short p2, v1, v2

    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    move-wide p2, v6

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public isPreviousPeriodBetter()Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->minDiff:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/audio/Sonic;->access$300(Landroidx/media3/common/audio/Sonic;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->maxDiff:I

    .line 16
    .line 17
    iget v2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->minDiff:I

    .line 18
    .line 19
    mul-int/lit8 v3, v2, 0x3

    .line 20
    .line 21
    if-le v0, v3, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    mul-int/lit8 v2, v2, 0x2

    .line 25
    .line 26
    iget v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->prevMinDiff:I

    .line 27
    .line 28
    mul-int/lit8 v0, v0, 0x3

    .line 29
    .line 30
    if-gt v2, v0, :cond_2

    .line 31
    .line 32
    return v1

    .line 33
    :cond_2
    const/4 v0, 0x1

    .line 34
    return v0

    .line 35
    :cond_3
    :goto_0
    return v1
.end method

.method public overlapAdd(IIIII)V
    .locals 9

    .line 1
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->outputBuffer:[S

    iget-object v5, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    move-object v7, v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v6, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->overlapAdd(II[SI[SI[SI)V

    return-void
.end method

.method public updatePreviousMinDiff()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->minDiff:I

    .line 2
    .line 3
    iput v0, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->prevMinDiff:I

    .line 4
    .line 5
    return-void
.end method

.method public zeroInputBuffer(II)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 4
    .line 5
    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    mul-int/2addr v2, p2

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;->inputBuffer:[S

    .line 13
    .line 14
    add-int v3, p1, v1

    .line 15
    .line 16
    aput-short v0, v2, v3

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method
