.class public abstract synthetic Landroidx/media3/exoplayer/audio/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/media3/exoplayer/audio/AudioSink;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
    .locals 0

    .line 1
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    .line 2
    .line 3
    return-object p0
.end method

.method public static b(Landroidx/media3/exoplayer/audio/AudioSink;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static c(Landroidx/media3/exoplayer/audio/AudioSink;Landroidx/media3/exoplayer/audio/AudioOutputProvider;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "AudioSink doesn\'t support setAudioOutputProvider"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public static d(Landroidx/media3/exoplayer/audio/AudioSink;Landroidx/media3/common/util/Clock;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static e(Landroidx/media3/exoplayer/audio/AudioSink;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public static f(Landroidx/media3/exoplayer/audio/AudioSink;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public static g(Landroidx/media3/exoplayer/audio/AudioSink;J)V
    .locals 0

    .line 1
    return-void
.end method

.method public static h(Landroidx/media3/exoplayer/audio/AudioSink;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static i(Landroidx/media3/exoplayer/audio/AudioSink;Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static j(Landroidx/media3/exoplayer/audio/AudioSink;I)V
    .locals 0

    .line 1
    return-void
.end method
