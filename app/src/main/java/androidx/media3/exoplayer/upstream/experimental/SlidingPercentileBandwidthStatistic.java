package androidx.media3.exoplayer.upstream.experimental;

import P3.v;
import androidx.media3.common.util.UnstableApi;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.TreeSet;

@UnstableApi
/* loaded from: classes.dex */
public class SlidingPercentileBandwidthStatistic implements BandwidthStatistic {
    public static final int DEFAULT_MAX_SAMPLES_COUNT = 10;
    public static final double DEFAULT_PERCENTILE = 0.5d;
    private long bitrateEstimate;
    private final int maxSampleCount;
    private final double percentile;
    private final ArrayDeque<Sample> samples;
    private final TreeSet<Sample> sortedSamples;
    private double weightSum;

    public static class Sample implements Comparable<Sample> {
        private final long bitrate;
        private final double weight;

        public Sample(long j7, double d7) {
            this.bitrate = j7;
            this.weight = d7;
        }

        @Override // java.lang.Comparable
        public int compareTo(Sample sample) {
            return Long.compare(this.bitrate, sample.bitrate);
        }
    }

    public SlidingPercentileBandwidthStatistic() {
        this(10, 0.5d);
    }

    private long calculateBitrateEstimate() {
        if (this.samples.isEmpty()) {
            return Long.MIN_VALUE;
        }
        double d7 = this.weightSum * this.percentile;
        Iterator<Sample> it = this.sortedSamples.iterator();
        double d8 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        long j7 = 0;
        double d9 = 0.0d;
        while (it.hasNext()) {
            Sample next = it.next();
            double d10 = d8 + (next.weight / 2.0d);
            if (d10 >= d7) {
                if (j7 == 0) {
                    return next.bitrate;
                }
                return j7 + ((long) (((d7 - d9) * (next.bitrate - j7)) / (d10 - d9)));
            }
            j7 = next.bitrate;
            d9 = d10;
            d8 = (next.weight / 2.0d) + d10;
        }
        return j7;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthStatistic
    public void addSample(long j7, long j8) {
        while (this.samples.size() >= this.maxSampleCount) {
            Sample remove = this.samples.remove();
            this.sortedSamples.remove(remove);
            this.weightSum -= remove.weight;
        }
        double sqrt = Math.sqrt(j7);
        Sample sample = new Sample((j7 * 8000000) / j8, sqrt);
        this.samples.add(sample);
        this.sortedSamples.add(sample);
        this.weightSum += sqrt;
        this.bitrateEstimate = calculateBitrateEstimate();
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthStatistic
    public long getBandwidthEstimate() {
        return this.bitrateEstimate;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthStatistic
    public void reset() {
        this.samples.clear();
        this.sortedSamples.clear();
        this.weightSum = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        this.bitrateEstimate = Long.MIN_VALUE;
    }

    public SlidingPercentileBandwidthStatistic(int i2, double d7) {
        v.checkArgument(d7 >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE && d7 <= 1.0d);
        this.maxSampleCount = i2;
        this.percentile = d7;
        this.samples = new ArrayDeque<>();
        this.sortedSamples = new TreeSet<>();
        this.bitrateEstimate = Long.MIN_VALUE;
    }
}
