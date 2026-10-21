.class final Landroidx/media3/common/audio/Sonic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/audio/Sonic$SonicFloatImpl;,
        Landroidx/media3/common/audio/Sonic$SonicShortImpl;,
        Landroidx/media3/common/audio/Sonic$SonicImpl;
    }
.end annotation


# static fields
.field private static final AMDF_FREQUENCY:I = 0xfa0

.field private static final MAXIMUM_PITCH:I = 0x190

.field private static final MINIMUM_PITCH:I = 0x41

.field private static final MINIMUM_SLOWDOWN_RATE:F = 0.99999f

.field private static final MINIMUM_SPEEDUP_RATE:F = 1.00001f


# instance fields
.field private accumulatedSpeedAdjustmentError:D

.field private final channelCount:I

.field private final impl:Landroidx/media3/common/audio/Sonic$SonicImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/audio/Sonic$SonicImpl<",
            "*>;"
        }
    .end annotation
.end field

.field private inputFrameCount:I

.field private final inputSampleRateHz:I

.field private final maxPeriod:I

.field private final maxRequiredFrameCount:I

.field private final minPeriod:I

.field private newRatePosition:I

.field private oldRatePosition:I

.field private outputFrameCount:I

.field private final pitch:F

.field private pitchFrameCount:I

.field private prevPeriod:I

.field private final rate:F

.field private remainingInputToCopyFrameCount:I

.field private final speed:F


