package androidx.media3.exoplayer.audio;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.media3.common.C;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.audio.AudioTrackPositionTracker;

/* loaded from: classes.dex */
final class AudioTimestampPoller {
    private static final int ERROR_POLL_INTERVAL_US = 500000;
    private static final int FAST_POLL_INTERVAL_US = 10000;
    private static final int INITIALIZING_DURATION_US = 500000;
    private static final long MAX_AUDIO_TIMESTAMP_OFFSET_US = 5000000;
    private static final long MAX_POSITION_DRIFT_ADVANCING_TIMESTAMP_US = 1000;
    private static final int SLOW_POLL_INTERVAL_US = 10000000;
    private static final int STATE_ERROR = 4;
    private static final int STATE_INITIALIZING = 0;
    private static final int STATE_NO_TIMESTAMP = 3;
    private static final int STATE_TIMESTAMP = 1;
    private static final int STATE_TIMESTAMP_ADVANCING = 2;
    private static final int WAIT_FOR_ADVANCE_DURATION_US = 2000000;
    private final AudioTimestampWrapper audioTimestamp;
    private final AudioTrackPositionTracker.Listener errorListener;
    private long initialTimestampPositionFrames;
    private long initialTimestampSystemTimeUs;
    private long initializeSystemTimeUs;
    private long lastTimestampSampleTimeUs;
    private long sampleIntervalUs;
    private final int sampleRate;
    private int state;

    public static final class AudioTimestampWrapper {
        private long accumulatedRawTimestampFramePosition;
        private final AudioTimestamp audioTimestamp = new AudioTimestamp();
        private final AudioTrack audioTrack;
        private boolean expectTimestampFramePositionReset;
        private long lastTimestampPositionFrames;
        private long lastTimestampRawPositionFrames;
        private long rawTimestampFramePositionWrapCount;

        public AudioTimestampWrapper(AudioTrack audioTrack) {
            this.audioTrack = audioTrack;
        }

        public void expectTimestampFramePositionReset() {
            this.expectTimestampFramePositionReset = true;
        }

        public long getTimestampPositionFrames() {
            return this.lastTimestampPositionFrames;
        }

        public long getTimestampSystemTimeUs() {
            return this.audioTimestamp.nanoTime / 1000;
        }

        public boolean maybeUpdateTimestamp() {
            boolean timestamp = this.audioTrack.getTimestamp(this.audioTimestamp);
            if (timestamp) {
                long j7 = this.audioTimestamp.framePosition;
                long j8 = this.lastTimestampRawPositionFrames;
                if (j8 > j7) {
                    if (this.expectTimestampFramePositionReset) {
                        this.accumulatedRawTimestampFramePosition += j8;
                        this.expectTimestampFramePositionReset = false;
                    } else {
                        this.rawTimestampFramePositionWrapCount++;
                    }
                }
                this.lastTimestampRawPositionFrames = j7;
                this.lastTimestampPositionFrames = j7 + this.accumulatedRawTimestampFramePosition + (this.rawTimestampFramePositionWrapCount << 32);
            }
            return timestamp;
        }
    }

    public AudioTimestampPoller(AudioTrack audioTrack, AudioTrackPositionTracker.Listener listener) {
        this.audioTimestamp = new AudioTimestampWrapper(audioTrack);
        this.sampleRate = audioTrack.getSampleRate();
        this.errorListener = listener;
        reset();
    }

    private void checkTimestampIsPlausibleAndUpdateErrorState(long j7, float f3, long j8) {
        long timestampSystemTimeUs = this.audioTimestamp.getTimestampSystemTimeUs();
        long computeTimestampPositionUs = computeTimestampPositionUs(j7, f3);
        if (Math.abs(timestampSystemTimeUs - j7) > 5000000) {
            this.errorListener.onSystemTimeUsMismatch(this.audioTimestamp.getTimestampPositionFrames(), timestampSystemTimeUs, j7, j8);
            updateState(4);
        } else if (Math.abs(computeTimestampPositionUs - j8) > 5000000) {
            this.errorListener.onPositionFramesMismatch(this.audioTimestamp.getTimestampPositionFrames(), timestampSystemTimeUs, j7, j8);
            updateState(4);
        } else if (this.state == 4) {
            reset();
        }
    }

    private long computeTimestampPositionUs(long j7, float f3) {
        return computeTimestampPositionUs(this.audioTimestamp.getTimestampPositionFrames(), this.audioTimestamp.getTimestampSystemTimeUs(), j7, f3);
    }

