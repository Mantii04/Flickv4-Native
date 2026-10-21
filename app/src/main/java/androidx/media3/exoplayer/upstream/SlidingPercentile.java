package androidx.media3.exoplayer.upstream;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.upstream.SlidingPercentile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

@UnstableApi
/* loaded from: classes.dex */
public class SlidingPercentile {
    private static final Comparator<Sample> INDEX_COMPARATOR;
    private static final int MAX_RECYCLED_SAMPLES = 5;
    private static final int SORT_ORDER_BY_INDEX = 1;
    private static final int SORT_ORDER_BY_VALUE = 0;
    private static final int SORT_ORDER_NONE = -1;
    private static final Comparator<Sample> VALUE_COMPARATOR;
    private final int maxWeight;
    private int nextSampleIndex;
    private int recycledSampleCount;
    private int totalWeight;
    private final Sample[] recycledSamples = new Sample[5];
    private final ArrayList<Sample> samples = new ArrayList<>();
    private int currentSortOrder = -1;

    public static class Sample {
        public int index;
        public float value;
        public int weight;

        private Sample() {
        }
    }

    static {
        final int i2 = 0;
        INDEX_COMPARATOR = new Comparator() { // from class: androidx.media3.exoplayer.upstream.j
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$static$0;
                int lambda$static$1;
                SlidingPercentile.Sample sample = (SlidingPercentile.Sample) obj;
                SlidingPercentile.Sample sample2 = (SlidingPercentile.Sample) obj2;
                switch (i2) {
                    case 0:
                        lambda$static$0 = SlidingPercentile.lambda$static$0(sample, sample2);
                        return lambda$static$0;
                    default:
                        lambda$static$1 = SlidingPercentile.lambda$static$1(sample, sample2);
                        return lambda$static$1;
                }
            }
        };
        final int i7 = 1;
        VALUE_COMPARATOR = new Comparator() { // from class: androidx.media3.exoplayer.upstream.j
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$static$0;
                int lambda$static$1;
                SlidingPercentile.Sample sample = (SlidingPercentile.Sample) obj;
                SlidingPercentile.Sample sample2 = (SlidingPercentile.Sample) obj2;
                switch (i7) {
                    case 0:
                        lambda$static$0 = SlidingPercentile.lambda$static$0(sample, sample2);
                        return lambda$static$0;
                    default:
                        lambda$static$1 = SlidingPercentile.lambda$static$1(sample, sample2);
                        return lambda$static$1;
                }
            }
        };
    }

    public SlidingPercentile(int i2) {
        this.maxWeight = i2;
    }

    private void ensureSortedByIndex() {
        if (this.currentSortOrder != 1) {
            Collections.sort(this.samples, INDEX_COMPARATOR);
            this.currentSortOrder = 1;
        }
    }

    private void ensureSortedByValue() {
        if (this.currentSortOrder != 0) {
            Collections.sort(this.samples, VALUE_COMPARATOR);
            this.currentSortOrder = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$static$0(Sample sample, Sample sample2) {
        return sample.index - sample2.index;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$static$1(Sample sample, Sample sample2) {
        return Float.compare(sample.value, sample2.value);
    }

    public void addSample(int i2, float f3) {
        Sample sample;
        ensureSortedByIndex();
        int i7 = this.recycledSampleCount;
        if (i7 > 0) {
            Sample[] sampleArr = this.recycledSamples;
            int i8 = i7 - 1;
            this.recycledSampleCount = i8;
            sample = sampleArr[i8];
        } else {
            sample = new Sample();
        }
        int i9 = this.nextSampleIndex;
        this.nextSampleIndex = i9 + 1;
        sample.index = i9;
        sample.weight = i2;
        sample.value = f3;
        this.samples.add(sample);
        this.totalWeight += i2;
        while (true) {
            int i10 = this.totalWeight;
            int i11 = this.maxWeight;
            if (i10 <= i11) {
                return;
            }
            int i12 = i10 - i11;
            Sample sample2 = this.samples.get(0);
            int i13 = sample2.weight;
            if (i13 <= i12) {
                this.totalWeight -= i13;
                this.samples.remove(0);
                int i14 = this.recycledSampleCount;
                if (i14 < 5) {
                    Sample[] sampleArr2 = this.recycledSamples;
                    this.recycledSampleCount = i14 + 1;
                    sampleArr2[i14] = sample2;
                }
            } else {
                sample2.weight = i13 - i12;
                this.totalWeight -= i12;
            }
        }
    }

    public float getPercentile(float f3) {
        ensureSortedByValue();
        float f7 = f3 * this.totalWeight;
        int i2 = 0;
        for (int i7 = 0; i7 < this.samples.size(); i7++) {
            Sample sample = this.samples.get(i7);
            i2 += sample.weight;
            if (i2 >= f7) {
                return sample.value;
            }
        }
        if (this.samples.isEmpty()) {
            return Float.NaN;
        }
        return ((Sample) b.c.h(1, this.samples)).value;
    }

    public void reset() {
        this.samples.clear();
        this.currentSortOrder = -1;
        this.nextSampleIndex = 0;
        this.totalWeight = 0;
    }
}
