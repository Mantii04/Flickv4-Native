package androidx.media3.exoplayer;

import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.metadata.MetadataRenderer;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.text.TextRenderer;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes.dex */
class RendererHolder {
    static final int RENDERER_PREWARMING_STATE_NOT_PREWARMING_USING_PRIMARY = 0;
    static final int RENDERER_PREWARMING_STATE_NOT_PREWARMING_USING_SECONDARY = 1;
    static final int RENDERER_PREWARMING_STATE_PREWARMING_PRIMARY = 2;
    static final int RENDERER_PREWARMING_STATE_TRANSITIONING_TO_PRIMARY = 4;
    static final int RENDERER_PREWARMING_STATE_TRANSITIONING_TO_SECONDARY = 3;
    static final int REPLACE_STREAMS_DISABLE_RENDERERS_COMPLETED = 1;
    static final int REPLACE_STREAMS_DISABLE_RENDERERS_DISABLE_OFFLOAD_SCHEDULING = 2;
    private final int index;
    private final Renderer primaryRenderer;
    private final Renderer secondaryRenderer;
    private int prewarmingState = 0;
    private boolean primaryRequiresReset = false;
    private boolean secondaryRequiresReset = false;

    public RendererHolder(Renderer renderer, Renderer renderer2, int i2) {
        this.primaryRenderer = renderer;
        this.index = i2;
        this.secondaryRenderer = renderer2;
    }

    private void disableRenderer(Renderer renderer, DefaultMediaClock defaultMediaClock) {
        P3.v.checkState(this.primaryRenderer == renderer || this.secondaryRenderer == renderer);
        if (isRendererEnabled(renderer)) {
            defaultMediaClock.onRendererDisabled(renderer);
            ensureStopped(renderer);
            renderer.disable();
        }
    }

    private void ensureStopped(Renderer renderer) {
        if (renderer.getState() == 2) {
            renderer.stop();
        }
    }

    private static Format[] getFormats(ExoTrackSelection exoTrackSelection) {
        int length = exoTrackSelection != null ? exoTrackSelection.length() : 0;
        Format[] formatArr = new Format[length];
        for (int i2 = 0; i2 < length; i2++) {
            formatArr[i2] = ((ExoTrackSelection) P3.v.checkNotNull(exoTrackSelection)).getFormat(i2);
        }
        return formatArr;
    }

    private Renderer getRendererReadingFromPeriod(MediaPeriodHolder mediaPeriodHolder) {
        if (mediaPeriodHolder != null && mediaPeriodHolder.sampleStreams[this.index] != null) {
            if (this.primaryRenderer.getStream() == mediaPeriodHolder.sampleStreams[this.index]) {
                return this.primaryRenderer;
            }
            Renderer renderer = this.secondaryRenderer;
            if (renderer != null && renderer.getStream() == mediaPeriodHolder.sampleStreams[this.index]) {
                return this.secondaryRenderer;
            }
        }
        return null;
    }

    private boolean hasFinishedReadingFromPeriodInternal(MediaPeriodHolder mediaPeriodHolder, Renderer renderer) {
        if (renderer == null) {
            return true;
        }
        SampleStream sampleStream = mediaPeriodHolder.sampleStreams[this.index];
        if (renderer.getStream() == null || (renderer.getStream() == sampleStream && (sampleStream == null || renderer.hasReadStreamToEnd() || hasReachedServerSideInsertedAdsTransition(renderer, mediaPeriodHolder)))) {
            return true;
        }
        MediaPeriodHolder next = mediaPeriodHolder.getNext();
        return next != null && next.sampleStreams[this.index] == renderer.getStream();
    }

    private boolean hasReachedServerSideInsertedAdsTransition(Renderer renderer, MediaPeriodHolder mediaPeriodHolder) {
        MediaPeriodHolder next = mediaPeriodHolder.getNext();
        if (mediaPeriodHolder.info.isFollowedByTransitionToSameStream && next != null && next.prepared) {
            return (renderer instanceof TextRenderer) || (renderer instanceof MetadataRenderer) || renderer.getReadingPositionUs() >= next.getStartPositionRendererTime();
        }
        return false;
    }

    private boolean isPrimaryRendererPrewarming() {
        int i2 = this.prewarmingState;
        return i2 == 2 || i2 == 4;
    }

    private boolean isSecondaryRendererPrewarming() {
        return this.prewarmingState == 3;
    }

