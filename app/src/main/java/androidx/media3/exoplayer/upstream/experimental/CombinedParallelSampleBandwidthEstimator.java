package androidx.media3.exoplayer.upstream.experimental;

import P3.v;
import android.os.Handler;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.exoplayer.upstream.BandwidthMeter;

@UnstableApi
/* loaded from: classes.dex */
public class CombinedParallelSampleBandwidthEstimator implements BandwidthEstimator {
    private long bandwidthEstimate;
    private final BandwidthStatistic bandwidthStatistic;
    private final Clock clock;
    private final BandwidthMeter.EventListener.EventDispatcher eventDispatcher;
    private long lastReportedBandwidthEstimate;
    private final long minBytesTransferred;
    private final int minSamples;
    private long sampleBytesTransferred;
    private long sampleStartTimeMs;
    private int streamCount;
    private long totalBytesTransferred;
    private int totalSamplesAdded;

    public static class Builder {
        private BandwidthStatistic bandwidthStatistic = new SlidingWeightedAverageBandwidthStatistic();
        private Clock clock = Clock.DEFAULT;
        private long minBytesTransferred;
        private int minSamples;

        public CombinedParallelSampleBandwidthEstimator build() {
            return new CombinedParallelSampleBandwidthEstimator(this);
        }

        public Builder setBandwidthStatistic(BandwidthStatistic bandwidthStatistic) {
            v.checkNotNull(bandwidthStatistic);
            this.bandwidthStatistic = bandwidthStatistic;
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public Builder setMinBytesTransferred(long j7) {
            v.checkArgument(j7 >= 0);
            this.minBytesTransferred = j7;
            return this;
        }

        public Builder setMinSamples(int i2) {
            v.checkArgument(i2 >= 0);
            this.minSamples = i2;
            return this;
        }
    }

    private void maybeNotifyBandwidthSample(int i2, long j7, long j8) {
        if (j8 != Long.MIN_VALUE) {
            if (i2 == 0 && j7 == 0 && j8 == this.lastReportedBandwidthEstimate) {
                return;
            }
            this.lastReportedBandwidthEstimate = j8;
            this.eventDispatcher.bandwidthSample(i2, j7, j8);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void addEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
        this.eventDispatcher.addListener(handler, eventListener);
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public long getBandwidthEstimate() {
        return this.bandwidthEstimate;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void onBytesTransferred(DataSource dataSource, int i2) {
        long j7 = i2;
        this.sampleBytesTransferred += j7;
        this.totalBytesTransferred += j7;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void onNetworkTypeChange(long j7) {
        long elapsedRealtime = this.clock.elapsedRealtime();
        maybeNotifyBandwidthSample(this.streamCount > 0 ? (int) (elapsedRealtime - this.sampleStartTimeMs) : 0, this.sampleBytesTransferred, j7);
        this.bandwidthStatistic.reset();
        this.bandwidthEstimate = Long.MIN_VALUE;
        this.sampleStartTimeMs = elapsedRealtime;
        this.sampleBytesTransferred = 0L;
        this.totalSamplesAdded = 0;
        this.totalBytesTransferred = 0L;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void onTransferEnd(DataSource dataSource) {
        v.checkState(this.streamCount > 0);
        int i2 = this.streamCount - 1;
        this.streamCount = i2;
        if (i2 <= 0) {
            long elapsedRealtime = (int) (this.clock.elapsedRealtime() - this.sampleStartTimeMs);
            if (elapsedRealtime > 0) {
                this.bandwidthStatistic.addSample(this.sampleBytesTransferred, 1000 * elapsedRealtime);
                int i7 = this.totalSamplesAdded + 1;
                this.totalSamplesAdded = i7;
                if (i7 > this.minSamples && this.totalBytesTransferred > this.minBytesTransferred) {
                    this.bandwidthEstimate = this.bandwidthStatistic.getBandwidthEstimate();
                }
                maybeNotifyBandwidthSample((int) elapsedRealtime, this.sampleBytesTransferred, this.bandwidthEstimate);
                this.sampleBytesTransferred = 0L;
            }
        }
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void onTransferInitializing(DataSource dataSource) {
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void onTransferStart(DataSource dataSource) {
        if (this.streamCount == 0) {
            this.sampleStartTimeMs = this.clock.elapsedRealtime();
        }
        this.streamCount++;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void removeEventListener(BandwidthMeter.EventListener eventListener) {
        this.eventDispatcher.removeListener(eventListener);
    }

    private CombinedParallelSampleBandwidthEstimator(Builder builder) {
        this.bandwidthStatistic = builder.bandwidthStatistic;
        this.minSamples = builder.minSamples;
        this.minBytesTransferred = builder.minBytesTransferred;
        this.clock = builder.clock;
        this.eventDispatcher = new BandwidthMeter.EventListener.EventDispatcher();
        this.bandwidthEstimate = Long.MIN_VALUE;
        this.lastReportedBandwidthEstimate = Long.MIN_VALUE;
    }
}
