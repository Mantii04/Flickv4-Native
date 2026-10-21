package androidx.media3.exoplayer.upstream.experimental;

import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public class ExponentialWeightedAverageStatistic implements BandwidthStatistic {
    public static final double DEFAULT_SMOOTHING_FACTOR = 0.9999d;
    private long bitrateEstimate;
    private final double smoothingFactor;

    public ExponentialWeightedAverageStatistic() {
        this(0.9999d);
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthStatistic
    public void addSample(long j7, long j8) {
        long j9 = (8000000 * j7) / j8;
        if (this.bitrateEstimate == Long.MIN_VALUE) {
            this.bitrateEstimate = j9;
            return;
        }
        double pow = Math.pow(this.smoothingFactor, Math.sqrt(j7));
        this.bitrateEstimate = (long) (((1.0d - pow) * j9) + (this.bitrateEstimate * pow));
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthStatistic
    public long getBandwidthEstimate() {
        return this.bitrateEstimate;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthStatistic
    public void reset() {
        this.bitrateEstimate = Long.MIN_VALUE;
    }

    public ExponentialWeightedAverageStatistic(double d7) {
        this.smoothingFactor = d7;
        this.bitrateEstimate = Long.MIN_VALUE;
    }
}
