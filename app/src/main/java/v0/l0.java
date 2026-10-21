package v0;

/* loaded from: classes.dex */
public final class l0 extends Q {

    /* renamed from: b, reason: collision with root package name */
    public final long f20500b;

    public l0(D d7, long j7) {
        super(d7);
        P3.v.checkArgument(d7.getPosition() >= j7);
        this.f20500b = j7;
    }

    @Override // v0.Q, v0.D
    public long getLength() {
        return super.getLength() - this.f20500b;
    }

    @Override // v0.Q, v0.D
    public long getPeekPosition() {
        return super.getPeekPosition() - this.f20500b;
    }

    @Override // v0.Q, v0.D
    public long getPosition() {
        return super.getPosition() - this.f20500b;
    }
}
