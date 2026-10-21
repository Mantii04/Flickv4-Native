package v0;

import androidx.media3.common.util.Util;

/* loaded from: classes.dex */
public final class N implements g0 {

    /* renamed from: a, reason: collision with root package name */
    public final P f20375a;

    /* renamed from: b, reason: collision with root package name */
    public final long f20376b;

    public N(P p6, long j7) {
        this.f20375a = p6;
        this.f20376b = j7;
    }

    @Override // v0.g0
    public long getDurationUs() {
        return this.f20375a.getDurationUs();
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        P p6 = this.f20375a;
        P3.v.checkNotNull(p6.f20389k);
        O o6 = p6.f20389k;
        long[] jArr = o6.f20377a;
        int binarySearchFloor = Util.binarySearchFloor(jArr, p6.getSampleNumber(j7), true, false);
        long j8 = binarySearchFloor == -1 ? 0L : jArr[binarySearchFloor];
        long[] jArr2 = o6.f20378b;
        long j9 = binarySearchFloor != -1 ? jArr2[binarySearchFloor] : 0L;
        long j10 = this.f20376b;
        h0 h0Var = new h0((j8 * 1000000) / p6.f20383e, j10 + j9);
        if (h0Var.f20474a == j7 || binarySearchFloor == jArr.length - 1) {
            return new e0(h0Var);
        }
        int i2 = binarySearchFloor + 1;
        return new e0(h0Var, new h0((jArr[i2] * 1000000) / p6.f20383e, j10 + jArr2[i2]));
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
