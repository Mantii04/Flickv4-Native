package U5;

import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class f {
    public static final <T> Object emitAll(c cVar, b bVar, InterfaceC1944c interfaceC1944c) {
        d.ensureActive(cVar);
        Object collect = bVar.collect(cVar, interfaceC1944c);
        return collect == AbstractC2008a.getCOROUTINE_SUSPENDED() ? collect : C1711j.f20329a;
    }
}
