package androidx.media3.exoplayer.audio;

import android.media.AudioTrack;
import android.os.Build;
import androidx.media3.common.C;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Util;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
final class AudioTrackPositionTracker {
    private static final long FORCE_RESET_WORKAROUND_TIMEOUT_MS = 200;
    private static final long MAX_LATENCY_US = 10000000;
    private static final int MAX_PLAYHEAD_OFFSET_COUNT = 10;
    private static final long MAX_POSITION_DRIFT_FOR_SMOOTHING_US = 1000000;
    private static final int MAX_POSITION_SMOOTHING_SPEED_CHANGE_PERCENT = 10;
    private static final int MIN_LATENCY_SAMPLE_INTERVAL_US = 500000;
    private static final int MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US = 30000;
    private static final long RAW_PLAYBACK_HEAD_POSITION_UPDATE_INTERVAL_MS = 5;
    private AudioTimestampPoller audioTimestampPoller;
    private final AudioTrack audioTrack;
    private float audioTrackPlaybackSpeed;
    private final long bufferSizeUs;
    private final Clock clock;
    private long endPlaybackHeadPosition;
    private boolean expectRawPlaybackHeadReset;
    private long forceResetWorkaroundTimeMs;
    private Method getLatencyMethod;
    private final boolean isOutputPcm;
    private long lastLatencySampleTimeUs;
    private long lastPlayheadSampleTimeUs;
    private long lastPositionUs;
    private long lastRawPlaybackHeadPositionSampleTimeMs;
    private long lastSystemTimeUs;
    private long latencyUs;
    private final Listener listener;
    private int nextPlayheadOffsetIndex;
    private long onPositionAdvancingFromPositionUs;
    private final int outputSampleRate;
    private int playheadOffsetCount;
    private final long[] playheadOffsets;
    private long rawPlaybackHeadPosition;
    private long rawPlaybackHeadWrapCount;
    private long smoothedPlayheadOffsetUs;
    private long stopPlaybackHeadPosition;
    private long stopTimestampUs;
    private long sumRawPlaybackHeadPosition;

    public interface Listener {
        void onInvalidLatency(long j7);

        void onPositionAdvancing(long j7);

        void onPositionFramesMismatch(long j7, long j8, long j9, long j10);

        void onSystemTimeUsMismatch(long j7, long j8, long j9, long j10);
    }

