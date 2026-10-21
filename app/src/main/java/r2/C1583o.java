package r2;

import java.io.File;

/* renamed from: r2.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1583o implements InterfaceC1562V {
    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(File file, int i2, int i7, l2.q qVar) {
        return new C1561U(new F2.d(file), new C1581m(file));
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(File file) {
        return true;
    }
}
