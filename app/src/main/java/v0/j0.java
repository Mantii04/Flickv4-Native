package v0;

/* loaded from: classes.dex */
public final class j0 implements g0 {

    /* renamed from: a, reason: collision with root package name */
    public final long f20490a;

    /* renamed from: b, reason: collision with root package name */
    public final long f20491b;

    public j0(long j7) {
        this(j7, 0L);
    }

    @Override // v0.g0
    public long getDurationUs() {
        return this.f20490a;
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        return new e0(new h0(j7, this.f20491b));
    }

    @Override // v0.g0
    public final /* synthetic */ boolean isEstimated() {
        return d0.a(this);
    }

    @Override // v0.g0
    public boolean isSeekable() {
        return true;
    }

    public j0(long j7, long j8) {
        this.f20490a = j7;
        this.f20491b = j8;
    }
}
