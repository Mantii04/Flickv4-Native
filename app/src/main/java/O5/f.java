package O5;

import java.util.Iterator;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public abstract class f {
    public abstract Object yield(Object obj, InterfaceC1944c interfaceC1944c);

    public final Object yieldAll(d dVar, InterfaceC1944c interfaceC1944c) {
        Object yieldAll = yieldAll(dVar.iterator(), interfaceC1944c);
        return yieldAll == AbstractC2008a.getCOROUTINE_SUSPENDED() ? yieldAll : C1711j.f20329a;
    }

    public abstract Object yieldAll(Iterator<Object> it, InterfaceC1944c interfaceC1944c);
}
