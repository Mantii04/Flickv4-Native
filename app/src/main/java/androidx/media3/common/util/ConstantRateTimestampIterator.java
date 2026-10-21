package androidx.media3.common.util;

import P3.v;
import androidx.media3.common.C;

@UnstableApi
/* loaded from: classes.dex */
public final class ConstantRateTimestampIterator implements TimestampIterator {
    private final long endPositionUs;
    private final float frameRate;
    private int framesAdded;
    private final double framesDurationUs;
    private final long startPositionUs;
    private final int totalNumberOfFramesToAdd;

    public ConstantRateTimestampIterator(long j7, float f3) {
        this(0L, j7, f3);
    }

    private long getTimestampUsAfter(int i2) {
        long round = Math.round(this.framesDurationUs * i2) + this.startPositionUs;
        v.checkState(round >= 0);
        return round;
    }

    @Override // androidx.media3.common.util.TimestampIterator
    public long getLastTimestampUs() {
        int i2 = this.totalNumberOfFramesToAdd;
        return i2 == 0 ? C.TIME_UNSET : getTimestampUsAfter(i2 - 1);
    }

    @Override // androidx.media3.common.util.TimestampIterator
    public boolean hasNext() {
        return this.framesAdded < this.totalNumberOfFramesToAdd;
    }

    @Override // androidx.media3.common.util.TimestampIterator
    public long next() {
        v.checkState(hasNext());
        int i2 = this.framesAdded;
        this.framesAdded = i2 + 1;
        return getTimestampUsAfter(i2);
    }

    public ConstantRateTimestampIterator(long j7, long j8, float f3) {
        boolean z6 = false;
        v.checkArgument(j8 > 0);
        v.checkArgument(f3 > 0.0f);
        if (0 <= j7 && j7 < j8) {
            z6 = true;
        }
        v.checkArgument(z6);
        this.startPositionUs = j7;
        this.endPositionUs = j8;
        this.frameRate = f3;
        this.totalNumberOfFramesToAdd = Math.max(Math.round(((j8 - j7) / 1000000.0f) * f3), 1);
        this.framesDurationUs = 1000000.0f / f3;
    }

    @Override // androidx.media3.common.util.TimestampIterator
    public ConstantRateTimestampIterator copyOf() {
        return new ConstantRateTimestampIterator(this.startPositionUs, this.endPositionUs, this.frameRate);
    }
}
