package androidx.media3.exoplayer;

import android.os.SystemClock;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

@UnstableApi
/* loaded from: classes.dex */
public final class DefaultLivePlaybackSpeedControl implements LivePlaybackSpeedControl {
    public static final float DEFAULT_FALLBACK_MAX_PLAYBACK_SPEED = 1.03f;
    public static final float DEFAULT_FALLBACK_MIN_PLAYBACK_SPEED = 0.97f;
    public static final long DEFAULT_MAX_LIVE_OFFSET_ERROR_MS_FOR_UNIT_SPEED = 20;
    public static final float DEFAULT_MIN_POSSIBLE_LIVE_OFFSET_SMOOTHING_FACTOR = 0.999f;
    public static final long DEFAULT_MIN_UPDATE_INTERVAL_MS = 1000;
    public static final float DEFAULT_PROPORTIONAL_CONTROL_FACTOR = 0.1f;
    public static final long DEFAULT_TARGET_LIVE_OFFSET_INCREMENT_ON_REBUFFER_MS = 500;
    private float adjustedPlaybackSpeed;
    private long currentTargetLiveOffsetUs;
    private final float fallbackMaxPlaybackSpeed;
    private final float fallbackMinPlaybackSpeed;
    private long idealTargetLiveOffsetUs;
    private long lastPlaybackSpeedUpdateMs;
    private final long maxLiveOffsetErrorUsForUnitSpeed;
    private float maxPlaybackSpeed;
    private long maxTargetLiveOffsetUs;
    private long mediaConfigurationTargetLiveOffsetUs;
    private float minPlaybackSpeed;
    private final float minPossibleLiveOffsetSmoothingFactor;
    private long minTargetLiveOffsetUs;
    private final long minUpdateIntervalMs;
    private final float proportionalControlFactor;
    private long smoothedMinPossibleLiveOffsetDeviationUs;
    private long smoothedMinPossibleLiveOffsetUs;
    private long targetLiveOffsetOverrideUs;
    private final long targetLiveOffsetRebufferDeltaUs;

    public static final class Builder {
        private float fallbackMinPlaybackSpeed = 0.97f;
        private float fallbackMaxPlaybackSpeed = 1.03f;
        private long minUpdateIntervalMs = 1000;
        private float proportionalControlFactorUs = 1.0E-7f;
        private long maxLiveOffsetErrorUsForUnitSpeed = Util.msToUs(20);
        private long targetLiveOffsetIncrementOnRebufferUs = Util.msToUs(500);
        private float minPossibleLiveOffsetSmoothingFactor = 0.999f;

        public DefaultLivePlaybackSpeedControl build() {
            return new DefaultLivePlaybackSpeedControl(this.fallbackMinPlaybackSpeed, this.fallbackMaxPlaybackSpeed, this.minUpdateIntervalMs, this.proportionalControlFactorUs, this.maxLiveOffsetErrorUsForUnitSpeed, this.targetLiveOffsetIncrementOnRebufferUs, this.minPossibleLiveOffsetSmoothingFactor);
        }

        public Builder setFallbackMaxPlaybackSpeed(float f3) {
            P3.v.checkArgument(f3 >= 1.0f);
            this.fallbackMaxPlaybackSpeed = f3;
            return this;
        }

        public Builder setFallbackMinPlaybackSpeed(float f3) {
            P3.v.checkArgument(0.0f < f3 && f3 <= 1.0f);
            this.fallbackMinPlaybackSpeed = f3;
            return this;
        }

        public Builder setMaxLiveOffsetErrorMsForUnitSpeed(long j7) {
            P3.v.checkArgument(j7 > 0);
            this.maxLiveOffsetErrorUsForUnitSpeed = Util.msToUs(j7);
            return this;
        }

        public Builder setMinPossibleLiveOffsetSmoothingFactor(float f3) {
            P3.v.checkArgument(f3 >= 0.0f && f3 < 1.0f);
            this.minPossibleLiveOffsetSmoothingFactor = f3;
            return this;
        }

        public Builder setMinUpdateIntervalMs(long j7) {
            P3.v.checkArgument(j7 > 0);
            this.minUpdateIntervalMs = j7;
            return this;
        }

        public Builder setProportionalControlFactor(float f3) {
            P3.v.checkArgument(f3 > 0.0f);
            this.proportionalControlFactorUs = f3 / 1000000.0f;
            return this;
        }

