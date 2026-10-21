package U5;

import H5.p;
import H5.q;
import kotlinx.coroutines.flow.FlowKt__ErrorsKt;
import kotlinx.coroutines.flow.FlowKt__ReduceKt;
import y5.InterfaceC1944c;

/* loaded from: classes2.dex */
public abstract class d {
    public static final <T> b callbackFlow(p pVar) {
        return e.callbackFlow(pVar);
    }

    /* renamed from: catch, reason: not valid java name */
    public static final <T> b m43catch(b bVar, q qVar) {
        return FlowKt__ErrorsKt.m109catch(bVar, qVar);
    }

    public static final <T> Object catchImpl(b bVar, c cVar, InterfaceC1944c interfaceC1944c) {
        return FlowKt__ErrorsKt.catchImpl(bVar, cVar, interfaceC1944c);
    }

    public static final <T> b dropWhile(b bVar, p pVar) {
        return i.dropWhile(bVar, pVar);
    }

    public static final <T> Object emitAll(c cVar, T5.q qVar, InterfaceC1944c interfaceC1944c) {
        return kotlinx.coroutines.flow.a.emitAll(cVar, qVar, interfaceC1944c);
    }

    public static final void ensureActive(c cVar) {
        g.ensureActive(cVar);
    }

    public static final <T> Object first(b bVar, InterfaceC1944c interfaceC1944c) {
        return FlowKt__ReduceKt.first(bVar, interfaceC1944c);
    }

    public static final <T> b flow(p pVar) {
        return e.flow(pVar);
    }

    public static final <T> Object emitAll(c cVar, b bVar, InterfaceC1944c interfaceC1944c) {
        return f.emitAll(cVar, bVar, interfaceC1944c);
    }
}
