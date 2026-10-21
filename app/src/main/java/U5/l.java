package U5;

import H5.p;
import kotlinx.coroutines.flow.AbstractFlow;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public final class l extends AbstractFlow {

    /* renamed from: b, reason: collision with root package name */
    public final p f3801b;

    public l(p pVar) {
        this.f3801b = pVar;
    }

    @Override // kotlinx.coroutines.flow.AbstractFlow
    public Object collectSafely(c cVar, InterfaceC1944c interfaceC1944c) {
        Object invoke = this.f3801b.invoke(cVar, interfaceC1944c);
        return invoke == AbstractC2008a.getCOROUTINE_SUSPENDED() ? invoke : C1711j.f20329a;
    }
}
