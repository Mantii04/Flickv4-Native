package androidx.media3.common.audio;

import J0.g;
import P0.y;
import P3.p;
import P3.v;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.audio.DefaultGainProvider;
import androidx.media3.common.audio.GainProcessor;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.common.collect.H;
import com.google.common.collect.Range;
import java.util.Map;

@UnstableApi
/* loaded from: classes.dex */
public final class DefaultGainProvider implements GainProcessor.GainProvider {
    private static final float GAIN_UNSET = -3.4028235E38f;
    private final float defaultGain;
    private final H gainMap;
    public static final FadeProvider FADE_IN_LINEAR = new g(20);
    public static final FadeProvider FADE_OUT_LINEAR = new g(21);
    public static final FadeProvider FADE_IN_EQUAL_POWER = new g(22);
    public static final FadeProvider FADE_OUT_EQUAL_POWER = new g(23);

    public static final class Builder {
        private final float defaultGain;
        private final H gainMap;

        public Builder(float f3) {
            H create = H.create();
            this.gainMap = create;
            this.defaultGain = f3;
            create.put(Range.all(), new y(19));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Float lambda$addFadeAt$1(long j7, FadeProvider fadeProvider, long j8, Pair pair) {
            int intValue = ((Integer) pair.second).intValue();
            return Float.valueOf(fadeProvider.getGainFactorAt(((Long) pair.first).longValue() - Util.durationUsToSampleCount(j7, intValue), Util.durationUsToSampleCount(j8, intValue)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Float lambda$new$0(Pair pair) {
            return Float.valueOf(-3.4028235E38f);
        }

        public Builder addFadeAt(final long j7, final long j8, final FadeProvider fadeProvider) {
            v.checkArgument(j7 >= 0);
            v.checkArgument(j8 > 1);
            this.gainMap.put(Range.closedOpen(Long.valueOf(j7), Long.valueOf(j7 + j8)), new p() { // from class: androidx.media3.common.audio.f
                @Override // P3.p
                public final Object apply(Object obj) {
                    Float lambda$addFadeAt$1;
                    lambda$addFadeAt$1 = DefaultGainProvider.Builder.lambda$addFadeAt$1(j7, fadeProvider, j8, (Pair) obj);
                    return lambda$addFadeAt$1;
                }
            });
            return this;
        }

        public DefaultGainProvider build() {
            return new DefaultGainProvider(this.gainMap, this.defaultGain);
        }
    }

    public interface FadeProvider {
        float getGainFactorAt(long j7, long j8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$static$0(long j7, long j8) {
        return j7 / j8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$static$1(long j7, long j8) {
        return (j8 - j7) / j8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$static$2(long j7, long j8) {
        return (float) Math.sin((j7 * 1.5707963267948966d) / j8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$static$3(long j7, long j8) {
        return (float) Math.cos((j7 * 1.5707963267948966d) / j8);
    }

    @Override // androidx.media3.common.audio.GainProcessor.GainProvider
    public float getGainFactorAtSamplePosition(long j7, int i2) {
        v.checkState(i2 > 0);
        v.checkArgument(j7 >= 0);
        float floatValue = ((Float) ((p) v.checkNotNull((p) this.gainMap.get(Long.valueOf(Util.sampleCountToDurationUs(j7, i2))))).apply(Pair.create(Long.valueOf(j7), Integer.valueOf(i2)))).floatValue();
        return floatValue == -3.4028235E38f ? this.defaultGain : floatValue;
    }

    @Override // androidx.media3.common.audio.GainProcessor.GainProvider
    public long isUnityUntil(long j7, int i2) {
        v.checkState(i2 > 0);
        v.checkArgument(j7 >= 0);
        Map.Entry entry = (Map.Entry) v.checkNotNull(this.gainMap.getEntry(Long.valueOf(Util.sampleCountToDurationUs(j7, i2))));
        float floatValue = ((Float) ((p) entry.getValue()).apply(Pair.create(Long.valueOf(j7), Integer.valueOf(i2)))).floatValue();
        if (floatValue == 1.0f) {
            return j7 + 1;
        }
        if (this.defaultGain != 1.0f || floatValue != -3.4028235E38f) {
            return C.TIME_UNSET;
        }
        if (((Range) entry.getKey()).hasUpperBound()) {
            return Util.durationUsToSampleCount(((Long) ((Range) entry.getKey()).upperEndpoint()).longValue(), i2);
        }
        return Long.MIN_VALUE;
    }

    private DefaultGainProvider(H h7, float f3) {
        H create = H.create();
        this.gainMap = create;
        create.putAll(h7);
        this.defaultGain = f3;
    }
}
