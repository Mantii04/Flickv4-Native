package v0;

/* loaded from: classes.dex */
public final class m0 extends S {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g0 f20505a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n0 f20506b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(n0 n0Var, g0 g0Var, g0 g0Var2) {
        super(g0Var);
        this.f20506b = n0Var;
        this.f20505a = g0Var2;
    }

    @Override // v0.S, v0.g0
    public e0 getSeekPoints(long j7) {
        e0 seekPoints = this.f20505a.getSeekPoints(j7);
        h0 h0Var = seekPoints.f20453a;
        long j8 = h0Var.f20474a;
        long j9 = h0Var.f20475b;
        n0 n0Var = this.f20506b;
        h0 h0Var2 = new h0(j8, j9 + n0Var.f20507b);
        h0 h0Var3 = seekPoints.f20454b;
        return new e0(h0Var2, new h0(h0Var3.f20474a, h0Var3.f20475b + n0Var.f20507b));
    }
}
