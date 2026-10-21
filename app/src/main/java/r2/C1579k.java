package r2;

/* renamed from: r2.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1579k implements InterfaceC1562V {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1575g f19792a;

    public C1579k(InterfaceC1575g interfaceC1575g) {
        this.f19792a = interfaceC1575g;
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(byte[] bArr, int i2, int i7, l2.q qVar) {
        return new C1561U(new F2.d(bArr), new C1576h(bArr, this.f19792a));
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(byte[] bArr) {
        return true;
    }
}