    private void maybeDisableOrResetPositionInternal(Renderer renderer, SampleStream sampleStream, DefaultMediaClock defaultMediaClock, long j7, boolean z6) throws ExoPlaybackException {
        if (isRendererEnabled(renderer)) {
            if (sampleStream != renderer.getStream()) {
                disableRenderer(renderer, defaultMediaClock);
            } else if (z6) {
                renderer.resetPosition(j7, true);
            }
        }
    }

    private void maybeResetRenderer(boolean z6) {
        if (z6) {
            if (this.primaryRequiresReset) {
                this.primaryRenderer.reset();
                this.primaryRequiresReset = false;
                return;
            }
            return;
        }
        if (this.secondaryRequiresReset) {
            ((Renderer) P3.v.checkNotNull(this.secondaryRenderer)).reset();
            this.secondaryRequiresReset = false;
        }
    }

    private int replaceStreamsOrDisableRendererForTransitionInternal(Renderer renderer, MediaPeriodHolder mediaPeriodHolder, TrackSelectorResult trackSelectorResult, DefaultMediaClock defaultMediaClock) throws ExoPlaybackException {
        if (renderer == null || !isRendererEnabled(renderer) || ((renderer == this.primaryRenderer && isPrimaryRendererPrewarming()) || (renderer == this.secondaryRenderer && isSecondaryRendererPrewarming()))) {
            return 1;
        }
        SampleStream stream = renderer.getStream();
        SampleStream[] sampleStreamArr = mediaPeriodHolder.sampleStreams;
        int i2 = this.index;
        boolean z6 = stream != sampleStreamArr[i2];
        boolean isRendererEnabled = trackSelectorResult.isRendererEnabled(i2);
        if (isRendererEnabled && !z6) {
            return 1;
        }
        if (!renderer.isCurrentStreamFinal()) {
            renderer.replaceStream(getFormats(trackSelectorResult.selections[this.index]), (SampleStream) P3.v.checkNotNull(mediaPeriodHolder.sampleStreams[this.index]), mediaPeriodHolder.getStartPositionRendererTime(), mediaPeriodHolder.getRendererOffset(), mediaPeriodHolder.info.id);
            return 3;
        }
        if (!renderer.isEnded()) {
            return 0;
        }
        disableRenderer(renderer, defaultMediaClock);
        if (!isRendererEnabled || isPrewarming()) {
            maybeResetRenderer(renderer == this.primaryRenderer);
        }
        return 1;
    }

    private void setCurrentStreamFinalInternal(Renderer renderer, long j7) {
        renderer.setCurrentStreamFinal();
        if (renderer instanceof TextRenderer) {
            ((TextRenderer) renderer).setFinalStreamEndPositionUs(j7);
        }
    }

    private void transferResources(boolean z6) throws ExoPlaybackException {
        if (z6) {
            ((Renderer) P3.v.checkNotNull(this.secondaryRenderer)).handleMessage(17, this.primaryRenderer);
        } else {
            this.primaryRenderer.handleMessage(17, P3.v.checkNotNull(this.secondaryRenderer));
        }
    }

    public boolean allowsPlayback(MediaPeriodHolder mediaPeriodHolder) {
        Renderer rendererReadingFromPeriod = getRendererReadingFromPeriod(mediaPeriodHolder);
        return rendererReadingFromPeriod == null || rendererReadingFromPeriod.hasReadStreamToEnd() || rendererReadingFromPeriod.isReady() || rendererReadingFromPeriod.isEnded();
    }

    public void disable(DefaultMediaClock defaultMediaClock) throws ExoPlaybackException {
        disableRenderer(this.primaryRenderer, defaultMediaClock);
        Renderer renderer = this.secondaryRenderer;
        if (renderer != null) {
            boolean z6 = isRendererEnabled(renderer) && this.prewarmingState != 3;
            disableRenderer(this.secondaryRenderer, defaultMediaClock);
            maybeResetRenderer(false);
            if (z6) {
                transferResources(true);
            }
        }
        this.prewarmingState = 0;
    }

    public void disablePrewarming(DefaultMediaClock defaultMediaClock) {
        if (isPrewarming()) {
            int i2 = this.prewarmingState;
            boolean z6 = i2 == 4 || i2 == 2;
            int i7 = i2 != 4 ? 0 : 1;
            disableRenderer(z6 ? this.primaryRenderer : (Renderer) P3.v.checkNotNull(this.secondaryRenderer), defaultMediaClock);
            maybeResetRenderer(z6);
            this.prewarmingState = i7;
        }
    }

