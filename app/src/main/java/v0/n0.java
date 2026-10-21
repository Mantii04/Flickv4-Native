package v0;

/* loaded from: classes.dex */
public final class n0 implements F {

    /* renamed from: b, reason: collision with root package name */
    public final long f20507b;

    /* renamed from: e, reason: collision with root package name */
    public final F f20508e;

    public n0(long j7, F f3) {
        this.f20507b = j7;
        this.f20508e = f3;
    }

    @Override // v0.F
    public void endTracks() {
        this.f20508e.endTracks();
    }

    @Override // v0.F
    public void seekMap(g0 g0Var) {
        this.f20508e.seekMap(new m0(this, g0Var, g0Var));
    }

    @Override // v0.F
    public r0 track(int i2, int i7) {
        return this.f20508e.track(i2, i7);
    }
}
