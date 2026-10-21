package O0;

import v0.C1735t;
import v0.Y;

/* loaded from: classes.dex */
public final class a extends C1735t implements i {

    /* renamed from: i, reason: collision with root package name */
    public final long f2337i;

    /* renamed from: j, reason: collision with root package name */
    public final int f2338j;

    /* renamed from: k, reason: collision with root package name */
    public final int f2339k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f2340l;

    /* renamed from: m, reason: collision with root package name */
    public final long f2341m;

    public a(long j7, long j8, Y y6, boolean z6) {
        this(j7, j8, y6.f20419f, y6.f20416c, z6, true);
    }

    public a copyWithNewDataEndPosition(long j7) {
        return new a(j7, this.f2337i, this.f2338j, this.f2339k, this.f2340l, false);
    }

    @Override // O0.i
    public int getAverageBitrate() {
        return this.f2338j;
    }

    @Override // O0.i
    public long getDataEndPosition() {
        return this.f2341m;
    }

    @Override // O0.i
    public long getDataStartPosition() {
        return this.f2337i;
    }

    @Override // O0.i
    public long getTimeUs(long j7) {
        return getTimeUsAtPosition(j7);
    }

    public a(long j7, long j8, int i2, int i7, boolean z6) {
        this(j7, j8, i2, i7, z6, true);
    }

    public a(long j7, long j8, int i2, int i7, boolean z6, boolean z7) {
        super(j7, j8, i2, i7, z6, z7);
        long j9 = j7;
        this.f2337i = j8;
        this.f2338j = i2;
        this.f2339k = i7;
        this.f2340l = z6;
        this.f2341m = j9 == -1 ? -1L : j9;
    }
}