        public Builder setTargetLiveOffsetIncrementOnRebufferMs(long j7) {
            P3.v.checkArgument(j7 >= 0);
            this.targetLiveOffsetIncrementOnRebufferUs = Util.msToUs(j7);
            return this;
        }
    }

    private void adjustTargetLiveOffsetUs(long j7) {
        long j8 = (this.smoothedMinPossibleLiveOffsetDeviationUs * 3) + this.smoothedMinPossibleLiveOffsetUs;
        if (this.currentTargetLiveOffsetUs > j8) {
            float msToUs = Util.msToUs(this.minUpdateIntervalMs);
            this.currentTargetLiveOffsetUs = U3.f.max(j8, this.idealTargetLiveOffsetUs, this.currentTargetLiveOffsetUs - (((long) ((this.adjustedPlaybackSpeed - 1.0f) * msToUs)) + ((long) ((this.maxPlaybackSpeed - 1.0f) * msToUs))));
            return;
        }
        long constrainValue = Util.constrainValue(j7 - ((long) (Math.max(0.0f, this.adjustedPlaybackSpeed - 1.0f) / this.proportionalControlFactor)), this.currentTargetLiveOffsetUs, j8);
        this.currentTargetLiveOffsetUs = constrainValue;
        long j9 = this.maxTargetLiveOffsetUs;
        if (j9 == androidx.media3.common.C.TIME_UNSET || constrainValue <= j9) {
            return;
        }
        this.currentTargetLiveOffsetUs = j9;
    }

    private void maybeResetTargetLiveOffsetUs() {
        long j7;
        long j8 = this.mediaConfigurationTargetLiveOffsetUs;
        if (j8 != androidx.media3.common.C.TIME_UNSET) {
            j7 = this.targetLiveOffsetOverrideUs;
            if (j7 == androidx.media3.common.C.TIME_UNSET) {
                long j9 = this.minTargetLiveOffsetUs;
                if (j9 != androidx.media3.common.C.TIME_UNSET && j8 < j9) {
                    j8 = j9;
                }
                j7 = this.maxTargetLiveOffsetUs;
                if (j7 == androidx.media3.common.C.TIME_UNSET || j8 <= j7) {
                    j7 = j8;
                }
            }
        } else {
            j7 = -9223372036854775807L;
        }
        if (this.idealTargetLiveOffsetUs == j7) {
            return;
        }
        this.idealTargetLiveOffsetUs = j7;
        this.currentTargetLiveOffsetUs = j7;
        this.smoothedMinPossibleLiveOffsetUs = androidx.media3.common.C.TIME_UNSET;
        this.smoothedMinPossibleLiveOffsetDeviationUs = androidx.media3.common.C.TIME_UNSET;
        this.lastPlaybackSpeedUpdateMs = androidx.media3.common.C.TIME_UNSET;
    }

    private static long smooth(long j7, long j8, float f3) {
        return (long) (((1.0f - f3) * j8) + (j7 * f3));
    }

    private void updateSmoothedMinPossibleLiveOffsetUs(long j7, long j8) {
        long j9 = j7 - j8;
        long j10 = this.smoothedMinPossibleLiveOffsetUs;
        if (j10 == androidx.media3.common.C.TIME_UNSET) {
            this.smoothedMinPossibleLiveOffsetUs = j9;
            this.smoothedMinPossibleLiveOffsetDeviationUs = 0L;
        } else {
            long max = Math.max(j9, smooth(j10, j9, this.minPossibleLiveOffsetSmoothingFactor));
            this.smoothedMinPossibleLiveOffsetUs = max;
            this.smoothedMinPossibleLiveOffsetDeviationUs = smooth(this.smoothedMinPossibleLiveOffsetDeviationUs, Math.abs(j9 - max), this.minPossibleLiveOffsetSmoothingFactor);
        }
    }

    @Override // androidx.media3.exoplayer.LivePlaybackSpeedControl
    public float getAdjustedPlaybackSpeed(long j7, long j8) {
        if (this.mediaConfigurationTargetLiveOffsetUs == androidx.media3.common.C.TIME_UNSET) {
            return 1.0f;
        }
        updateSmoothedMinPossibleLiveOffsetUs(j7, j8);
        if (this.lastPlaybackSpeedUpdateMs != androidx.media3.common.C.TIME_UNSET && SystemClock.elapsedRealtime() - this.lastPlaybackSpeedUpdateMs < this.minUpdateIntervalMs) {
            return this.adjustedPlaybackSpeed;
        }
        this.lastPlaybackSpeedUpdateMs = SystemClock.elapsedRealtime();
        adjustTargetLiveOffsetUs(j7);
        long j9 = j7 - this.currentTargetLiveOffsetUs;
        if (Math.abs(j9) < this.maxLiveOffsetErrorUsForUnitSpeed) {
            this.adjustedPlaybackSpeed = 1.0f;
        } else {
            this.adjustedPlaybackSpeed = Util.constrainValue((this.proportionalControlFactor * j9) + 1.0f, this.minPlaybackSpeed, this.maxPlaybackSpeed);
        }
        return this.adjustedPlaybackSpeed;
    }

