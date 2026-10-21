package androidx.media3.common;

import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.exoplayer.upstream.experimental.SlidingWeightedAverageBandwidthStatistic;
import java.util.Deque;

/* loaded from: classes.dex */
public final /* synthetic */ class x implements SimpleBasePlayer.PositionSupplier, SlidingWeightedAverageBandwidthStatistic.SampleEvictionFunction {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f7152b;

    public /* synthetic */ x(long j7) {
        this.f7152b = j7;
    }

    @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
    public long get() {
        return y.c(this.f7152b);
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.SlidingWeightedAverageBandwidthStatistic.SampleEvictionFunction
    public boolean shouldEvictSample(Deque deque) {
        boolean lambda$getMaxCountEvictionFunction$0;
        lambda$getMaxCountEvictionFunction$0 = SlidingWeightedAverageBandwidthStatistic.lambda$getMaxCountEvictionFunction$0(this.f7152b, deque);
        return lambda$getMaxCountEvictionFunction$0;
    }
}