    public void enable(RendererConfiguration rendererConfiguration, ExoTrackSelection exoTrackSelection, SampleStream sampleStream, long j7, boolean z6, boolean z7, long j8, long j9, MediaSource.MediaPeriodId mediaPeriodId, DefaultMediaClock defaultMediaClock) throws ExoPlaybackException {
        Format[] formats = getFormats(exoTrackSelection);
        int i2 = this.prewarmingState;
        if (i2 == 0 || i2 == 2 || i2 == 4) {
            this.primaryRequiresReset = true;
            this.primaryRenderer.enable(rendererConfiguration, formats, sampleStream, j7, z6, z7, j8, j9, mediaPeriodId);
            defaultMediaClock.onRendererEnabled(this.primaryRenderer);
        } else {
            this.secondaryRequiresReset = true;
            ((Renderer) P3.v.checkNotNull(this.secondaryRenderer)).enable(rendererConfiguration, formats, sampleStream, j7, z6, z7, j8, j9, mediaPeriodId);
            defaultMediaClock.onRendererEnabled(this.secondaryRenderer);
        }
    }

    public void enableMayRenderStartOfStream() {
        if (isRendererEnabled(this.primaryRenderer)) {
            this.primaryRenderer.enableMayRenderStartOfStream();
            return;
        }
        Renderer renderer = this.secondaryRenderer;
        if (renderer == null || !isRendererEnabled(renderer)) {
            return;
        }
        this.secondaryRenderer.enableMayRenderStartOfStream();
    }

    public int getEnabledRendererCount() {
        boolean isRendererEnabled = isRendererEnabled(this.primaryRenderer);
        Renderer renderer = this.secondaryRenderer;
        return (isRendererEnabled ? 1 : 0) + ((renderer == null || !isRendererEnabled(renderer)) ? 0 : 1);
    }

    public long getMinDurationToProgressUs(long j7, long j8) {
        long durationToProgressUs = isRendererEnabled(this.primaryRenderer) ? this.primaryRenderer.getDurationToProgressUs(j7, j8) : Long.MAX_VALUE;
        Renderer renderer = this.secondaryRenderer;
        return (renderer == null || !isRendererEnabled(renderer)) ? durationToProgressUs : Math.min(durationToProgressUs, this.secondaryRenderer.getDurationToProgressUs(j7, j8));
    }

    public long getReadingPositionUs(MediaPeriodHolder mediaPeriodHolder) {
        Renderer rendererReadingFromPeriod = getRendererReadingFromPeriod(mediaPeriodHolder);
        Objects.requireNonNull(rendererReadingFromPeriod);
        return rendererReadingFromPeriod.getReadingPositionUs();
    }

    public int getTrackType() {
        return this.primaryRenderer.getTrackType();
    }

    public void handleMessage(int i2, Object obj, MediaPeriodHolder mediaPeriodHolder) throws ExoPlaybackException {
        ((Renderer) P3.v.checkNotNull(getRendererReadingFromPeriod(mediaPeriodHolder))).handleMessage(i2, obj);
    }

    public boolean hasFinishedReadingFromPeriod(MediaPeriodHolder mediaPeriodHolder) {
        return hasFinishedReadingFromPeriodInternal(mediaPeriodHolder, this.primaryRenderer) && hasFinishedReadingFromPeriodInternal(mediaPeriodHolder, this.secondaryRenderer);
    }

    public boolean hasReadPeriodToEnd(MediaPeriodHolder mediaPeriodHolder) {
        return ((Renderer) P3.v.checkNotNull(getRendererReadingFromPeriod(mediaPeriodHolder))).hasReadStreamToEnd();
    }

    public boolean hasSecondary() {
        return this.secondaryRenderer != null;
    }

    public boolean isEnded() {
        boolean isEnded = isRendererEnabled(this.primaryRenderer) ? this.primaryRenderer.isEnded() : true;
        Renderer renderer = this.secondaryRenderer;
        return (renderer == null || !isRendererEnabled(renderer)) ? isEnded : isEnded & this.secondaryRenderer.isEnded();
    }

    public boolean isPrewarming() {
        return isPrimaryRendererPrewarming() || isSecondaryRendererPrewarming();
    }

    public boolean isPrewarmingPeriod(MediaPeriodHolder mediaPeriodHolder) {
        return (isPrimaryRendererPrewarming() && getRendererReadingFromPeriod(mediaPeriodHolder) == this.primaryRenderer) || (isSecondaryRendererPrewarming() && getRendererReadingFromPeriod(mediaPeriodHolder) == this.secondaryRenderer);
    }

    public boolean isReadingFromPeriod(MediaPeriodHolder mediaPeriodHolder) {
        return getRendererReadingFromPeriod(mediaPeriodHolder) != null;
    }