    @Override // androidx.media3.exoplayer.LivePlaybackSpeedControl
    public long getTargetLiveOffsetUs() {
        return this.currentTargetLiveOffsetUs;
    }

    @Override // androidx.media3.exoplayer.LivePlaybackSpeedControl
    public void notifyRebuffer() {
        long j7 = this.currentTargetLiveOffsetUs;
        if (j7 == androidx.media3.common.C.TIME_UNSET) {
            return;
        }
        long j8 = j7 + this.targetLiveOffsetRebufferDeltaUs;
        this.currentTargetLiveOffsetUs = j8;
        long j9 = this.maxTargetLiveOffsetUs;
        if (j9 != androidx.media3.common.C.TIME_UNSET && j8 > j9) {
            this.currentTargetLiveOffsetUs = j9;
        }
        this.lastPlaybackSpeedUpdateMs = androidx.media3.common.C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.LivePlaybackSpeedControl
    public void setLiveConfiguration(MediaItem.LiveConfiguration liveConfiguration) {
        this.mediaConfigurationTargetLiveOffsetUs = Util.msToUs(liveConfiguration.targetOffsetMs);
        this.minTargetLiveOffsetUs = Util.msToUs(liveConfiguration.minOffsetMs);
        this.maxTargetLiveOffsetUs = Util.msToUs(liveConfiguration.maxOffsetMs);
        float f3 = liveConfiguration.minPlaybackSpeed;
        if (f3 == -3.4028235E38f) {
            f3 = this.fallbackMinPlaybackSpeed;
        }
        this.minPlaybackSpeed = f3;
        float f7 = liveConfiguration.maxPlaybackSpeed;
        if (f7 == -3.4028235E38f) {
            f7 = this.fallbackMaxPlaybackSpeed;
        }
        this.maxPlaybackSpeed = f7;
        if (f3 == 1.0f && f7 == 1.0f) {
            this.mediaConfigurationTargetLiveOffsetUs = androidx.media3.common.C.TIME_UNSET;
        }
        maybeResetTargetLiveOffsetUs();
    }

    @Override // androidx.media3.exoplayer.LivePlaybackSpeedControl
    public void setTargetLiveOffsetOverrideUs(long j7) {
        this.targetLiveOffsetOverrideUs = j7;
        maybeResetTargetLiveOffsetUs();
    }

    private DefaultLivePlaybackSpeedControl(float f3, float f7, long j7, float f8, long j8, long j9, float f9) {
        this.fallbackMinPlaybackSpeed = f3;
        this.fallbackMaxPlaybackSpeed = f7;
        this.minUpdateIntervalMs = j7;
        this.proportionalControlFactor = f8;
        this.maxLiveOffsetErrorUsForUnitSpeed = j8;
        this.targetLiveOffsetRebufferDeltaUs = j9;
        this.minPossibleLiveOffsetSmoothingFactor = f9;
        this.mediaConfigurationTargetLiveOffsetUs = androidx.media3.common.C.TIME_UNSET;
        this.targetLiveOffsetOverrideUs = androidx.media3.common.C.TIME_UNSET;
        this.minTargetLiveOffsetUs = androidx.media3.common.C.TIME_UNSET;
        this.maxTargetLiveOffsetUs = androidx.media3.common.C.TIME_UNSET;
        this.minPlaybackSpeed = f3;
        this.maxPlaybackSpeed = f7;
        this.adjustedPlaybackSpeed = 1.0f;
        this.lastPlaybackSpeedUpdateMs = androidx.media3.common.C.TIME_UNSET;
        this.idealTargetLiveOffsetUs = androidx.media3.common.C.TIME_UNSET;
        this.currentTargetLiveOffsetUs = androidx.media3.common.C.TIME_UNSET;
        this.smoothedMinPossibleLiveOffsetUs = androidx.media3.common.C.TIME_UNSET;
        this.smoothedMinPossibleLiveOffsetDeviationUs = androidx.media3.common.C.TIME_UNSET;
    }
}
