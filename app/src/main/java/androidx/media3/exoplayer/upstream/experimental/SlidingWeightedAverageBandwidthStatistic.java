package androidx.media3.exoplayer.upstream.experimental;

import a3.o;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.common.x;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayDeque;
import java.util.Deque;

@UnstableApi
/* loaded from: classes.dex */
public class SlidingWeightedAverageBandwidthStatistic implements BandwidthStatistic {
    public static final int DEFAULT_MAX_SAMPLES_COUNT = 10;
    private double bitrateWeightProductSum;
    private final Clock clock;
    private final SampleEvictionFunction sampleEvictionFunction;
    private final ArrayDeque<Sample> samples;
    private double weightSum;

    public static class Sample {
        public final long bitrate;
        public final long timeAddedMs;
        public final double weight;

        public Sample(long j7, double d7, long j8) {
            this.bitrate = j7;
            this.weight = d7;
            this.timeAddedMs = j8;
        }
    }

    public interface SampleEvictionFunction {
        boolean shouldEvictSample(Deque<Sample> deque);
    }

    public SlidingWeightedAverageBandwidthStatistic() {
        this(getMaxCountEvictionFunction(10L));
    }

    public static SampleEvictionFunction getAgeBasedEvictionFunction(long j7) {
        return getAgeBasedEvictionFunction(j7, Clock.DEFAULT);
    }

    public static SampleEvictionFunction getMaxCountEvictionFunction(long j7) {
        return new x(j7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getAgeBasedEvictionFunction$1(long j7, Clock clock, Deque deque) {
        return !deque.isEmpty() && ((Sample) Util.castNonNull((Sample) deque.peek())).timeAddedMs + j7 < clock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getMaxCountEvictionFunction$0(long j7, Deque deque) {
        return ((long) deque.size()) >= j7;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthStatistic
    public void addSample(long j7, long j8) {
        while (this.sampleEvictionFunction.shouldEvictSample(this.samples)) {
            Sample remove = this.samples.remove();
            double d7 = this.bitrateWeightProductSum;
            double d8 = remove.bitrate;
            double d9 = remove.weight;
            this.bitrateWeightProductSum = d7 - (d8 * d9);
            this.weightSum -= d9;
        }
        Sample sample = new Sample((j7 * 8000000) / j8, Math.sqrt(j7), this.clock.elapsedRealtime());
        this.samples.add(sample);
        double d10 = this.bitrateWeightProductSum;
        double d11 = sample.bitrate;
        double d12 = sample.weight;
        this.bitrateWeightProductSum = (d11 * d12) + d10;
        this.weightSum += d12;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthStatistic
    public long getBandwidthEstimate() {
        if (this.samples.isEmpty()) {
            return Long.MIN_VALUE;
        }
        return (long) (this.bitrateWeightProductSum / this.weightSum);
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthStatistic
    public void reset() {
        this.samples.clear();
        this.bitrateWeightProductSum = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        this.weightSum = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
    }

    public SlidingWeightedAverageBandwidthStatistic(SampleEvictionFunction sampleEvictionFunction) {
        this(sampleEvictionFunction, Clock.DEFAULT);
    }

    public static SampleEvictionFunction getAgeBasedEvictionFunction(long j7, Clock clock) {
        return new o(j7, clock);
    }

    public SlidingWeightedAverageBandwidthStatistic(SampleEvictionFunction sampleEvictionFunction, Clock clock) {
        this.samples = new ArrayDeque<>();
        this.sampleEvictionFunction = sampleEvictionFunction;
        this.clock = clock;
    }
}
