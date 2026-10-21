.class public final Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ScrubbingModeParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allowSkippingKeyFrameReset:Z

.field private allowSkippingMediaCodecFlush:Z

.field private disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fractionalSeekToleranceAfter:Ljava/lang/Double;

.field private fractionalSeekToleranceBefore:Ljava/lang/Double;

.field private shouldEnableDynamicScheduling:Z

.field private shouldIncreaseCodecOperatingRate:Z

.field private useDecodeOnlyFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 4
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->shouldIncreaseCodecOperatingRate:Z

    .line 5
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->allowSkippingMediaCodecFlush:Z

    .line 6
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->allowSkippingKeyFrameReset:Z

    .line 7
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->shouldEnableDynamicScheduling:Z

    .line 8
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->useDecodeOnlyFlag:Z

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/ScrubbingModeParameters;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget-object v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    iput-object v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 11
    iget-object v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->fractionalSeekToleranceBefore:Ljava/lang/Double;

    iput-object v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->fractionalSeekToleranceBefore:Ljava/lang/Double;

    .line 12
    iget-object v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->fractionalSeekToleranceAfter:Ljava/lang/Double;

    iput-object v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->fractionalSeekToleranceAfter:Ljava/lang/Double;

    .line 13
    iget-boolean v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->shouldIncreaseCodecOperatingRate:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->shouldIncreaseCodecOperatingRate:Z

    .line 14
    iget-boolean v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->allowSkippingMediaCodecFlush:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->allowSkippingMediaCodecFlush:Z

    .line 15
    iget-boolean v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->allowSkippingKeyFrameReset:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->allowSkippingKeyFrameReset:Z

    .line 16
    iget-boolean v0, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->shouldEnableDynamicScheduling:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->shouldEnableDynamicScheduling:Z

    .line 17
    iget-boolean p1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->useDecodeOnlyFlag:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->useDecodeOnlyFlag:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ScrubbingModeParameters;Landroidx/media3/exoplayer/ScrubbingModeParameters$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;-><init>(Landroidx/media3/exoplayer/ScrubbingModeParameters;)V

    return-void
.end method

.method public static synthetic access$100(Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;)Lcom/google/common/collect/ImmutableSet;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;)Ljava/lang/Double;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->fractionalSeekToleranceBefore:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;)Ljava/lang/Double;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->fractionalSeekToleranceAfter:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->shouldIncreaseCodecOperatingRate:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$500(Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->allowSkippingMediaCodecFlush:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$600(Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->allowSkippingKeyFrameReset:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$700(Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->shouldEnableDynamicScheduling:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$800(Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->useDecodeOnlyFlag:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/ScrubbingModeParameters;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/ScrubbingModeParameters;-><init>(Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;Landroidx/media3/exoplayer/ScrubbingModeParameters$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setAllowSkippingKeyFrameReset(Z)Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->allowSkippingKeyFrameReset:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setAllowSkippingMediaCodecFlush(Z)Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->allowSkippingMediaCodecFlush:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setDisabledTrackTypes(Ljava/util/Set;)Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 6
    .line 7
    return-object p0
.end method

.method public setFractionalSeekTolerance(Ljava/lang/Double;Ljava/lang/Double;)Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    if-nez p2, :cond_1

    .line 9
    .line 10
    move v3, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    move v3, v0

    .line 13
    :goto_1
    if-ne v2, v3, :cond_2

    .line 14
    .line 15
    move v2, v1

    .line 16
    goto :goto_2

    .line 17
    :cond_2
    move v2, v0

    .line 18
    :goto_2
    invoke-static {v2}, LP3/v;->checkArgument(Z)V

    .line 19
    .line 20
    .line 21
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    if-eqz p1, :cond_4

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    cmpl-double v6, v6, v4

    .line 32
    .line 33
    if-ltz v6, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    cmpg-double v6, v6, v2

    .line 40
    .line 41
    if-gtz v6, :cond_3

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    move v6, v0

    .line 45
    goto :goto_4

    .line 46
    :cond_4
    :goto_3
    move v6, v1

    .line 47
    :goto_4
    invoke-static {v6}, LP3/v;->checkArgument(Z)V

    .line 48
    .line 49
    .line 50
    if-eqz p2, :cond_5

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 53
    .line 54
    .line 55
    move-result-wide v6

    .line 56
    cmpl-double v4, v6, v4

    .line 57
    .line 58
    if-ltz v4, :cond_6

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    cmpg-double v2, v4, v2

    .line 65
    .line 66
    if-gtz v2, :cond_6

    .line 67
    .line 68
    :cond_5
    move v0, v1

    .line 69
    :cond_6
    invoke-static {v0}, LP3/v;->checkArgument(Z)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->fractionalSeekToleranceBefore:Ljava/lang/Double;

    .line 73
    .line 74
    iput-object p2, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->fractionalSeekToleranceAfter:Ljava/lang/Double;

    .line 75
    .line 76
    return-object p0
.end method

.method public setIsMediaCodecFlushEnabled(Z)Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->allowSkippingMediaCodecFlush:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setShouldEnableDynamicScheduling(Z)Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->shouldEnableDynamicScheduling:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setShouldIncreaseCodecOperatingRate(Z)Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->shouldIncreaseCodecOperatingRate:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setUseDecodeOnlyFlag(Z)Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ScrubbingModeParameters$Builder;->useDecodeOnlyFlag:Z

    .line 2
    .line 3
    return-object p0
.end method
