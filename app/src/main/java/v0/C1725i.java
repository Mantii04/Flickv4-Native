package v0;

/* renamed from: v0.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1725i implements g0 {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1728l f20476a;

    /* renamed from: b, reason: collision with root package name */
    public final long f20477b;

    /* renamed from: c, reason: collision with root package name */
    public final long f20478c;

    /* renamed from: d, reason: collision with root package name */
    public final long f20479d;

    /* renamed from: e, reason: collision with root package name */
    public final long f20480e;

    /* renamed from: f, reason: collision with root package name */
    public final long f20481f;

    /* renamed from: g, reason: collision with root package name */
    public final long f20482g;

    public C1725i(InterfaceC1728l interfaceC1728l, long j7, long j8, long j9, long j10, long j11, long j12) {
        this.f20476a = interfaceC1728l;
        this.f20477b = j7;
        this.f20478c = j8;
        this.f20479d = j9;
        this.f20480e = j10;
        this.f20481f = j11;
        this.f20482g = j12;
    }

    @Override // v0.g0
    public long getDurationUs() {
        return this.f20477b;
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        return new e0(new h0(j7, C1727k.calculateNextSearchBytePosition(this.f20476a.timeUsToTargetTime(j7), this.f20478c, this.f20479d, this.f20480e, this.f20481f, this.f20482g)));
    }

    @Override // v0.g0
    public final /* synthetic */ boolean isEstimated() {
        return d0.a(this);
    }

    @Override // v0.g0
    public boolean isSeekable() {
        return true;
    }

    public long timeUsToTargetTime(long j7) {
        return this.f20476a.timeUsToTargetTime(j7);
    }
}
