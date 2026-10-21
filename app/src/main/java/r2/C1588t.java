package r2;

/* renamed from: r2.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1588t implements InterfaceC1562V {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1584p f19805a;

    public C1588t(InterfaceC1584p interfaceC1584p) {
        this.f19805a = interfaceC1584p;
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(Object obj, int i2, int i7, l2.q qVar) {
        return new C1561U(new F2.d(obj), new C1585q(obj.toString(), this.f19805a));
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(Object obj) {
        return obj.toString().startsWith("data:image");
    }
}