    private boolean isTimestampAdvancingFromInitialTimestamp(long j7, float f3) {
        long timestampPositionFrames = this.audioTimestamp.getTimestampPositionFrames();
        long j8 = this.initialTimestampPositionFrames;
        if (timestampPositionFrames <= j8) {
            return false;
        }
        return Math.abs(computeTimestampPositionUs(j7, f3) - computeTimestampPositionUs(j8, this.initialTimestampSystemTimeUs, j7, f3)) < 1000;
    }

    private void updateState(int i2) {
        this.state = i2;
        if (i2 == 0) {
            this.lastTimestampSampleTimeUs = 0L;
            this.initialTimestampPositionFrames = -1L;
            this.initialTimestampSystemTimeUs = C.TIME_UNSET;
            this.initializeSystemTimeUs = System.nanoTime() / 1000;
            this.sampleIntervalUs = Renderer.DEFAULT_DURATION_TO_PROGRESS_US;
            return;
        }
        if (i2 == 1) {
            this.sampleIntervalUs = Renderer.DEFAULT_DURATION_TO_PROGRESS_US;
            return;
        }
        if (i2 == 2 || i2 == 3) {
            this.sampleIntervalUs = 10000000L;
        } else {
            if (i2 != 4) {
                throw new IllegalStateException();
            }
            this.sampleIntervalUs = 500000L;
        }
    }

    public void expectTimestampFramePositionReset() {
        this.audioTimestamp.expectTimestampFramePositionReset();
    }

    public long getTimestampPositionUs(long j7, float f3) {
        return computeTimestampPositionUs(j7, f3);
    }

    public boolean hasAdvancingTimestamp() {
        return this.state == 2;
    }

    public boolean isWaitingForAdvancingTimestamp() {
        int i2 = this.state;
        return i2 == 0 || i2 == 1;
    }

    public void maybePollTimestamp(long j7, float f3, long j8, boolean z6) {
        if (z6 || j7 - this.lastTimestampSampleTimeUs >= this.sampleIntervalUs) {
            this.lastTimestampSampleTimeUs = j7;
            boolean maybeUpdateTimestamp = this.audioTimestamp.maybeUpdateTimestamp();
            if (maybeUpdateTimestamp) {
                checkTimestampIsPlausibleAndUpdateErrorState(j7, f3, j8);
            }
            int i2 = this.state;
            if (i2 == 0) {
                if (!maybeUpdateTimestamp) {
                    if (j7 - this.initializeSystemTimeUs > 500000) {
                        updateState(3);
                        return;
                    }
                    return;
                } else {
                    if (this.audioTimestamp.getTimestampSystemTimeUs() >= this.initializeSystemTimeUs) {
                        this.initialTimestampPositionFrames = this.audioTimestamp.getTimestampPositionFrames();
                        this.initialTimestampSystemTimeUs = this.audioTimestamp.getTimestampSystemTimeUs();
                        updateState(1);
                        return;
                    }
                    return;
                }
            }
            if (i2 == 1) {
                if (!maybeUpdateTimestamp) {
                    reset();
                    return;
                }
                if (isTimestampAdvancingFromInitialTimestamp(j7, f3)) {
                    updateState(2);
                    return;
                } else if (j7 - this.initializeSystemTimeUs > SilenceSkippingAudioProcessor.DEFAULT_MAX_SILENCE_TO_KEEP_DURATION_US) {
                    updateState(3);
                    return;
                } else {
                    this.initialTimestampPositionFrames = this.audioTimestamp.getTimestampPositionFrames();
                    this.initialTimestampSystemTimeUs = this.audioTimestamp.getTimestampSystemTimeUs();
                    return;
                }
            }
            if (i2 == 2) {
                if (maybeUpdateTimestamp) {
                    return;
                }
                reset();
            } else if (i2 != 3) {
                if (i2 != 4) {
                    throw new IllegalStateException();
                }
            } else if (maybeUpdateTimestamp) {
                reset();
            }
        }
    }

    public void reset() {
        updateState(0);
    }

    private long computeTimestampPositionUs(long j7, long j8, long j9, float f3) {
        return Util.getMediaDurationForPlayoutDuration(j9 - j8, f3) + Util.sampleCountToDurationUs(j7, this.sampleRate);
    }
}
