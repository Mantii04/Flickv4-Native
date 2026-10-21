package s2;

import java.net.URL;
import l2.q;
import r2.C1550I;
import r2.C1561U;
import r2.InterfaceC1562V;

/* renamed from: s2.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1639m implements InterfaceC1562V {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1562V f20027a;

    public C1639m(InterfaceC1562V interfaceC1562V) {
        this.f20027a = interfaceC1562V;
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(URL url, int i2, int i7, q qVar) {
        return this.f20027a.buildLoadData(new C1550I(url), i2, i7, qVar);
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(URL url) {
        return true;
    }
}
