package r2;

import java.io.File;

/* renamed from: r2.H, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1549H implements InterfaceC1562V {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1546E f19732a;

    public C1549H(InterfaceC1546E interfaceC1546E) {
        this.f19732a = interfaceC1546E;
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(File file, int i2, int i7, l2.q qVar) {
        return new C1561U(new F2.d(file), new C1545D(file, this.f19732a));
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(File file) {
        return true;
    }
}