    public AudioTrackPositionTracker(Listener listener, Clock clock, AudioTrack audioTrack, int i2, int i7, int i8) {
        this.listener = (Listener) P3.v.checkNotNull(listener);
        this.clock = clock;
        this.audioTrack = audioTrack;
        try {
            this.getLatencyMethod = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.playheadOffsets = new long[10];
        this.lastSystemTimeUs = C.TIME_UNSET;
        this.lastPositionUs = C.TIME_UNSET;
        this.audioTimestampPoller = new AudioTimestampPoller(audioTrack, listener);
        int sampleRate = audioTrack.getSampleRate();
        this.outputSampleRate = sampleRate;
        boolean isEncodingLinearPcm = Util.isEncodingLinearPcm(i2);
        this.isOutputPcm = isEncodingLinearPcm;
        this.bufferSizeUs = isEncodingLinearPcm ? Util.sampleCountToDurationUs(i8 / i7, sampleRate) : -9223372036854775807L;
        this.rawPlaybackHeadPosition = 0L;
        this.rawPlaybackHeadWrapCount = 0L;
        this.expectRawPlaybackHeadReset = false;
        this.sumRawPlaybackHeadPosition = 0L;
        this.stopTimestampUs = C.TIME_UNSET;
        this.forceResetWorkaroundTimeMs = C.TIME_UNSET;
        this.lastLatencySampleTimeUs = 0L;
        this.latencyUs = 0L;
        this.audioTrackPlaybackSpeed = 1.0f;
        this.onPositionAdvancingFromPositionUs = C.TIME_UNSET;
    }

    private long getPlaybackHeadPosition() {
        if (this.stopTimestampUs != C.TIME_UNSET) {
            return Math.min(this.endPlaybackHeadPosition, getSimulatedPlaybackHeadPositionAfterStop());
        }
        long elapsedRealtime = this.clock.elapsedRealtime();
        if (elapsedRealtime - this.lastRawPlaybackHeadPositionSampleTimeMs >= 5) {
            updateRawPlaybackHeadPosition(elapsedRealtime);
            this.lastRawPlaybackHeadPositionSampleTimeMs = elapsedRealtime;
        }
        return this.rawPlaybackHeadPosition + this.sumRawPlaybackHeadPosition + (this.rawPlaybackHeadWrapCount << 32);
    }

    private long getPlaybackHeadPositionEstimateUs(long j7) {
        long max = Math.max(0L, (this.playheadOffsetCount == 0 ? this.stopTimestampUs != C.TIME_UNSET ? Util.sampleCountToDurationUs(getSimulatedPlaybackHeadPositionAfterStop(), this.outputSampleRate) : getPlaybackHeadPositionUs() : Util.getMediaDurationForPlayoutDuration(j7 + this.smoothedPlayheadOffsetUs, this.audioTrackPlaybackSpeed)) - this.latencyUs);
        return this.stopTimestampUs != C.TIME_UNSET ? Math.min(Util.sampleCountToDurationUs(this.endPlaybackHeadPosition, this.outputSampleRate), max) : max;
    }

    private long getPlaybackHeadPositionUs() {
        return Util.sampleCountToDurationUs(getPlaybackHeadPosition(), this.outputSampleRate);
    }

    private long getSimulatedPlaybackHeadPositionAfterStop() {
        if (((AudioTrack) P3.v.checkNotNull(this.audioTrack)).getPlayState() == 2) {
            return this.stopPlaybackHeadPosition;
        }
        return this.stopPlaybackHeadPosition + Util.durationUsToSampleCount(Util.getMediaDurationForPlayoutDuration(Util.msToUs(this.clock.elapsedRealtime()) - this.stopTimestampUs, this.audioTrackPlaybackSpeed), this.outputSampleRate);
    }

    private void maybeSampleSyncParams() {
        long nanoTime = this.clock.nanoTime() / 1000;
        if (nanoTime - this.lastPlayheadSampleTimeUs >= 30000) {
            long playbackHeadPositionUs = getPlaybackHeadPositionUs();
            if (playbackHeadPositionUs != 0) {
                this.playheadOffsets[this.nextPlayheadOffsetIndex] = Util.getPlayoutDurationForMediaDuration(playbackHeadPositionUs, this.audioTrackPlaybackSpeed) - nanoTime;
                this.nextPlayheadOffsetIndex = (this.nextPlayheadOffsetIndex + 1) % 10;
                int i2 = this.playheadOffsetCount;
                if (i2 < 10) {
                    this.playheadOffsetCount = i2 + 1;
                }
                this.lastPlayheadSampleTimeUs = nanoTime;
                this.smoothedPlayheadOffsetUs = 0L;
                int i7 = 0;
                while (true) {
                    int i8 = this.playheadOffsetCount;
                    if (i7 >= i8) {
                        break;
                    }
                    this.smoothedPlayheadOffsetUs = (this.playheadOffsets[i7] / i8) + this.smoothedPlayheadOffsetUs;
                    i7++;
                }
            } else {
                return;
            }
        }
        this.audioTimestampPoller.maybePollTimestamp(nanoTime, this.audioTrackPlaybackSpeed, getPlaybackHeadPositionEstimateUs(nanoTime), maybeUpdateLatency(nanoTime));
    }

    private void maybeTriggerOnPositionAdvancingCallback(long j7) {
        long j8 = this.onPositionAdvancingFromPositionUs;
        if (j8 == C.TIME_UNSET || j7 < j8) {
            return;
        }
        long currentTimeMillis = this.clock.currentTimeMillis() - Util.usToMs(Util.getPlayoutDurationForMediaDuration(j7 - j8, this.audioTrackPlaybackSpeed));
        this.onPositionAdvancingFromPositionUs = C.TIME_UNSET;
        this.listener.onPositionAdvancing(currentTimeMillis);
    }

    private boolean maybeUpdateLatency(long j7) {
        Method method;
        long j8 = this.latencyUs;
        if (this.isOutputPcm && (method = this.getLatencyMethod) != null && j7 - this.lastLatencySampleTimeUs >= 500000) {
            try {
                long intValue = (((Integer) Util.castNonNull((Integer) method.invoke(P3.v.checkNotNull(this.audioTrack), new Object[0]))).intValue() * 1000) - this.bufferSizeUs;
                this.latencyUs = intValue;
                long max = Math.max(intValue, 0L);
                this.latencyUs = max;
                if (max > MAX_LATENCY_US) {
                    this.listener.onInvalidLatency(max);
                    this.latencyUs = 0L;
                }
            } catch (Exception unused) {
                this.getLatencyMethod = null;
            }
            this.lastLatencySampleTimeUs = j7;
        }
        return j8 != this.latencyUs;
    }

    private void resetSyncParams() {
        this.smoothedPlayheadOffsetUs = 0L;
        this.playheadOffsetCount = 0;
        this.nextPlayheadOffsetIndex = 0;
        this.lastPlayheadSampleTimeUs = 0L;
        this.lastPositionUs = C.TIME_UNSET;
        this.lastSystemTimeUs = C.TIME_UNSET;
    }

    private void updateRawPlaybackHeadPosition(long j7) {
        int playState = ((AudioTrack) P3.v.checkNotNull(this.audioTrack)).getPlayState();
        if (playState == 1) {
            return;
        }
        long playbackHeadPosition = r0.getPlaybackHeadPosition() & 4294967295L;
        if (Build.VERSION.SDK_INT <= 29) {
            if (playbackHeadPosition == 0 && this.rawPlaybackHeadPosition > 0 && playState == 3) {
                if (this.forceResetWorkaroundTimeMs == C.TIME_UNSET) {
                    this.forceResetWorkaroundTimeMs = j7;
                    return;
                }
                return;
            }
            this.forceResetWorkaroundTimeMs = C.TIME_UNSET;
        }
        long j8 = this.rawPlaybackHeadPosition;
        if (j8 > playbackHeadPosition) {
            if (this.expectRawPlaybackHeadReset) {
                this.sumRawPlaybackHeadPosition += j8;
                this.expectRawPlaybackHeadReset = false;
            } else {
                this.rawPlaybackHeadWrapCount++;
            }
        }
        this.rawPlaybackHeadPosition = playbackHeadPosition;
    }

    public void expectRawPlaybackHeadReset() {
        this.expectRawPlaybackHeadReset = true;
        this.audioTimestampPoller.expectTimestampFramePositionReset();
    }

    public long getCurrentPositionUs() {
        AudioTrack audioTrack = (AudioTrack) P3.v.checkNotNull(this.audioTrack);
        if (audioTrack.getPlayState() == 3) {
            maybeSampleSyncParams();
        }
        long nanoTime = this.clock.nanoTime() / 1000;
        boolean hasAdvancingTimestamp = this.audioTimestampPoller.hasAdvancingTimestamp();
        long timestampPositionUs = hasAdvancingTimestamp ? this.audioTimestampPoller.getTimestampPositionUs(nanoTime, this.audioTrackPlaybackSpeed) : getPlaybackHeadPositionEstimateUs(nanoTime);
        int playState = audioTrack.getPlayState();
        if (playState != 3) {
            if (playState == 1) {
                maybeTriggerOnPositionAdvancingCallback(timestampPositionUs);
            }
            return timestampPositionUs;
        }
        if (hasAdvancingTimestamp || !this.audioTimestampPoller.isWaitingForAdvancingTimestamp()) {
            maybeTriggerOnPositionAdvancingCallback(timestampPositionUs);
        }
        long j7 = this.lastSystemTimeUs;
        if (j7 != C.TIME_UNSET) {
            long j8 = timestampPositionUs - this.lastPositionUs;
            long mediaDurationForPlayoutDuration = Util.getMediaDurationForPlayoutDuration(nanoTime - j7, this.audioTrackPlaybackSpeed);
            long j9 = this.lastPositionUs + mediaDurationForPlayoutDuration;
            long abs = Math.abs(j9 - timestampPositionUs);
            if (j8 != 0 && abs < 1000000) {
                long j10 = (mediaDurationForPlayoutDuration * 10) / 100;
                timestampPositionUs = Util.constrainValue(timestampPositionUs, j9 - j10, j9 + j10);
            }
        }
        this.lastSystemTimeUs = nanoTime;
        this.lastPositionUs = timestampPositionUs;
        return timestampPositionUs;
    }

    public void handleEndOfStream(long j7) {
        this.stopPlaybackHeadPosition = getPlaybackHeadPosition();
        this.stopTimestampUs = Util.msToUs(this.clock.elapsedRealtime());
        this.endPlaybackHeadPosition = j7;
    }

    public boolean isPlaying() {
        return ((AudioTrack) P3.v.checkNotNull(this.audioTrack)).getPlayState() == 3;
    }

    public boolean isStalled(long j7) {
        return this.forceResetWorkaroundTimeMs != C.TIME_UNSET && j7 > 0 && this.clock.elapsedRealtime() - this.forceResetWorkaroundTimeMs >= FORCE_RESET_WORKAROUND_TIMEOUT_MS;
    }

    public void pause() {
        resetSyncParams();
        if (this.stopTimestampUs == C.TIME_UNSET) {
            this.audioTimestampPoller.reset();
        }
        this.stopPlaybackHeadPosition = getPlaybackHeadPosition();
    }

    public void reset() {
        resetSyncParams();
        this.audioTimestampPoller = new AudioTimestampPoller(this.audioTrack, this.listener);
        this.rawPlaybackHeadPosition = 0L;
        this.rawPlaybackHeadWrapCount = 0L;
        this.expectRawPlaybackHeadReset = false;
        this.sumRawPlaybackHeadPosition = 0L;
        this.stopTimestampUs = C.TIME_UNSET;
        this.forceResetWorkaroundTimeMs = C.TIME_UNSET;
        this.lastLatencySampleTimeUs = 0L;
        this.latencyUs = 0L;
        this.audioTrackPlaybackSpeed = 1.0f;
        this.onPositionAdvancingFromPositionUs = C.TIME_UNSET;
    }

    public void setAudioTrackPlaybackSpeed(float f3) {
        this.audioTrackPlaybackSpeed = f3;
        this.audioTimestampPoller.reset();
        resetSyncParams();
    }

    public void start() {
        if (this.stopTimestampUs != C.TIME_UNSET) {
            this.stopTimestampUs = Util.msToUs(this.clock.elapsedRealtime());
        }
        this.onPositionAdvancingFromPositionUs = getPlaybackHeadPositionUs();
        this.audioTimestampPoller.reset();
    }
}