# direct methods
.method public constructor <init>(IIFFIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/media3/common/audio/Sonic;->speed:F

    .line 9
    .line 10
    iput p4, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    .line 11
    .line 12
    int-to-float p2, p1

    .line 13
    int-to-float p3, p5

    .line 14
    div-float/2addr p2, p3

    .line 15
    iput p2, p0, Landroidx/media3/common/audio/Sonic;->rate:F

    .line 16
    .line 17
    div-int/lit16 p2, p1, 0x190

    .line 18
    .line 19
    iput p2, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    .line 20
    .line 21
    div-int/lit8 p1, p1, 0x41

    .line 22
    .line 23
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    .line 24
    .line 25
    mul-int/lit8 p1, p1, 0x2

    .line 26
    .line 27
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 28
    .line 29
    if-eqz p6, :cond_0

    .line 30
    .line 31
    new-instance p1, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;-><init>(Landroidx/media3/common/audio/Sonic;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Landroidx/media3/common/audio/Sonic$SonicShortImpl;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;-><init>(Landroidx/media3/common/audio/Sonic;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iput-object p1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 43
    .line 44
    return-void
.end method

.method public static synthetic access$000(Landroidx/media3/common/audio/Sonic;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$100(Landroidx/media3/common/audio/Sonic;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$200(Landroidx/media3/common/audio/Sonic;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$300(Landroidx/media3/common/audio/Sonic;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$400(Landroidx/media3/common/audio/Sonic;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$500(Landroidx/media3/common/audio/Sonic;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$600(Landroidx/media3/common/audio/Sonic;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$700(Landroidx/media3/common/audio/Sonic;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    .line 2
    .line 3
    return p0
.end method

.method private adjustRate(FI)V
    .locals 11

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 2
    .line 3
    if-ne v0, p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    .line 7
    .line 8
    int-to-float v1, v0

    .line 9
    div-float/2addr v1, p1

    .line 10
    float-to-long v1, v1

    .line 11
    int-to-long v3, v0

    .line 12
    move-wide v9, v1

    .line 13
    move-wide v7, v3

    .line 14
    :goto_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    cmp-long p1, v9, v0

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    cmp-long p1, v7, v0

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const-wide/16 v2, 0x2

    .line 25
    .line 26
    rem-long v4, v9, v2

    .line 27
    .line 28
    cmp-long p1, v4, v0

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    rem-long v4, v7, v2

    .line 33
    .line 34
    cmp-long p1, v4, v0

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    div-long/2addr v9, v2

    .line 39
    div-long/2addr v7, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-direct {p0, p2}, Landroidx/media3/common/audio/Sonic;->moveNewSamplesToPitchBuffer(I)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    move v6, p1

    .line 46
    :goto_1
    iget p2, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 47
    .line 48
    add-int/lit8 v0, p2, -0x1

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    if-ge v6, v0, :cond_5

    .line 52
    .line 53
    :goto_2
    iget p2, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    .line 54
    .line 55
    add-int/lit8 v0, p2, 0x1

    .line 56
    .line 57
    int-to-long v2, v0

    .line 58
    mul-long/2addr v2, v9

    .line 59
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 60
    .line 61
    int-to-long v4, v0

    .line 62
    mul-long/2addr v4, v7

    .line 63
    cmp-long v2, v2, v4

    .line 64
    .line 65
    if-lez v2, :cond_2

    .line 66
    .line 67
    iget-object p2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 68
    .line 69
    invoke-interface {p2, v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->ensureAdditionalFramesInOutputBuffer(I)V

    .line 70
    .line 71
    .line 72
    iget-object v5, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 73
    .line 74
    invoke-interface/range {v5 .. v10}, Landroidx/media3/common/audio/Sonic$SonicImpl;->interpolateFrame(IJJ)V

    .line 75
    .line 76
    .line 77
    iget p2, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 78
    .line 79
    add-int/2addr p2, v1

    .line 80
    iput p2, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 81
    .line 82
    iget p2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 83
    .line 84
    add-int/2addr p2, v1

    .line 85
    iput p2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 89
    .line 90
    iput p2, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    .line 91
    .line 92
    int-to-long v2, p2

    .line 93
    cmp-long p2, v2, v7

    .line 94
    .line 95
    if-nez p2, :cond_4

    .line 96
    .line 97
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    .line 98
    .line 99
    int-to-long v2, v0

    .line 100
    cmp-long p2, v2, v9

    .line 101
    .line 102
    if-nez p2, :cond_3

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_3
    move v1, p1

    .line 106
    :goto_3
    invoke-static {v1}, LP3/v;->checkState(Z)V

    .line 107
    .line 108
    .line 109
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 110
    .line 111
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    sub-int/2addr p2, v1

    .line 115
    invoke-direct {p0, p2}, Landroidx/media3/common/audio/Sonic;->removePitchFrames(I)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public static calculateAccumulatedTruncationErrorForResampling(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)J
    .locals 2

    .line 1
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-virtual {p0, p1, v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1, p2, v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, v0, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    .line 33
    .line 34
    .line 35
    move-result-wide p0

    .line 36
    return-wide p0
.end method

.method private changeSpeed(D)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :cond_1
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 10
    .line 11
    if-lez v2, :cond_2

    .line 12
    .line 13
    invoke-direct {p0, v1}, Landroidx/media3/common/audio/Sonic;->copyInputToOutput(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    :goto_0
    add-int/2addr v1, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_2
    invoke-direct {p0, v1}, Landroidx/media3/common/audio/Sonic;->findPitchPeriod(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 24
    .line 25
    cmpl-double v3, p1, v3

    .line 26
    .line 27
    if-lez v3, :cond_3

    .line 28
    .line 29
    invoke-direct {p0, v1, p1, p2, v2}, Landroidx/media3/common/audio/Sonic;->skipPitchPeriod(IDI)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    add-int/2addr v2, v3

    .line 34
    add-int/2addr v2, v1

    .line 35
    move v1, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_3
    invoke-direct {p0, v1, p1, p2, v2}, Landroidx/media3/common/audio/Sonic;->insertPitchPeriod(IDI)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    goto :goto_0

    .line 42
    :goto_1
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 43
    .line 44
    add-int/2addr v2, v1

    .line 45
    if-le v2, v0, :cond_1

    .line 46
    .line 47
    invoke-direct {p0, v1}, Landroidx/media3/common/audio/Sonic;->removeProcessedInputFrames(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private copyInputToOutput(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0, p1, v0}, Landroidx/media3/common/audio/Sonic;->copyToOutput(II)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 13
    .line 14
    sub-int/2addr p1, v0

    .line 15
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 16
    .line 17
    return v0
.end method

.method private copyToOutput(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->ensureAdditionalFramesInOutputBuffer(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getInputBuffer()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 13
    .line 14
    mul-int/2addr p1, v1

    .line 15
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 16
    .line 17
    invoke-interface {v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getOutputBuffer()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 22
    .line 23
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 24
    .line 25
    mul-int/2addr v2, v3

    .line 26
    mul-int/2addr v3, p2

    .line 27
    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    iget p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 31
    .line 32
    add-int/2addr p1, p2

    .line 33
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 34
    .line 35
    return-void
.end method

.method private findPitchPeriod(I)I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0xfa0

    .line 5
    .line 6
    if-le v0, v2, :cond_0

    .line 7
    .line 8
    div-int/2addr v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 12
    .line 13
    if-ne v2, v1, :cond_1

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 18
    .line 19
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    .line 20
    .line 21
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    .line 22
    .line 23
    invoke-interface {v0, p1, v1, v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->findPitchPeriodInRangeWithInputBuffer(III)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 29
    .line 30
    invoke-interface {v2, p1, v0}, Landroidx/media3/common/audio/Sonic$SonicImpl;->downSampleInput(II)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 34
    .line 35
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    .line 36
    .line 37
    div-int/2addr v3, v0

    .line 38
    iget v4, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    .line 39
    .line 40
    div-int/2addr v4, v0

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-interface {v2, v5, v3, v4}, Landroidx/media3/common/audio/Sonic$SonicImpl;->findPitchPeriodInRangeWithDownsampleBuffer(III)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eq v0, v1, :cond_5

    .line 47
    .line 48
    mul-int/2addr v2, v0

    .line 49
    mul-int/lit8 v0, v0, 0x4

    .line 50
    .line 51
    sub-int v3, v2, v0

    .line 52
    .line 53
    add-int/2addr v2, v0

    .line 54
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    .line 55
    .line 56
    if-ge v3, v0, :cond_2

    .line 57
    .line 58
    move v3, v0

    .line 59
    :cond_2
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    .line 60
    .line 61
    if-le v2, v0, :cond_3

    .line 62
    .line 63
    move v2, v0

    .line 64
    :cond_3
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 65
    .line 66
    if-ne v0, v1, :cond_4

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 69
    .line 70
    invoke-interface {v0, p1, v3, v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->findPitchPeriodInRangeWithInputBuffer(III)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 76
    .line 77
    invoke-interface {v0, p1, v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->downSampleInput(II)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 81
    .line 82
    invoke-interface {p1, v5, v3, v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->findPitchPeriodInRangeWithDownsampleBuffer(III)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    goto :goto_1

    .line 87
    :cond_5
    move p1, v2

    .line 88
    :goto_1
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 89
    .line 90
    invoke-interface {v0}, Landroidx/media3/common/audio/Sonic$SonicImpl;->isPreviousPeriodBetter()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    move v0, p1

    .line 100
    :goto_2
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 101
    .line 102
    invoke-interface {v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->updatePreviousMinDiff()V

    .line 103
    .line 104
    .line 105
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    .line 106
    .line 107
    return v0
.end method

.method public static getExpectedFrameCountAfterProcessorApplied(IIFFJ)J
    .locals 3

    .line 1
    int-to-float v0, p0

    .line 2
    int-to-float p1, p1

    .line 3
    div-float/2addr v0, p1

    .line 4
    mul-float/2addr v0, p3

    .line 5
    div-float/2addr p2, p3

    .line 6
    float-to-double p1, p2

    .line 7
    new-instance p3, Ljava/math/BigDecimal;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p3, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p4, p5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    const-wide v1, 0x3ff0000a80000000L    # 1.0000100135803223

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmpl-double p5, p1, v1

    .line 26
    .line 27
    if-gtz p5, :cond_0

    .line 28
    .line 29
    const-wide v1, 0x3fefffeb00000000L    # 0.9999899864196777

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    cmpg-double p5, p1, v1

    .line 35
    .line 36
    if-gez p5, :cond_1

    .line 37
    .line 38
    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object p2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 43
    .line 44
    invoke-virtual {p4, p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 49
    .line 50
    cmpl-float p1, v0, p1

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p4}, Ljava/math/BigDecimal;->longValueExact()J

    .line 55
    .line 56
    .line 57
    move-result-wide p0

    .line 58
    return-wide p0

    .line 59
    :cond_2
    sget-object p1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 60
    .line 61
    invoke-virtual {p4, p3, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValueExact()J

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    int-to-long v0, p0

    .line 70
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p4, p0, p3}, Landroidx/media3/common/audio/Sonic;->calculateAccumulatedTruncationErrorForResampling(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)J

    .line 75
    .line 76
    .line 77
    move-result-wide p3

    .line 78
    sub-long/2addr p1, p3

    .line 79
    return-wide p1
.end method

.method public static getExpectedInputFrameCountForOutputFrameCount(IIFFJ)J
    .locals 2

    .line 1
    int-to-float v0, p0

    .line 2
    int-to-float p1, p1

    .line 3
    div-float/2addr v0, p1

    .line 4
    mul-float/2addr v0, p3

    .line 5
    new-instance p1, Ljava/math/BigDecimal;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    int-to-long v0, p0

    .line 15
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p4, p5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    invoke-static {p0, p1, p4}, Landroidx/media3/common/audio/Sonic;->getFrameCountBeforeResamplingForOutputCount(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)J

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    div-float/2addr p2, p3

    .line 28
    float-to-double p2, p2

    .line 29
    const-wide p4, 0x3ff0000a80000000L    # 1.0000100135803223

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    cmpl-double p4, p2, p4

    .line 35
    .line 36
    if-gtz p4, :cond_1

    .line 37
    .line 38
    const-wide p4, 0x3fefffeb00000000L    # 0.9999899864196777

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    cmpg-double p4, p2, p4

    .line 44
    .line 45
    if-gez p4, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-wide p0

    .line 49
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p2, p3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const/4 p1, 0x0

    .line 62
    sget-object p2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 63
    .line 64
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    .line 69
    .line 70
    .line 71
    move-result-wide p0

    .line 72
    return-wide p0
.end method

.method private static getFrameCountBeforeResamplingForOutputCount(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)J
    .locals 2

    .line 1
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, p1, v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    return-wide p0
.end method

.method private insertPitchPeriod(IDI)I
    .locals 8

    .line 1
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .line 2
    .line 3
    cmpg-double v1, p2, v1

    .line 4
    .line 5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 6
    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    int-to-double v4, p4

    .line 10
    mul-double/2addr v4, p2

    .line 11
    sub-double/2addr v2, p2

    .line 12
    div-double/2addr v4, v2

    .line 13
    iget-wide v1, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 14
    .line 15
    add-double/2addr v4, v1

    .line 16
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    long-to-int v1, v1

    .line 21
    int-to-double v2, v1

    .line 22
    sub-double/2addr v4, v2

    .line 23
    iput-wide v4, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    int-to-double v4, p4

    .line 27
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 28
    .line 29
    mul-double/2addr v6, p2

    .line 30
    sub-double/2addr v6, v2

    .line 31
    mul-double/2addr v6, v4

    .line 32
    sub-double/2addr v2, p2

    .line 33
    div-double/2addr v6, v2

    .line 34
    iget-wide v1, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 35
    .line 36
    add-double/2addr v6, v1

    .line 37
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    long-to-int v1, v1

    .line 42
    iput v1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 43
    .line 44
    int-to-double v1, v1

    .line 45
    sub-double/2addr v6, v1

    .line 46
    iput-wide v6, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 47
    .line 48
    move v1, p4

    .line 49
    :goto_0
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 50
    .line 51
    add-int v6, p4, v1

    .line 52
    .line 53
    invoke-interface {v2, v6}, Landroidx/media3/common/audio/Sonic$SonicImpl;->ensureAdditionalFramesInOutputBuffer(I)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 57
    .line 58
    invoke-interface {v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getInputBuffer()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 63
    .line 64
    mul-int/2addr v3, p1

    .line 65
    iget-object v4, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 66
    .line 67
    invoke-interface {v4}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getOutputBuffer()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    iget v5, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 72
    .line 73
    iget v7, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 74
    .line 75
    mul-int/2addr v5, v7

    .line 76
    mul-int/2addr v7, p4

    .line 77
    invoke-static {v2, v3, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 81
    .line 82
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 83
    .line 84
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 85
    .line 86
    add-int/2addr v3, p4

    .line 87
    add-int v4, p1, p4

    .line 88
    .line 89
    move v5, p1

    .line 90
    invoke-interface/range {v0 .. v5}, Landroidx/media3/common/audio/Sonic$SonicImpl;->overlapAdd(IIIII)V

    .line 91
    .line 92
    .line 93
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 94
    .line 95
    add-int/2addr v0, v6

    .line 96
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 97
    .line 98
    return v1
.end method

.method private moveNewSamplesToPitchBuffer(I)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 2
    .line 3
    sub-int/2addr v0, p1

    .line 4
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 5
    .line 6
    invoke-interface {v1, v0}, Landroidx/media3/common/audio/Sonic$SonicImpl;->ensureAdditionalFramesInPitchBuffer(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 10
    .line 11
    invoke-interface {v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getOutputBuffer()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 16
    .line 17
    mul-int/2addr v2, p1

    .line 18
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 19
    .line 20
    invoke-interface {v3}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getPitchBuffer()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget v4, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 25
    .line 26
    iget v5, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 27
    .line 28
    mul-int/2addr v4, v5

    .line 29
    mul-int/2addr v5, v0

    .line 30
    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 34
    .line 35
    iget p1, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 36
    .line 37
    add-int/2addr p1, v0

    .line 38
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 39
    .line 40
    return-void
.end method

.method private processStreamInput()V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->speed:F

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    .line 6
    .line 7
    div-float/2addr v1, v2

    .line 8
    float-to-double v3, v1

    .line 9
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->rate:F

    .line 10
    .line 11
    mul-float/2addr v1, v2

    .line 12
    const-wide v5, 0x3ff0000a80000000L    # 1.0000100135803223

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmpl-double v2, v3, v5

    .line 18
    .line 19
    if-gtz v2, :cond_1

    .line 20
    .line 21
    const-wide v5, 0x3fefffeb00000000L    # 0.9999899864196777

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmpg-double v2, v3, v5

    .line 27
    .line 28
    if-gez v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0, v3, v2}, Landroidx/media3/common/audio/Sonic;->copyToOutput(II)V

    .line 35
    .line 36
    .line 37
    iput v3, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    invoke-direct {p0, v3, v4}, Landroidx/media3/common/audio/Sonic;->changeSpeed(D)V

    .line 41
    .line 42
    .line 43
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 44
    .line 45
    cmpl-float v2, v1, v2

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-direct {p0, v1, v0}, Landroidx/media3/common/audio/Sonic;->adjustRate(FI)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method private removePitchFrames(I)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 5
    .line 6
    invoke-interface {v0}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getPitchBuffer()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 11
    .line 12
    mul-int/2addr v1, p1

    .line 13
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 14
    .line 15
    invoke-interface {v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getPitchBuffer()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 20
    .line 21
    sub-int/2addr v3, p1

    .line 22
    iget v4, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 23
    .line 24
    mul-int/2addr v3, v4

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 30
    .line 31
    sub-int/2addr v0, p1

    .line 32
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 33
    .line 34
    return-void
.end method

.method private removeProcessedInputFrames(I)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 2
    .line 3
    sub-int/2addr v0, p1

    .line 4
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 5
    .line 6
    invoke-interface {v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getInputBuffer()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 11
    .line 12
    mul-int/2addr p1, v2

    .line 13
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 14
    .line 15
    invoke-interface {v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getInputBuffer()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 20
    .line 21
    mul-int/2addr v3, v0

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v1, p1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 27
    .line 28
    return-void
.end method

.method private skipPitchPeriod(IDI)I
    .locals 8

    .line 1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 2
    .line 3
    cmpl-double v2, p2, v0

    .line 4
    .line 5
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 6
    .line 7
    if-ltz v2, :cond_0

    .line 8
    .line 9
    int-to-double v0, p4

    .line 10
    sub-double/2addr p2, v3

    .line 11
    div-double/2addr v0, p2

    .line 12
    iget-wide p2, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 13
    .line 14
    add-double/2addr v0, p2

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 16
    .line 17
    .line 18
    move-result-wide p2

    .line 19
    long-to-int p2, p2

    .line 20
    int-to-double v2, p2

    .line 21
    sub-double/2addr v0, v2

    .line 22
    iput-wide v0, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 23
    .line 24
    move v3, p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    int-to-double v5, p4

    .line 27
    sub-double/2addr v0, p2

    .line 28
    mul-double/2addr v0, v5

    .line 29
    sub-double/2addr p2, v3

    .line 30
    div-double/2addr v0, p2

    .line 31
    iget-wide p2, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 32
    .line 33
    add-double/2addr v0, p2

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 35
    .line 36
    .line 37
    move-result-wide p2

    .line 38
    long-to-int p2, p2

    .line 39
    iput p2, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 40
    .line 41
    int-to-double p2, p2

    .line 42
    sub-double/2addr v0, p2

    .line 43
    iput-wide v0, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 44
    .line 45
    move v3, p4

    .line 46
    :goto_0
    iget-object p2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 47
    .line 48
    invoke-interface {p2, v3}, Landroidx/media3/common/audio/Sonic$SonicImpl;->ensureAdditionalFramesInOutputBuffer(I)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 52
    .line 53
    iget v4, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 54
    .line 55
    iget v5, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 56
    .line 57
    add-int v7, p1, p4

    .line 58
    .line 59
    move v6, p1

    .line 60
    invoke-interface/range {v2 .. v7}, Landroidx/media3/common/audio/Sonic$SonicImpl;->overlapAdd(IIIII)V

    .line 61
    .line 62
    .line 63
    iget p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 64
    .line 65
    add-int/2addr p1, v3

    .line 66
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 67
    .line 68
    return v3
.end method


# virtual methods
.method public flush()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 3
    .line 4
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 7
    .line 8
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 11
    .line 12
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 13
    .line 14
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 21
    .line 22
    invoke-interface {v0}, Landroidx/media3/common/audio/Sonic$SonicImpl;->flush()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public getOutput(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    invoke-static {v0}, LP3/v;->checkState(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 19
    .line 20
    invoke-interface {v3}, Landroidx/media3/common/audio/Sonic$SonicImpl;->bytesPerSample()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    mul-int/2addr v2, v3

    .line 25
    div-int/2addr v0, v2

    .line 26
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 27
    .line 28
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 33
    .line 34
    invoke-interface {v2, p1, v0}, Landroidx/media3/common/audio/Sonic$SonicImpl;->copyOutputToByteBuffer(Ljava/nio/ByteBuffer;I)V

    .line 35
    .line 36
    .line 37
    iget p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 38
    .line 39
    sub-int/2addr p1, v0

    .line 40
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 41
    .line 42
    iget-object p1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 43
    .line 44
    invoke-interface {p1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getOutputBuffer()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 49
    .line 50
    mul-int/2addr v0, v2

    .line 51
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 52
    .line 53
    invoke-interface {v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getOutputBuffer()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 58
    .line 59
    iget v4, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 60
    .line 61
    mul-int/2addr v3, v4

    .line 62
    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public getOutputSize()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, LP3/v;->checkState(Z)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 12
    .line 13
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 14
    .line 15
    mul-int/2addr v0, v1

    .line 16
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 17
    .line 18
    invoke-interface {v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->bytesPerSample()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    mul-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public getPendingInputBytes()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 7
    .line 8
    invoke-interface {v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->bytesPerSample()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    mul-int/2addr v0, v1

    .line 13
    return v0
.end method

.method public queueEndOfStream()V
    .locals 10

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->speed:F

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    .line 6
    .line 7
    div-float/2addr v1, v2

    .line 8
    float-to-double v3, v1

    .line 9
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->rate:F

    .line 10
    .line 11
    mul-float/2addr v1, v2

    .line 12
    float-to-double v1, v1

    .line 13
    iget v5, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 14
    .line 15
    sub-int v6, v0, v5

    .line 16
    .line 17
    iget v7, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 18
    .line 19
    int-to-double v8, v6

    .line 20
    div-double/2addr v8, v3

    .line 21
    int-to-double v3, v5

    .line 22
    add-double/2addr v8, v3

    .line 23
    iget-wide v3, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 24
    .line 25
    add-double/2addr v8, v3

    .line 26
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 27
    .line 28
    int-to-double v3, v3

    .line 29
    add-double/2addr v8, v3

    .line 30
    div-double/2addr v8, v1

    .line 31
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .line 32
    .line 33
    add-double/2addr v8, v1

    .line 34
    double-to-int v1, v8

    .line 35
    add-int/2addr v7, v1

    .line 36
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    iput-wide v1, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 41
    .line 42
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 43
    .line 44
    mul-int/lit8 v2, v2, 0x2

    .line 45
    .line 46
    add-int/2addr v2, v0

    .line 47
    invoke-interface {v1, v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->ensureAdditionalFramesInInputBuffer(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 51
    .line 52
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 53
    .line 54
    mul-int/2addr v0, v2

    .line 55
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 56
    .line 57
    mul-int/lit8 v2, v2, 0x2

    .line 58
    .line 59
    invoke-interface {v1, v0, v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->zeroInputBuffer(II)V

    .line 60
    .line 61
    .line 62
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 63
    .line 64
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 65
    .line 66
    mul-int/lit8 v1, v1, 0x2

    .line 67
    .line 68
    add-int/2addr v1, v0

    .line 69
    iput v1, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 70
    .line 71
    invoke-direct {p0}, Landroidx/media3/common/audio/Sonic;->processStreamInput()V

    .line 72
    .line 73
    .line 74
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    if-le v0, v7, :cond_0

    .line 78
    .line 79
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 84
    .line 85
    :cond_0
    iput v1, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 86
    .line 87
    iput v1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 88
    .line 89
    iput v1, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 90
    .line 91
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 8
    .line 9
    invoke-interface {v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->bytesPerSample()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    mul-int/2addr v1, v2

    .line 14
    div-int v1, v0, v1

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 17
    .line 18
    invoke-interface {v2, v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->ensureAdditionalFramesInInputBuffer(I)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 22
    .line 23
    invoke-interface {v2, p1, v0}, Landroidx/media3/common/audio/Sonic$SonicImpl;->copyBufferToInputBuffer(Ljava/nio/ByteBuffer;I)V

    .line 24
    .line 25
    .line 26
    iget p1, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 27
    .line 28
    add-int/2addr p1, v1

    .line 29
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 30
    .line 31
    invoke-direct {p0}, Landroidx/media3/common/audio/Sonic;->processStreamInput()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
