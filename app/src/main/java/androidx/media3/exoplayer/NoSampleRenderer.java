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

@UnstableApi
/* loaded from: classes.dex */
public abstract class NoSampleRenderer implements Renderer, RendererCapabilities {
    private RendererConfiguration configuration;
    private int index;
    private int state;
    private SampleStream stream;
    private boolean streamIsFinal;

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final /* synthetic */ void clearListener() {
        X.a(this);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void disable() {
        P3.v.checkState(this.state == 1);
        this.state = 0;
        this.stream = null;
        this.streamIsFinal = false;
        onDisabled();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void enable(RendererConfiguration rendererConfiguration, Format[] formatArr, SampleStream sampleStream, long j7, boolean z6, boolean z7, long j8, long j9, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        P3.v.checkState(this.state == 0);
        this.configuration = rendererConfiguration;
        this.state = 1;
        onEnabled(z6);
        replaceStream(formatArr, sampleStream, j8, j9, mediaPeriodId);
        onPositionReset(j7, z6, true);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final /* synthetic */ void enableMayRenderStartOfStream() {
        W.a(this);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final RendererCapabilities getCapabilities() {
        return this;
    }

    public final RendererConfiguration getConfiguration() {
        return this.configuration;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final /* synthetic */ long getDurationToProgressUs(long j7, long j8) {
        return W.b(this, j7, j8);
    }

    public final int getIndex() {
        return this.index;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public MediaClock getMediaClock() {
        return null;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public long getReadingPositionUs() {
        return Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final int getState() {
        return this.state;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final SampleStream getStream() {
        return this.stream;
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final int getTrackType() {
        return -2;
    }

    @Override // androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i2, Object obj) throws ExoPlaybackException {
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean hasReadStreamToEnd() {
        return true;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void init(int i2, PlayerId playerId, Clock clock) {
        this.index = i2;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean isCurrentStreamFinal() {
        return this.streamIsFinal;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return true;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return true;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void maybeThrowStreamError() throws IOException {
    }

    public void onDisabled() {
    }

    public void onEnabled(boolean z6) throws ExoPlaybackException {
    }

    public void onPositionReset(long j7, boolean z6, boolean z7) throws ExoPlaybackException {
    }

    public void onRendererOffsetChanged(long j7) throws ExoPlaybackException {
    }

    public void onReset() {
    }

    public void onStarted() throws ExoPlaybackException {
    }

    public void onStopped() {
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final /* synthetic */ void release() {
        W.c(this);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void replaceStream(Format[] formatArr, SampleStream sampleStream, long j7, long j8, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        P3.v.checkState(!this.streamIsFinal);
        this.stream = sampleStream;
        onRendererOffsetChanged(j8);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void reset() {
        P3.v.checkState(this.state == 0);
        onReset();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void resetPosition(long j7, boolean z6) throws ExoPlaybackException {
        this.streamIsFinal = false;
        onPositionReset(j7, false, z6);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void setCurrentStreamFinal() {
        this.streamIsFinal = true;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final /* synthetic */ void setListener(RendererCapabilities.Listener listener) {
        X.b(this, listener);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final /* synthetic */ void setPlaybackSpeed(float f3, float f7) {
        W.d(this, f3, f7);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void setTimeline(Timeline timeline) {
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
    public int supportsFormat(Format format) throws ExoPlaybackException {
        return X.c(0);
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public int supportsMixedMimeTypeAdaptation() throws ExoPlaybackException {
        return 0;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final /* synthetic */ boolean supportsResetPositionWithoutKeyFrameReset(long j7) {
        return W.e(this, j7);
    }
}
