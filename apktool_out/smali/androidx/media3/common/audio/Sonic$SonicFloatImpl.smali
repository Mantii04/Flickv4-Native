.class final Landroidx/media3/common/audio/Sonic$SonicFloatImpl;
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
    name = "SonicFloatImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/common/audio/Sonic$SonicImpl<",
        "[F>;"
    }
.end annotation


# instance fields
.field private final downSampleBuffer:[F

.field private inputBuffer:[F

.field private maxDiff:D

.field private minDiff:D

.field private outputBuffer:[F

.field private pitchBuffer:[F

.field private prevMinDiff:D

.field final synthetic this$0:Landroidx/media3/common/audio/Sonic;


# direct methods
.method public constructor <init>(Landroidx/media3/common/audio/Sonic;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

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
    new-array v0, v0, [F

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->downSampleBuffer:[F

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
    new-array v0, v0, [F

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

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
    new-array v0, v0, [F

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->outputBuffer:[F

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
    new-array p1, v0, [F

    .line 50
    .line 51
    iput-object p1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->pitchBuffer:[F

    .line 52
    .line 53
    return-void
.end method

.method private ensureSpaceForAdditionalFrames([FII)[F
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

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
    iget-object p3, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

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
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method private findPitchPeriodInRange([FIII)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int v1, v1, p2

    .line 10
    .line 11
    const/16 v3, 0xff

    .line 12
    .line 13
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 14
    .line 15
    move-wide v8, v4

    .line 16
    const/4 v10, 0x0

    .line 17
    const-wide/16 v11, 0x0

    .line 18
    .line 19
    move/from16 v5, p4

    .line 20
    .line 21
    move v4, v3

    .line 22
    move/from16 v3, p3

    .line 23
    .line 24
    :goto_0
    if-gt v3, v5, :cond_3

    .line 25
    .line 26
    const/4 v13, 0x0

    .line 27
    const-wide/16 v14, 0x0

    .line 28
    .line 29
    :goto_1
    if-ge v13, v3, :cond_0

    .line 30
    .line 31
    add-int v16, v1, v13

    .line 32
    .line 33
    aget v16, p1, v16

    .line 34
    .line 35
    add-int v17, v1, v3

    .line 36
    .line 37
    add-int v17, v17, v13

    .line 38
    .line 39
    aget v17, p1, v17

    .line 40
    .line 41
    sub-float v16, v16, v17

    .line 42
    .line 43
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    float-to-double v6, v2

    .line 48
    add-double/2addr v14, v6

    .line 49
    add-int/lit8 v13, v13, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    int-to-double v6, v10

    .line 53
    mul-double/2addr v6, v14

    .line 54
    move v13, v1

    .line 55
    int-to-double v1, v3

    .line 56
    mul-double v18, v8, v1

    .line 57
    .line 58
    cmpg-double v6, v6, v18

    .line 59
    .line 60
    if-gez v6, :cond_1

    .line 61
    .line 62
    move v10, v3

    .line 63
    move-wide v8, v14

    .line 64
    :cond_1
    int-to-double v6, v4

    .line 65
    mul-double/2addr v6, v14

    .line 66
    mul-double/2addr v1, v11

    .line 67
    cmpl-double v1, v6, v1

    .line 68
    .line 69
    if-lez v1, :cond_2

    .line 70
    .line 71
    move v4, v3

    .line 72
    move-wide v11, v14

    .line 73
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    move v1, v13

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    int-to-double v1, v10

    .line 78
    div-double/2addr v8, v1

    .line 79
    iput-wide v8, v0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->minDiff:D

    .line 80
    .line 81
    int-to-double v1, v4

    .line 82
    div-double/2addr v11, v1

    .line 83
    iput-wide v11, v0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->maxDiff:D

    .line 84
    .line 85
    return v10
.end method

.method private interpolate([FIJJ)F
    .locals 5

    .line 1
    aget v0, p1, p2

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

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
    aget p1, p1, p2

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

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
    iget-object p2, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

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
    iget-object p4, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

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
    long-to-float p2, p4

    .line 42
    mul-float/2addr p2, v0

    .line 43
    sub-long p4, v3, p4

    .line 44
    .line 45
    long-to-float p3, p4

    .line 46
    mul-float/2addr p3, p1

    .line 47
    add-float/2addr p3, p2

    .line 48
    long-to-float p1, v3

    .line 49
    div-float/2addr p3, p1

    .line 50
    return p3
.end method

.method private overlapAdd(II[FI[FI[FI)V
    .locals 9

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
    aget v6, p5, v4

    sub-int v7, p1, v5

    int-to-float v7, v7

    mul-float/2addr v6, v7

    aget v7, p7, v3

    int-to-float v8, v5

    mul-float/2addr v7, v8

    add-float/2addr v7, v6

    int-to-float v6, p1

    div-float/2addr v7, v6

    aput v7, p3, v2

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

    const/4 v0, 0x4

    return v0
.end method

.method public copyBufferToInputBuffer(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 8
    .line 9
    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$400(Landroidx/media3/common/audio/Sonic;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

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
    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->bytesPerSample()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    div-int v3, p2, v3

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v0, p2

    .line 34
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public copyOutputToByteBuffer(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->outputBuffer:[F

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

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
    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->bytesPerSample()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    mul-int/2addr p2, v1

    .line 27
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

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
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/audio/Sonic;->access$000(Landroidx/media3/common/audio/Sonic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    div-int/2addr v0, p2

    .line 8
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 9
    .line 10
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    mul-int/2addr v1, p2

    .line 15
    iget-object p2, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 16
    .line 17
    invoke-static {p2}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    mul-int/2addr p1, p2

    .line 22
    const/4 p2, 0x0

    .line 23
    move v2, p2

    .line 24
    :goto_0
    if-ge v2, v0, :cond_1

    .line 25
    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    move v5, p2

    .line 29
    :goto_1
    if-ge v5, v1, :cond_0

    .line 30
    .line 31
    iget-object v6, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    .line 32
    .line 33
    mul-int v7, v2, v1

    .line 34
    .line 35
    add-int/2addr v7, p1

    .line 36
    add-int/2addr v7, v5

    .line 37
    aget v6, v6, v7

    .line 38
    .line 39
    float-to-double v6, v6

    .line 40
    add-double/2addr v3, v6

    .line 41
    add-int/lit8 v5, v5, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    int-to-double v5, v1

    .line 45
    div-double/2addr v3, v5

    .line 46
    iget-object v5, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->downSampleBuffer:[F

    .line 47
    .line 48
    double-to-float v3, v3

    .line 49
    aput v3, v5, v2

    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method public ensureAdditionalFramesInInputBuffer(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$400(Landroidx/media3/common/audio/Sonic;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->ensureSpaceForAdditionalFrames([FII)[F

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    .line 14
    .line 15
    return-void
.end method

.method public ensureAdditionalFramesInOutputBuffer(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->outputBuffer:[F

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$200(Landroidx/media3/common/audio/Sonic;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->ensureSpaceForAdditionalFrames([FII)[F

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->outputBuffer:[F

    .line 14
    .line 15
    return-void
.end method

.method public ensureAdditionalFramesInPitchBuffer(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->pitchBuffer:[F

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$500(Landroidx/media3/common/audio/Sonic;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->ensureSpaceForAdditionalFrames([FII)[F

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->pitchBuffer:[F

    .line 14
    .line 15
    return-void
.end method

.method public findPitchPeriodInRangeWithDownsampleBuffer(III)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->downSampleBuffer:[F

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->findPitchPeriodInRange([FIII)I

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
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->findPitchPeriodInRange([FIII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public flush()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->prevMinDiff:D

    .line 4
    .line 5
    iput-wide v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->minDiff:D

    .line 6
    .line 7
    iput-wide v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->maxDiff:D

    .line 8
    .line 9
    return-void
.end method

.method public bridge synthetic getInputBuffer()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->getInputBuffer()[F

    move-result-object v0

    return-object v0
.end method

.method public getInputBuffer()[F
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    return-object v0
.end method

.method public bridge synthetic getOutputBuffer()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->getOutputBuffer()[F

    move-result-object v0

    return-object v0
.end method

.method public getOutputBuffer()[F
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->outputBuffer:[F

    return-object v0
.end method

.method public bridge synthetic getPitchBuffer()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->getPitchBuffer()[F

    move-result-object v0

    return-object v0
.end method

.method public getPitchBuffer()[F
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->pitchBuffer:[F

    return-object v0
.end method

.method public interpolateFrame(IJJ)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

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
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->outputBuffer:[F

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 13
    .line 14
    invoke-static {v2}, Landroidx/media3/common/audio/Sonic;->access$200(Landroidx/media3/common/audio/Sonic;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

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
    iget-object v4, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->pitchBuffer:[F

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

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
    invoke-direct/range {v3 .. v9}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->interpolate([FIJJ)F

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    aput p2, v1, v2

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
    .locals 10

    .line 1
    iget-wide v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->minDiff:D

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmpl-double v0, v0, v2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/media3/common/audio/Sonic;->access$300(Landroidx/media3/common/audio/Sonic;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-wide v2, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->maxDiff:D

    .line 20
    .line 21
    iget-wide v4, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->minDiff:D

    .line 22
    .line 23
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    .line 24
    .line 25
    mul-double v8, v4, v6

    .line 26
    .line 27
    cmpl-double v0, v2, v8

    .line 28
    .line 29
    if-lez v0, :cond_1

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 33
    .line 34
    mul-double/2addr v4, v2

    .line 35
    iget-wide v2, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->prevMinDiff:D

    .line 36
    .line 37
    mul-double/2addr v2, v6

    .line 38
    cmpg-double v0, v4, v2

    .line 39
    .line 40
    if-gtz v0, :cond_2

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    const/4 v0, 0x1

    .line 44
    return v0

    .line 45
    :cond_3
    :goto_0
    return v1
.end method

.method public overlapAdd(IIIII)V
    .locals 9

    .line 1
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->outputBuffer:[F

    iget-object v5, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    move-object v7, v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v6, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->overlapAdd(II[FI[FI[FI)V

    return-void
.end method

.method public updatePreviousMinDiff()V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->minDiff:D

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->prevMinDiff:D

    .line 4
    .line 5
    return-void
.end method

.method public zeroInputBuffer(II)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->this$0:Landroidx/media3/common/audio/Sonic;

    .line 3
    .line 4
    invoke-static {v1}, Landroidx/media3/common/audio/Sonic;->access$100(Landroidx/media3/common/audio/Sonic;)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    mul-int/2addr v1, p2

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;->inputBuffer:[F

    .line 12
    .line 13
    add-int v2, p1, v0

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aput v3, v1, v2

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method
