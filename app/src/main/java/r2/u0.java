package r2;

/* loaded from: classes.dex */
public final class u0 implements InterfaceC1562V {

    /* renamed from: a, reason: collision with root package name */
    public static final u0 f19808a = new u0();

    @Deprecated
    public u0() {
    }

    public static <T> u0 getInstance() {
        return f19808a;
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(Object obj, int i2, int i7, l2.q qVar) {
        return new C1561U(new F2.d(obj), new t0(obj));
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(Object obj) {
        return true;
    }
}
