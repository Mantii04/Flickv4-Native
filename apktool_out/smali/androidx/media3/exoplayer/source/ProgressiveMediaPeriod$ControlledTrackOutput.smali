.class Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;
.super Lv0/T;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlledTrackOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;
    }
.end annotation


# instance fields
.field private final discardingTrackOutput:Lv0/y;

.field private final outputMode:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/SampleQueue;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lv0/T;-><init>(Lv0/r0;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 5
    .line 6
    new-instance p1, Lv0/y;

    .line 7
    .line 8
    invoke-direct {p1}, Lv0/y;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->discardingTrackOutput:Lv0/y;

    .line 12
    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    sget-object v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->PASS_THROUGH:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->outputMode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    .line 22
    return-void
.end method

.method private getCurrentOutput()Lv0/r0;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->outputMode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->DISCARDING:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->discardingTrackOutput:Lv0/y;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public isSelected()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->outputMode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->PASS_THROUGH:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public sampleData(Landroidx/media3/common/DataReader;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->getCurrentOutput()Lv0/r0;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lv0/r0;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result p1

    return p1
.end method

.method public sampleData(Landroidx/media3/common/DataReader;IZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->getCurrentOutput()Lv0/r0;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lv0/r0;->sampleData(Landroidx/media3/common/DataReader;IZI)I

    move-result p1

    return p1
.end method

.method public sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->getCurrentOutput()Lv0/r0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    return-void
.end method

.method public sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->getCurrentOutput()Lv0/r0;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lv0/r0;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    return-void
.end method

.method public sampleMetadata(JIIILv0/q0;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->getCurrentOutput()Lv0/r0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-wide v1, p1

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    move-object v6, p6

    .line 10
    invoke-interface/range {v0 .. v6}, Lv0/r0;->sampleMetadata(JIIILv0/q0;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->outputMode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object p2, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->DISCARD_AFTER_NEXT_SAMPLE_METADATA:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    .line 20
    .line 21
    if-ne p1, p2, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/SampleQueue;->reset()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->outputMode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    .line 30
    sget-object p2, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->DISCARDING:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public updateSelectionState(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->outputMode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->PASS_THROUGH:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->DISCARD_AFTER_NEXT_SAMPLE_METADATA:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    .line 9
    .line 10
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method
