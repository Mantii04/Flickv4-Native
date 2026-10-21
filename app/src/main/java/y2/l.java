package y2;

import l2.q;
import l2.r;
import n2.InterfaceC1391M;
import o2.InterfaceC1430d;
import u2.C1678e;

/* loaded from: classes.dex */
public final class l implements r {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1430d f21096a;

    public l(InterfaceC1430d interfaceC1430d) {
        this.f21096a = interfaceC1430d;
    }

    @Override // l2.r
    public InterfaceC1391M decode(k2.b bVar, int i2, int i7, q qVar) {
        return C1678e.obtain(((k2.f) bVar).getNextFrame(), this.f21096a);
    }

    @Override // l2.r
    public boolean handles(k2.b bVar, q qVar) {
        return true;
    }
}
