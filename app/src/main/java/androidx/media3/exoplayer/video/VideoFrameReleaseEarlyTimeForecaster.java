package androidx.media3.exoplayer.video;

import P3.v;
import android.util.Range;
import androidx.media3.common.C;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

/* loaded from: classes.dex */
class VideoFrameReleaseEarlyTimeForecaster {
    private static final float SMOOTHING_FACTOR = 0.2f;
    private double derivativeOfEarlyTime;
    private Range<Double> derivativeOfEarlyTimeRange;
    private long lastFrameEarlyUs;
    private long lastFramePresentationTimeUs;

    public VideoFrameReleaseEarlyTimeForecaster(float f3) {
        v.checkArgument(f3 > 0.0f);
        Range<Double> range = new Range<>(Double.valueOf(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE), Double.valueOf(1.0d / f3));
        this.derivativeOfEarlyTimeRange = range;
        this.derivativeOfEarlyTime = range.getUpper().doubleValue();
        this.lastFramePresentationTimeUs = C.TIME_UNSET;
        this.lastFrameEarlyUs = C.TIME_UNSET;
    }

    private double calculateDerivativeFromLastFrame(long j7, long j8) {
        long j9 = this.lastFramePresentationTimeUs;
        if (j9 != C.TIME_UNSET) {
            if (this.lastFrameEarlyUs != C.TIME_UNSET && j7 != j9) {
                return (j8 - r4) / (j7 - j9);
            }
        }
        return this.derivativeOfEarlyTimeRange.getUpper().doubleValue();
    }

    private void updateDerivativeWithExponentialMovingAverage(double d7) {
        this.derivativeOfEarlyTime = (d7 * 0.20000000298023224d) + (this.derivativeOfEarlyTime * 0.800000011920929d);
    }

    public void onVideoFrameProcessed(long j7, long j8) {
        v.checkArgument(j7 != C.TIME_UNSET);
        v.checkArgument(j8 != C.TIME_UNSET);
        updateDerivativeWithExponentialMovingAverage(this.derivativeOfEarlyTimeRange.clamp(Double.valueOf(calculateDerivativeFromLastFrame(j7, j8))).doubleValue());
        this.lastFramePresentationTimeUs = j7;
        this.lastFrameEarlyUs = j8;
    }

    public long predictEarlyUs(long j7) {
        if (this.lastFramePresentationTimeUs == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        return (long) (((j7 - r0) * this.derivativeOfEarlyTime) + this.lastFrameEarlyUs);
    }

    public void reset() {
        this.derivativeOfEarlyTime = this.derivativeOfEarlyTimeRange.getUpper().doubleValue();
        this.lastFramePresentationTimeUs = C.TIME_UNSET;
        this.lastFrameEarlyUs = C.TIME_UNSET;
    }

    public void setPlaybackSpeed(float f3) {
        v.checkArgument(f3 > 0.0f);
        this.derivativeOfEarlyTimeRange = new Range<>(Double.valueOf(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE), Double.valueOf(1.0d / f3));
        reset();
    }
}
