package v0;

/* renamed from: v0.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1735t implements g0 {

    /* renamed from: a, reason: collision with root package name */
    public final long f20531a;

    /* renamed from: b, reason: collision with root package name */
    public final long f20532b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20533c;

    /* renamed from: d, reason: collision with root package name */
    public final long f20534d;

    /* renamed from: e, reason: collision with root package name */
    public final int f20535e;

    /* renamed from: f, reason: collision with root package name */
    public final long f20536f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f20537g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f20538h;

    public C1735t(long j7, long j8, int i2, int i7, boolean z6) {
        this(j7, j8, i2, i7, z6, true);
    }

    @Override // v0.g0
    public long getDurationUs() {
        return this.f20536f;
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        long j8 = this.f20534d;
        long j9 = this.f20532b;
        if (j8 == -1 && !this.f20537g) {
            return new e0(new h0(0L, j9));
        }
        int i2 = this.f20533c;
        long j10 = i2;
        long j11 = (((this.f20535e * j7) / 8000000) / j10) * j10;
        if (j8 != -1) {
            j11 = Math.min(j11, j8 - j10);
        }
        long max = j9 + Math.max(j11, 0L);
        long timeUsAtPosition = getTimeUsAtPosition(max);
        h0 h0Var = new h0(timeUsAtPosition, max);
        if (j8 == -1 || timeUsAtPosition >= j7 || i2 + max >= this.f20531a) {
            return new e0(h0Var);
        }
        long j12 = max + i2;
        return new e0(h0Var, new h0(getTimeUsAtPosition(j12), j12));
    }

    public long getTimeUsAtPosition(long j7) {
        return (Math.max(0L, j7 - this.f20532b) * 8000000) / this.f20535e;
    }

    @Override // v0.g0
    public boolean isEstimated() {
        return this.f20538h;
    }

    @Override // v0.g0
    public boolean isSeekable() {
        return this.f20534d != -1 || this.f20537g;
    }

    public C1735t(long j7, long j8, int i2, int i7, boolean z6, boolean z7) {
        this.f20531a = j7;
        this.f20532b = j8;
        this.f20533c = i7 == -1 ? 1 : i7;
        this.f20535e = i2;
        this.f20537g = z6;
        this.f20538h = z7;
        if (j7 == -1) {
            this.f20534d = -1L;
            this.f20536f = androidx.media3.common.C.TIME_UNSET;
        } else {
            long j9 = j7 - j8;
            this.f20534d = j9;
            this.f20536f = (Math.max(0L, j9) * 8000000) / i2;
        }
    }
}
