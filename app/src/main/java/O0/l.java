package O0;

import P3.v;
import androidx.media3.common.C;
import androidx.media3.common.util.Util;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import v0.Y;
import v0.d0;
import v0.e0;
import v0.h0;

/* loaded from: classes.dex */
public final class l implements i {

    /* renamed from: a, reason: collision with root package name */
    public final long f2392a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2393b;

    /* renamed from: c, reason: collision with root package name */
    public final long f2394c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2395d;

    /* renamed from: e, reason: collision with root package name */
    public final long f2396e;

    /* renamed from: f, reason: collision with root package name */
    public final long f2397f;

    /* renamed from: g, reason: collision with root package name */
    public final long[] f2398g;

    public l(long j7, int i2, long j8, int i7, long j9, long[] jArr) {
        this.f2392a = j7;
        this.f2393b = i2;
        this.f2394c = j8;
        this.f2395d = i7;
        this.f2396e = j9;
        this.f2398g = jArr;
        this.f2397f = j9 != -1 ? j7 + j9 : -1L;
    }

    public static l create(k kVar, long j7) {
        long computeDurationUs = kVar.computeDurationUs();
        if (computeDurationUs == C.TIME_UNSET) {
            return null;
        }
        Y y6 = kVar.f2385a;
        return new l(j7, y6.f20416c, computeDurationUs, y6.f20419f, kVar.f2387c, kVar.f2391g);
    }

    @Override // O0.i
    public int getAverageBitrate() {
        return this.f2395d;
    }

    @Override // O0.i
    public long getDataEndPosition() {
        return this.f2397f;
    }

    @Override // O0.i
    public long getDataStartPosition() {
        return this.f2392a + this.f2393b;
    }

    @Override // v0.g0
    public long getDurationUs() {
        return this.f2394c;
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        double d7;
        double d8;
        boolean isSeekable = isSeekable();
        int i2 = this.f2393b;
        long j8 = this.f2392a;
        if (!isSeekable) {
            return new e0(new h0(0L, j8 + i2));
        }
        long constrainValue = Util.constrainValue(j7, 0L, this.f2394c);
        double d9 = (constrainValue * 100.0d) / this.f2394c;
        double d10 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        if (d9 <= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            d7 = 256.0d;
        } else if (d9 >= 100.0d) {
            d7 = 256.0d;
            d10 = 256.0d;
        } else {
            int i7 = (int) d9;
            long[] jArr = (long[]) v.checkNotNull(this.f2398g);
            double d11 = jArr[i7];
            if (i7 == 99) {
                d7 = 256.0d;
                d8 = 256.0d;
            } else {
                d7 = 256.0d;
                d8 = jArr[i7 + 1];
            }
            d10 = ((d8 - d11) * (d9 - i7)) + d11;
        }
        long j9 = this.f2396e;
        return new e0(new h0(constrainValue, j8 + Util.constrainValue(Math.round((d10 / d7) * j9), i2, j9 - 1)));
    }

    @Override // O0.i
    public long getTimeUs(long j7) {
        long j8 = j7 - this.f2392a;
        if (!isSeekable() || j8 <= this.f2393b) {
            return 0L;
        }
        long[] jArr = (long[]) v.checkNotNull(this.f2398g);
        double d7 = (j8 * 256.0d) / this.f2396e;
        int binarySearchFloor = Util.binarySearchFloor(jArr, (long) d7, true, true);
        long j9 = this.f2394c;
        long j10 = (binarySearchFloor * j9) / 100;
        long j11 = jArr[binarySearchFloor];
        int i2 = binarySearchFloor + 1;
        long j12 = (j9 * i2) / 100;
        return Math.round((j11 == (binarySearchFloor == 99 ? 256L : jArr[i2]) ? FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE : (d7 - j11) / (r0 - j11)) * (j12 - j10)) + j10;
    }

    @Override // v0.g0
    public final /* synthetic */ boolean isEstimated() {
        return d0.a(this);
    }

    @Override // v0.g0
    public boolean isSeekable() {
        return this.f2398g != null;
    }
}
