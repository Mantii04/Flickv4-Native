package androidx.media3.exoplayer;

import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import java.io.IOException;
import java.util.Objects;
import u0.C1665f;

@UnstableApi
/* loaded from: classes.dex */
public abstract class BaseRenderer implements Renderer, RendererCapabilities {
    private Clock clock;
    private RendererConfiguration configuration;
    private int index;
    private long lastResetPositionUs;
    private MediaSource.MediaPeriodId mediaPeriodId;
    private PlayerId playerId;
    private RendererCapabilities.Listener rendererCapabilitiesListener;
    private int state;
    private SampleStream stream;
    private Format[] streamFormats;
    private boolean streamIsFinal;
    private long streamOffsetUs;
    private boolean throwRendererExceptionIsExecuting;
    private final int trackType;
    private final Object lock = new Object();
    private final FormatHolder formatHolder = new FormatHolder();
    private long readingPositionUs = Long.MIN_VALUE;
    private Timeline timeline = Timeline.EMPTY;

    public BaseRenderer(int i2) {
        this.trackType = i2;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final void clearListener() {
        synchronized (this.lock) {
            this.rendererCapabilitiesListener = null;
        }
    }

    public final ExoPlaybackException createRendererException(Throwable th, Format format, int i2) {
        return createRendererException(th, format, false, i2);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void disable() {
        P3.v.checkState(this.state == 1);
        this.formatHolder.clear();
        this.state = 0;
        this.stream = null;
        this.streamFormats = null;
        this.streamIsFinal = false;
        onDisabled();
        this.mediaPeriodId = null;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void enable(RendererConfiguration rendererConfiguration, Format[] formatArr, SampleStream sampleStream, long j7, boolean z6, boolean z7, long j8, long j9, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        P3.v.checkState(this.state == 0);
        this.configuration = rendererConfiguration;
        this.mediaPeriodId = mediaPeriodId;
        this.state = 1;
        onEnabled(z6, z7);
        replaceStream(formatArr, sampleStream, j8, j9, mediaPeriodId);
        resetPosition(j8, z6, true);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public /* synthetic */ void enableMayRenderStartOfStream() {
        W.a(this);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final RendererCapabilities getCapabilities() {
        return this;
    }

    public final Clock getClock() {
        return (Clock) P3.v.checkNotNull(this.clock);
    }

    public final RendererConfiguration getConfiguration() {
        return (RendererConfiguration) P3.v.checkNotNull(this.configuration);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public /* synthetic */ long getDurationToProgressUs(long j7, long j8) {
        return W.b(this, j7, j8);
    }

    public final FormatHolder getFormatHolder() {
        this.formatHolder.clear();
        return this.formatHolder;
    }

    public final int getIndex() {
        return this.index;
    }

    public final long getLastResetPositionUs() {
        return this.lastResetPositionUs;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public MediaClock getMediaClock() {
        return null;
    }

    public final MediaSource.MediaPeriodId getMediaPeriodId() {
        return this.mediaPeriodId;
    }

    public final PlayerId getPlayerId() {
        return (PlayerId) P3.v.checkNotNull(this.playerId);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final long getReadingPositionUs() {
        return this.readingPositionUs;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final int getState() {
        return this.state;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final SampleStream getStream() {
        return this.stream;
    }

    public final Format[] getStreamFormats() {
        return (Format[]) P3.v.checkNotNull(this.streamFormats);
    }

    public final long getStreamOffsetUs() {
        return this.streamOffsetUs;
    }

    public final Timeline getTimeline() {
        return this.timeline;
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final int getTrackType() {
        return this.trackType;
    }

    @Override // androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i2, Object obj) throws ExoPlaybackException {
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean hasReadStreamToEnd() {
        return this.readingPositionUs == Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void init(int i2, PlayerId playerId, Clock clock) {
        this.index = i2;
        this.playerId = playerId;
        this.clock = clock;
        onInit();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean isCurrentStreamFinal() {
        return this.streamIsFinal;
    }

    public final boolean isSourceReady() {
        return hasReadStreamToEnd() ? this.streamIsFinal : ((SampleStream) P3.v.checkNotNull(this.stream)).isReady();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void maybeThrowStreamError() throws IOException {
        ((SampleStream) P3.v.checkNotNull(this.stream)).maybeThrowError();
    }

    public void onDisabled() {
    }

    public void onEnabled(boolean z6, boolean z7) throws ExoPlaybackException {
    }

    public void onInit() {
    }

    public void onPositionReset(long j7, boolean z6, boolean z7) throws ExoPlaybackException {
    }

    public void onRelease() {
    }

    public final void onRendererCapabilitiesChanged() {
        RendererCapabilities.Listener listener;
        synchronized (this.lock) {
            listener = this.rendererCapabilitiesListener;
        }
        if (listener != null) {
            listener.onRendererCapabilitiesChanged(this);
        }
    }

    public void onReset() {
    }

    public void onStarted() throws ExoPlaybackException {
    }

    public void onStopped() {
    }

    public void onStreamChanged(Format[] formatArr, long j7, long j8, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
    }

    public void onTimelineChanged(Timeline timeline) {
    }

    public final int readSource(FormatHolder formatHolder, C1665f c1665f, int i2) {
        int readData = ((SampleStream) P3.v.checkNotNull(this.stream)).readData(formatHolder, c1665f, i2);
        if (readData != -4) {
            if (readData == -5) {
                Format format = (Format) P3.v.checkNotNull(formatHolder.format);
                if (format.subsampleOffsetUs != Long.MAX_VALUE) {
                    formatHolder.format = format.buildUpon().setSubsampleOffsetUs(format.subsampleOffsetUs + this.streamOffsetUs).build();
                }
            }
            return readData;
        }
        if (c1665f.isEndOfStream()) {
            this.readingPositionUs = Long.MIN_VALUE;
            return this.streamIsFinal ? -4 : -3;
        }
        long j7 = c1665f.timeUs + this.streamOffsetUs;
        c1665f.timeUs = j7;
        this.readingPositionUs = Math.max(this.readingPositionUs, j7);
        return readData;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void release() {
        P3.v.checkState(this.state == 0);
        onRelease();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void replaceStream(Format[] formatArr, SampleStream sampleStream, long j7, long j8, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        P3.v.checkState(!this.streamIsFinal);
        this.stream = sampleStream;
        this.mediaPeriodId = mediaPeriodId;
        if (this.readingPositionUs == Long.MIN_VALUE) {
            this.readingPositionUs = j7;
        }
        this.streamFormats = formatArr;
        this.streamOffsetUs = j8;
        onStreamChanged(formatArr, j7, j8, mediaPeriodId);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void reset() {
        P3.v.checkState(this.state == 0);
        this.formatHolder.clear();
        onReset();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void resetPosition(long j7, boolean z6) throws ExoPlaybackException {
        resetPosition(j7, false, z6);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void setCurrentStreamFinal() {
        this.streamIsFinal = true;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final void setListener(RendererCapabilities.Listener listener) {
        synchronized (this.lock) {
            this.rendererCapabilitiesListener = listener;
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public /* synthetic */ void setPlaybackSpeed(float f3, float f7) {
        W.d(this, f3, f7);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void setTimeline(Timeline timeline) {
        if (Objects.equals(this.timeline, timeline)) {
            return;
        }
        this.timeline = timeline;
        onTimelineChanged(timeline);
    }

    public int skipSource(long j7) {
        return ((SampleStream) P3.v.checkNotNull(this.stream)).skipData(j7 - this.streamOffsetUs);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void start() throws ExoPlaybackException {
        P3.v.checkState(this.state == 1);
        this.state = 2;
        onStarted();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void stop() {
        P3.v.checkState(this.state == 2);
        this.state = 1;
        onStopped();
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public int supportsMixedMimeTypeAdaptation() throws ExoPlaybackException {
        return 0;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public /* synthetic */ boolean supportsResetPositionWithoutKeyFrameReset(long j7) {
        return W.e(this, j7);
    }

    private void resetPosition(long j7, boolean z6, boolean z7) throws ExoPlaybackException {
        this.streamIsFinal = false;
        this.lastResetPositionUs = j7;
        this.readingPositionUs = j7;
        if (!z7) {
            z7 = skipSource(j7) != 0;
        }
        onPositionReset(j7, z6, z7);
    }

    public final ExoPlaybackException createRendererException(Throwable th, Format format, boolean z6, int i2) {
        int i7;
        if (format != null && !this.throwRendererExceptionIsExecuting) {
            this.throwRendererExceptionIsExecuting = true;
            try {
                i7 = X.k(supportsFormat(format));
            } catch (ExoPlaybackException unused) {
            } finally {
                this.throwRendererExceptionIsExecuting = false;
            }
            return ExoPlaybackException.createForRenderer(th, getName(), getIndex(), format, i7, this.mediaPeriodId, z6, i2);
        }
        i7 = 4;
        return ExoPlaybackException.createForRenderer(th, getName(), getIndex(), format, i7, this.mediaPeriodId, z6, i2);
    }
}
