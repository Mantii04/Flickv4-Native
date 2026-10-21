package v0;

/* loaded from: classes.dex */
public class f0 implements g0 {

    /* renamed from: a, reason: collision with root package name */
    public final long f20458a;

    /* renamed from: b, reason: collision with root package name */
    public final e0 f20459b;

    public f0(long j7) {
        this(j7, 0L);
    }

    @Override // v0.g0
    public long getDurationUs() {
        return this.f20458a;
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        return this.f20459b;
    }

    @Override // v0.g0
    public final /* synthetic */ boolean isEstimated() {
        return d0.a(this);
    }

    @Override // v0.g0
    public boolean isSeekable() {
        return false;
    }

    public f0(long j7, long j8) {
        this.f20458a = j7;
        this.f20459b = new e0(j8 == 0 ? h0.f20473c : new h0(0L, j8));
    }
}
