package androidx.media3.exoplayer.source;

import P3.v;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.upstream.Allocator;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;

@UnstableApi
/* loaded from: classes.dex */
public final class ClippingMediaSource extends WrappingMediaSource {
    private final boolean allowDynamicClippingUpdates;
    private final boolean allowUnseekableMedia;
    private IllegalClippingException clippingError;
    private ClippingTimeline clippingTimeline;
    private final boolean enableInitialDiscontinuity;
    private final long endUs;
    private final ArrayList<ClippingMediaPeriod> mediaPeriods;
    private long periodEndUs;
    private long periodStartUs;
    private final boolean relativeToDefaultPosition;
    private final long startUs;
    private final Timeline.Window window;

    public static final class Builder {
        private boolean allowDynamicClippingUpdates;
        private boolean allowUnseekableMedia;
        private boolean buildCalled;
        private boolean enableInitialDiscontinuity = true;
        private long endPositionUs = Long.MIN_VALUE;
        private final MediaSource mediaSource;
        private boolean relativeToDefaultPosition;
        private long startPositionUs;

        public Builder(MediaSource mediaSource) {
            this.mediaSource = (MediaSource) v.checkNotNull(mediaSource);
        }

        public ClippingMediaSource build() {
            this.buildCalled = true;
            return new ClippingMediaSource(this);
        }

        public Builder setAllowDynamicClippingUpdates(boolean z6) {
            v.checkState(!this.buildCalled);
            this.allowDynamicClippingUpdates = z6;
            return this;
        }

        public Builder setAllowUnseekableMedia(boolean z6) {
            v.checkState(!this.buildCalled);
            this.allowUnseekableMedia = z6;
            return this;
        }

        public Builder setEnableInitialDiscontinuity(boolean z6) {
            v.checkState(!this.buildCalled);
            this.enableInitialDiscontinuity = z6;
            return this;
        }

        public Builder setEndPositionMs(long j7) {
            return setEndPositionUs(Util.msToUs(j7));
        }

        public Builder setEndPositionUs(long j7) {
            v.checkState(!this.buildCalled);
            this.endPositionUs = j7;
            return this;
        }

        public Builder setRelativeToDefaultPosition(boolean z6) {
            v.checkState(!this.buildCalled);
            this.relativeToDefaultPosition = z6;
            return this;
        }

        public Builder setStartPositionMs(long j7) {
            return setStartPositionUs(Util.msToUs(j7));
        }

        public Builder setStartPositionUs(long j7) {
            v.checkArgument(j7 >= 0);
            v.checkState(!this.buildCalled);
            this.startPositionUs = j7;
            return this;
        }
    }

    public static final class ClippingTimeline extends ForwardingTimeline {
        private final long durationUs;
        private final long endUs;
        private final boolean isDynamic;
        private final long startUs;