    public boolean isRendererEnabled() {
        int i2 = this.prewarmingState;
        return (i2 == 0 || i2 == 2 || i2 == 4) ? isRendererEnabled(this.primaryRenderer) : isRendererEnabled((Renderer) P3.v.checkNotNull(this.secondaryRenderer));
    }

    public void maybeDisableOrResetPosition(SampleStream sampleStream, DefaultMediaClock defaultMediaClock, long j7, boolean z6) throws ExoPlaybackException {
        maybeDisableOrResetPositionInternal(this.primaryRenderer, sampleStream, defaultMediaClock, j7, z6);
        Renderer renderer = this.secondaryRenderer;
        if (renderer != null) {
            maybeDisableOrResetPositionInternal(renderer, sampleStream, defaultMediaClock, j7, z6);
        }
    }

    public void maybeHandlePrewarmingTransition() throws ExoPlaybackException {
        int i2 = this.prewarmingState;
        if (i2 == 3 || i2 == 4) {
            transferResources(i2 == 4);
            this.prewarmingState = this.prewarmingState != 4 ? 1 : 0;
        } else if (i2 == 2) {
            this.prewarmingState = 0;
        }
    }

    public void maybeSetOldStreamToFinal(TrackSelectorResult trackSelectorResult, TrackSelectorResult trackSelectorResult2, long j7) {
        int i2;
        boolean isRendererEnabled = trackSelectorResult.isRendererEnabled(this.index);
        boolean isRendererEnabled2 = trackSelectorResult2.isRendererEnabled(this.index);
        Renderer renderer = (this.secondaryRenderer == null || (i2 = this.prewarmingState) == 3 || (i2 == 0 && isRendererEnabled(this.primaryRenderer))) ? this.primaryRenderer : (Renderer) P3.v.checkNotNull(this.secondaryRenderer);
        if (!isRendererEnabled || renderer.isCurrentStreamFinal()) {
            return;
        }
        boolean z6 = getTrackType() == -2;
        RendererConfiguration[] rendererConfigurationArr = trackSelectorResult.rendererConfigurations;
        int i7 = this.index;
        RendererConfiguration rendererConfiguration = rendererConfigurationArr[i7];
        RendererConfiguration rendererConfiguration2 = trackSelectorResult2.rendererConfigurations[i7];
        if (!isRendererEnabled2 || !Objects.equals(rendererConfiguration2, rendererConfiguration) || z6 || isPrewarming()) {
            setCurrentStreamFinalInternal(renderer, j7);
        }
    }

    public void maybeThrowStreamError(MediaPeriodHolder mediaPeriodHolder) throws IOException {
        ((Renderer) P3.v.checkNotNull(getRendererReadingFromPeriod(mediaPeriodHolder))).maybeThrowStreamError();
    }

    public void release() {
        this.primaryRenderer.release();
        this.primaryRequiresReset = false;
        Renderer renderer = this.secondaryRenderer;
        if (renderer != null) {
            renderer.release();
            this.secondaryRequiresReset = false;
        }
    }

    public void render(long j7, long j8) throws ExoPlaybackException {
        if (isRendererEnabled(this.primaryRenderer)) {
            this.primaryRenderer.render(j7, j8);
        }
        Renderer renderer = this.secondaryRenderer;
        if (renderer == null || !isRendererEnabled(renderer)) {
            return;
        }
        this.secondaryRenderer.render(j7, j8);
    }

    public int replaceStreamsOrDisableRendererForTransition(MediaPeriodHolder mediaPeriodHolder, TrackSelectorResult trackSelectorResult, DefaultMediaClock defaultMediaClock) throws ExoPlaybackException {
        int replaceStreamsOrDisableRendererForTransitionInternal = replaceStreamsOrDisableRendererForTransitionInternal(this.primaryRenderer, mediaPeriodHolder, trackSelectorResult, defaultMediaClock);
        return replaceStreamsOrDisableRendererForTransitionInternal == 1 ? replaceStreamsOrDisableRendererForTransitionInternal(this.secondaryRenderer, mediaPeriodHolder, trackSelectorResult, defaultMediaClock) : replaceStreamsOrDisableRendererForTransitionInternal;
    }

    public void reset() {
        if (!isRendererEnabled(this.primaryRenderer)) {
            maybeResetRenderer(true);
        }
        Renderer renderer = this.secondaryRenderer;
        if (renderer == null || isRendererEnabled(renderer)) {
            return;
        }
        maybeResetRenderer(false);
    }

    public void resetPosition(MediaPeriodHolder mediaPeriodHolder, long j7, boolean z6) throws ExoPlaybackException {
        Renderer rendererReadingFromPeriod = getRendererReadingFromPeriod(mediaPeriodHolder);
        if (rendererReadingFromPeriod != null) {
            rendererReadingFromPeriod.resetPosition(j7, z6);
        }
    }

