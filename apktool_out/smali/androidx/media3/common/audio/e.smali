.class public abstract synthetic Landroidx/media3/common/audio/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/media3/common/audio/AudioProcessor;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "AudioProcessor must implement at least one #flush() overload."

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public static b(Landroidx/media3/common/audio/AudioProcessor;Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Landroidx/media3/common/audio/AudioProcessor;->flush()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Landroidx/media3/common/audio/AudioProcessor;J)J
    .locals 0

    .line 1
    return-wide p1
.end method