        public ClippingTimeline(Timeline timeline, long j7, long j8, boolean z6) throws IllegalClippingException {
            super(timeline);
            if (j8 != Long.MIN_VALUE && j8 < j7) {
                throw new IllegalClippingException(2, j7, j8);
            }
            boolean z7 = false;
            if (timeline.getPeriodCount() != 1) {
                throw new IllegalClippingException(0);
            }
            Timeline.Window window = timeline.getWindow(0, new Timeline.Window());
            long max = Math.max(0L, j7);
            if (!z6 && !window.isPlaceholder && max != 0 && !window.isSeekable) {
                throw new IllegalClippingException(1);
            }
            long max2 = j8 == Long.MIN_VALUE ? window.durationUs : Math.max(0L, j8);
            long j9 = window.durationUs;
            if (j9 != C.TIME_UNSET) {
                max2 = max2 > j9 ? j9 : max2;
                if (max > max2) {
                    max = max2;
                }
            }
            this.startUs = max;
            this.endUs = max2;
            this.durationUs = max2 == C.TIME_UNSET ? -9223372036854775807L : max2 - max;
            if (window.isDynamic && (max2 == C.TIME_UNSET || (j9 != C.TIME_UNSET && max2 == j9))) {
                z7 = true;
            }
            this.isDynamic = z7;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Period getPeriod(int i2, Timeline.Period period, boolean z6) {
            this.timeline.getPeriod(0, period, z6);
            long positionInWindowUs = period.getPositionInWindowUs() - this.startUs;
            long j7 = this.durationUs;
            long j8 = C.TIME_UNSET;
            if (j7 != C.TIME_UNSET) {
                j8 = j7 - positionInWindowUs;
            }
            return period.set(period.id, period.uid, 0, j8, positionInWindowUs);
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Window getWindow(int i2, Timeline.Window window, long j7) {
            this.timeline.getWindow(0, window, 0L);
            long j8 = window.positionInFirstPeriodUs;
            long j9 = this.startUs;
            window.positionInFirstPeriodUs = j8 + j9;
            window.durationUs = this.durationUs;
            window.isDynamic = this.isDynamic;
            long j10 = window.defaultPositionUs;
            if (j10 != C.TIME_UNSET) {
                long max = Math.max(j10, j9);
                window.defaultPositionUs = max;
                long j11 = this.endUs;
                if (j11 != C.TIME_UNSET) {
                    max = Math.min(max, j11);
                }
                window.defaultPositionUs = max - this.startUs;
            }
            long usToMs = Util.usToMs(this.startUs);
            long j12 = window.presentationStartTimeMs;
            if (j12 != C.TIME_UNSET) {
                window.presentationStartTimeMs = j12 + usToMs;
            }
            long j13 = window.windowStartTimeMs;
            if (j13 != C.TIME_UNSET) {
                window.windowStartTimeMs = j13 + usToMs;
            }
            return window;
        }
    }

    public static final class IllegalClippingException extends IOException {
        public static final int REASON_INVALID_PERIOD_COUNT = 0;
        public static final int REASON_NOT_SEEKABLE_TO_START = 1;
        public static final int REASON_START_EXCEEDS_END = 2;
        public final int reason;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Reason {
        }

        public IllegalClippingException(int i2) {
            this(i2, C.TIME_UNSET, C.TIME_UNSET);
        }

        private static String getReasonDescription(int i2, long j7, long j8) {
            if (i2 == 0) {
                return "invalid period count";
            }
            if (i2 == 1) {
                return "not seekable to start";
            }
            if (i2 != 2) {
                return "unknown";
            }
            v.checkState((j7 == C.TIME_UNSET || j8 == C.TIME_UNSET) ? false : true);
            return "start exceeds end. Start time: " + j7 + ", End time: " + j8;
        }

        public IllegalClippingException(int i2, long j7, long j8) {
            super("Illegal clipping: " + getReasonDescription(i2, j7, j8));
            this.reason = i2;
        }
    }

    private void refreshClippedTimeline(Timeline timeline) {
        long j7;
        timeline.getWindow(0, this.window);
        long positionInFirstPeriodUs = this.window.getPositionInFirstPeriodUs();
        if (this.clippingTimeline == null || this.mediaPeriods.isEmpty() || this.allowDynamicClippingUpdates) {
            j7 = this.startUs;
            long j8 = this.endUs;
            if (this.relativeToDefaultPosition) {
                long defaultPositionUs = this.window.getDefaultPositionUs();
                j7 += defaultPositionUs;
                j8 += defaultPositionUs;
            }
            this.periodStartUs = positionInFirstPeriodUs + j7;
            this.periodEndUs = this.endUs != Long.MIN_VALUE ? positionInFirstPeriodUs + j8 : Long.MIN_VALUE;
            int size = this.mediaPeriods.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mediaPeriods.get(i2).updateClipping(this.periodStartUs, this.periodEndUs);
            }
            r6 = j8;
        } else {
            j7 = this.periodStartUs - positionInFirstPeriodUs;
            if (this.endUs != Long.MIN_VALUE) {
                r6 = this.periodEndUs - positionInFirstPeriodUs;
            }
        }
        try {
            ClippingTimeline clippingTimeline = new ClippingTimeline(timeline, j7, r6, this.allowUnseekableMedia);
            this.clippingTimeline = clippingTimeline;
            refreshSourceInfo(clippingTimeline);
        } catch (IllegalClippingException e3) {
            this.clippingError = e3;
            for (int i7 = 0; i7 < this.mediaPeriods.size(); i7++) {
                this.mediaPeriods.get(i7).setClippingError(this.clippingError);
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    public boolean canUpdateMediaItem(MediaItem mediaItem) {
        return getMediaItem().clippingConfiguration.equals(mediaItem.clippingConfiguration) && this.mediaSource.canUpdateMediaItem(mediaItem);
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j7) {
        ClippingMediaPeriod clippingMediaPeriod = new ClippingMediaPeriod(this.mediaSource.createPeriod(mediaPeriodId, allocator, j7), this.enableInitialDiscontinuity, this.periodStartUs, this.periodEndUs);
        this.mediaPeriods.add(clippingMediaPeriod);
        return clippingMediaPeriod;
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        IllegalClippingException illegalClippingException = this.clippingError;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    public void onChildSourceInfoRefreshed(Timeline timeline) {
        if (this.clippingError != null) {
            return;
        }
        refreshClippedTimeline(timeline);
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        v.checkState(this.mediaPeriods.remove(mediaPeriod));
        this.mediaSource.releasePeriod(((ClippingMediaPeriod) mediaPeriod).mediaPeriod);
        if (!this.mediaPeriods.isEmpty() || this.allowDynamicClippingUpdates) {
            return;
        }
        refreshClippedTimeline(((ClippingTimeline) v.checkNotNull(this.clippingTimeline)).timeline);
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    public void releaseSourceInternal() {
        super.releaseSourceInternal();
        this.clippingError = null;
        this.clippingTimeline = null;
    }

    @Deprecated
    public ClippingMediaSource(MediaSource mediaSource, long j7, long j8) {
        this(new Builder(mediaSource).setStartPositionUs(j7).setEndPositionUs(j8));
    }

    @Deprecated
    public ClippingMediaSource(MediaSource mediaSource, long j7) {
        this(new Builder(mediaSource).setEndPositionUs(j7).setRelativeToDefaultPosition(true));
    }

    @Deprecated
    public ClippingMediaSource(MediaSource mediaSource, long j7, long j8, boolean z6, boolean z7, boolean z8) {
        this(new Builder(mediaSource).setStartPositionUs(j7).setEndPositionUs(j8).setEnableInitialDiscontinuity(z6).setAllowDynamicClippingUpdates(z7).setRelativeToDefaultPosition(z8));
    }

    private ClippingMediaSource(Builder builder) {
        super(builder.mediaSource);
        this.startUs = builder.startPositionUs;
        this.endUs = builder.endPositionUs;
        this.enableInitialDiscontinuity = builder.enableInitialDiscontinuity;
        this.allowDynamicClippingUpdates = builder.allowDynamicClippingUpdates;
        this.relativeToDefaultPosition = builder.relativeToDefaultPosition;
        this.allowUnseekableMedia = builder.allowUnseekableMedia;
        this.mediaPeriods = new ArrayList<>();
        this.window = new Timeline.Window();
    }
}
