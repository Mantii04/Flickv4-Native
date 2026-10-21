package O0;

import androidx.media3.common.C;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.math.RoundingMode;
import v0.X;
import v0.d0;
import v0.e0;

/* loaded from: classes.dex */
public final class b implements i {

    /* renamed from: a, reason: collision with root package name */
    public final long f2342a;

    /* renamed from: b, reason: collision with root package name */
    public final long f2343b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2344c;

    /* renamed from: d, reason: collision with root package name */
    public final X f2345d;

    public b(long j7, long j8, long j9) {
        this.f2345d = new X(new long[]{j8}, new long[]{0}, j7);
        this.f2342a = j8;
        this.f2343b = j9;
        int i2 = C.RATE_UNSET_INT;
        if (j7 == C.TIME_UNSET) {
            this.f2344c = C.RATE_UNSET_INT;
            return;
        }
        long scaleLargeValue = Util.scaleLargeValue(j8 - j9, 8L, j7, RoundingMode.HALF_UP);
        if (scaleLargeValue > 0 && scaleLargeValue <= 2147483647L) {
            i2 = (int) scaleLargeValue;
        }
        this.f2344c = i2;
    }

    @Override // O0.i
    public int getAverageBitrate() {
        return this.f2344c;
    }

    @Override // O0.i
    public long getDataEndPosition() {
        return this.f2343b;
    }

    @Override // O0.i
    public long getDataStartPosition() {
        return this.f2342a;
    }

    @Override // v0.g0
    public long getDurationUs() {
        return this.f2345d.getDurationUs();
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        return this.f2345d.getSeekPoints(j7);
    }

    @Override // O0.i
    public long getTimeUs(long j7) {
        return this.f2345d.getTimeUs(j7);
    }

    @Override // v0.g0
    public final /* synthetic */ boolean isEstimated() {
        return d0.a(this);
    }

    @Override // v0.g0
    public boolean isSeekable() {
        return this.f2345d.isSeekable();
    }

    public boolean isTimeUsInIndex(long j7) {
        return this.f2345d.isTimeUsInIndex(j7, SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US);
    }

    public void maybeAddSeekPoint(long j7, long j8) {
        if (isTimeUsInIndex(j7)) {
            return;
        }
        this.f2345d.addSeekPoint(j7, j8);
    }
}
