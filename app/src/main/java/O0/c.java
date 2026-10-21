package O0;

import J0.n;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.util.Util;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import v0.d0;
import v0.e0;
import v0.h0;

/* loaded from: classes.dex */
public final class c implements i {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f2346a;

    /* renamed from: b, reason: collision with root package name */
    public final long[] f2347b;

    /* renamed from: c, reason: collision with root package name */
    public final long f2348c;

    public c(long[] jArr, long[] jArr2, long j7) {
        this.f2346a = jArr;
        this.f2347b = jArr2;
        this.f2348c = j7 == C.TIME_UNSET ? Util.msToUs(jArr2[jArr2.length - 1]) : j7;
    }

    public static Pair a(long[] jArr, long[] jArr2, long j7) {
        int binarySearchFloor = Util.binarySearchFloor(jArr, j7, true, true);
        long j8 = jArr[binarySearchFloor];
        long j9 = jArr2[binarySearchFloor];
        int i2 = binarySearchFloor + 1;
        if (i2 == jArr.length) {
            return Pair.create(Long.valueOf(j8), Long.valueOf(j9));
        }
        return Pair.create(Long.valueOf(j7), Long.valueOf(((long) ((jArr[i2] == j8 ? FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE : (j7 - j8) / (r6 - j8)) * (jArr2[i2] - j9))) + j9));
    }

    public static c create(long j7, n nVar, long j8) {
        int length = nVar.f1471e.length;
        int i2 = length + 1;
        long[] jArr = new long[i2];
        long[] jArr2 = new long[i2];
        jArr[0] = j7;
        long j9 = 0;
        jArr2[0] = 0;
        for (int i7 = 1; i7 <= length; i7++) {
            int i8 = i7 - 1;
            j7 += nVar.f1469c + nVar.f1471e[i8];
            j9 += nVar.f1470d + nVar.f1472f[i8];
            jArr[i7] = j7;
            jArr2[i7] = j9;
        }
        return new c(jArr, jArr2, j8);
    }

    @Override // O0.i
    public int getAverageBitrate() {
        return C.RATE_UNSET_INT;
    }

    @Override // O0.i
    public long getDataEndPosition() {
        return -1L;
    }

    @Override // O0.i
    public long getDataStartPosition() {
        return 0L;
    }

    @Override // v0.g0
    public long getDurationUs() {
        return this.f2348c;
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        Pair a7 = a(this.f2347b, this.f2346a, Util.usToMs(Util.constrainValue(j7, 0L, this.f2348c)));
        return new e0(new h0(Util.msToUs(((Long) a7.first).longValue()), ((Long) a7.second).longValue()));
    }

    @Override // O0.i
    public long getTimeUs(long j7) {
        return Util.msToUs(((Long) a(this.f2346a, this.f2347b, j7).second).longValue());
    }

    @Override // v0.g0
    public final /* synthetic */ boolean isEstimated() {
        return d0.a(this);
    }

    @Override // v0.g0
    public boolean isSeekable() {
        return true;
    }
}
