package d1;

import androidx.media3.common.util.Util;
import v0.d0;
import v0.e0;
import v0.g0;
import v0.h0;

/* loaded from: classes.dex */
public final class h implements g0 {

    /* renamed from: a, reason: collision with root package name */
    public final e f13527a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13528b;

    /* renamed from: c, reason: collision with root package name */
    public final long f13529c;

    /* renamed from: d, reason: collision with root package name */
    public final long f13530d;

    /* renamed from: e, reason: collision with root package name */
    public final long f13531e;

    public h(e eVar, int i2, long j7, long j8) {
        this.f13527a = eVar;
        this.f13528b = i2;
        this.f13529c = j7;
        long j9 = (j8 - j7) / eVar.f13520d;
        this.f13530d = j9;
        this.f13531e = Util.scaleLargeTimestamp(j9 * i2, 1000000L, eVar.f13519c);
    }

    @Override // v0.g0
    public long getDurationUs() {
        return this.f13531e;
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        e eVar = this.f13527a;
        int i2 = this.f13528b;
        long j8 = this.f13530d - 1;
        long constrainValue = Util.constrainValue((eVar.f13519c * j7) / (i2 * 1000000), 0L, j8);
        int i7 = eVar.f13520d;
        long j9 = this.f13529c;
        long scaleLargeTimestamp = Util.scaleLargeTimestamp(constrainValue * i2, 1000000L, eVar.f13519c);
        h0 h0Var = new h0(scaleLargeTimestamp, (i7 * constrainValue) + j9);
        if (scaleLargeTimestamp >= j7 || constrainValue == j8) {
            return new e0(h0Var);
        }
        long j10 = constrainValue + 1;
        return new e0(h0Var, new h0(Util.scaleLargeTimestamp(j10 * i2, 1000000L, eVar.f13519c), (i7 * j10) + j9));
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