    public void setAllNonPrewarmingRendererStreamsFinal(long j7) {
        int i2;
        if (isRendererEnabled(this.primaryRenderer) && (i2 = this.prewarmingState) != 4 && i2 != 2) {
            setCurrentStreamFinalInternal(this.primaryRenderer, j7);
        }
        Renderer renderer = this.secondaryRenderer;
        if (renderer == null || !isRendererEnabled(renderer) || this.prewarmingState == 3) {
            return;
        }
        setCurrentStreamFinalInternal(this.secondaryRenderer, j7);
    }

    public void setCurrentStreamFinal(MediaPeriodHolder mediaPeriodHolder, long j7) {
        setCurrentStreamFinalInternal((Renderer) P3.v.checkNotNull(getRendererReadingFromPeriod(mediaPeriodHolder)), j7);
    }

    public void setPlaybackSpeed(float f3, float f7) throws ExoPlaybackException {
        this.primaryRenderer.setPlaybackSpeed(f3, f7);
        Renderer renderer = this.secondaryRenderer;
        if (renderer != null) {
            renderer.setPlaybackSpeed(f3, f7);
        }
    }

    public void setScrubbingMode(ScrubbingModeParameters scrubbingModeParameters) throws ExoPlaybackException {
        this.primaryRenderer.handleMessage(18, scrubbingModeParameters);
        Renderer renderer = this.secondaryRenderer;
        if (renderer != null) {
            renderer.handleMessage(18, scrubbingModeParameters);
        }
    }

    public void setTimeline(Timeline timeline) {
        this.primaryRenderer.setTimeline(timeline);
        Renderer renderer = this.secondaryRenderer;
        if (renderer != null) {
            renderer.setTimeline(timeline);
        }
    }

    public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) throws ExoPlaybackException {
        if (getTrackType() == 2 || getTrackType() == 4) {
            this.primaryRenderer.handleMessage(7, videoFrameMetadataListener);
            Renderer renderer = this.secondaryRenderer;
            if (renderer != null) {
                renderer.handleMessage(7, videoFrameMetadataListener);
            }
        }
    }

    public void setVideoOutput(Object obj) throws ExoPlaybackException {
        if (getTrackType() != 2) {
            return;
        }
        int i2 = this.prewarmingState;
        if (i2 == 4 || i2 == 1) {
            ((Renderer) P3.v.checkNotNull(this.secondaryRenderer)).handleMessage(1, obj);
        } else {
            this.primaryRenderer.handleMessage(1, obj);
        }
    }

    public void setVolume(float f3) throws ExoPlaybackException {
        if (getTrackType() != 1) {
            return;
        }
        this.primaryRenderer.handleMessage(2, Float.valueOf(f3));
        Renderer renderer = this.secondaryRenderer;
        if (renderer != null) {
            renderer.handleMessage(2, Float.valueOf(f3));
        }
    }

    public void start() throws ExoPlaybackException {
        if (this.primaryRenderer.getState() == 1 && this.prewarmingState != 4) {
            this.primaryRenderer.start();
            return;
        }
        Renderer renderer = this.secondaryRenderer;
        if (renderer == null || renderer.getState() != 1 || this.prewarmingState == 3) {
            return;
        }
        this.secondaryRenderer.start();
    }

    public void startPrewarming() {
        int i2;
        P3.v.checkState(!isPrewarming());
        if (isRendererEnabled(this.primaryRenderer)) {
            i2 = 3;
        } else {
            Renderer renderer = this.secondaryRenderer;
            i2 = (renderer == null || !isRendererEnabled(renderer)) ? 2 : 4;
        }
        this.prewarmingState = i2;
    }

    public void stop() {
        if (isRendererEnabled(this.primaryRenderer)) {
            ensureStopped(this.primaryRenderer);
        }
        Renderer renderer = this.secondaryRenderer;
        if (renderer == null || !isRendererEnabled(renderer)) {
            return;
        }
        ensureStopped(this.secondaryRenderer);
    }

    public boolean supportsResetPositionWithoutKeyFrameReset(MediaPeriodHolder mediaPeriodHolder, long j7) {
        Renderer rendererReadingFromPeriod = getRendererReadingFromPeriod(mediaPeriodHolder);
        return rendererReadingFromPeriod != null && rendererReadingFromPeriod.supportsResetPositionWithoutKeyFrameReset(j7);
    }

    private static boolean isRendererEnabled(Renderer renderer) {
        return renderer.getState() != 0;
    }
}
