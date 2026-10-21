package R5;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CoroutineStart;
import y5.C1946e;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;
import z5.AbstractC2008a;

/* renamed from: R5.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC0277i {
    public static final <T> N async(I i2, InterfaceC1952k interfaceC1952k, CoroutineStart coroutineStart, H5.p pVar) {
        InterfaceC1952k newCoroutineContext = kotlinx.coroutines.a.newCoroutineContext(i2, interfaceC1952k);
        O c02 = coroutineStart.isLazy() ? new C0(newCoroutineContext, pVar) : new O(newCoroutineContext, true);
        c02.start(coroutineStart, c02, pVar);
        return c02;
    }

    public static /* synthetic */ N async$default(I i2, InterfaceC1952k interfaceC1952k, CoroutineStart coroutineStart, H5.p pVar, int i7, Object obj) {
        if ((i7 & 1) != 0) {
            interfaceC1952k = EmptyCoroutineContext.f17433b;
        }
        if ((i7 & 2) != 0) {
            coroutineStart = CoroutineStart.f17480b;
        }
        return AbstractC0273g.async(i2, interfaceC1952k, coroutineStart, pVar);
    }

    public static final InterfaceC0294q0 launch(I i2, InterfaceC1952k interfaceC1952k, CoroutineStart coroutineStart, H5.p pVar) {
        InterfaceC1952k newCoroutineContext = kotlinx.coroutines.a.newCoroutineContext(i2, interfaceC1952k);
        AbstractC0261a d02 = coroutineStart.isLazy() ? new D0(newCoroutineContext, pVar) : new K0(newCoroutineContext, true);
        d02.start(coroutineStart, d02, pVar);
        return d02;
    }

    public static /* synthetic */ InterfaceC0294q0 launch$default(I i2, InterfaceC1952k interfaceC1952k, CoroutineStart coroutineStart, H5.p pVar, int i7, Object obj) {
        if ((i7 & 1) != 0) {
            interfaceC1952k = EmptyCoroutineContext.f17433b;
        }
        if ((i7 & 2) != 0) {
            coroutineStart = CoroutineStart.f17480b;
        }
        return AbstractC0273g.launch(i2, interfaceC1952k, coroutineStart, pVar);
    }

    public static final <T> Object withContext(InterfaceC1952k interfaceC1952k, H5.p pVar, InterfaceC1944c interfaceC1944c) {
        Object result;
        InterfaceC1952k context = interfaceC1944c.getContext();
        InterfaceC1952k newCoroutineContext = kotlinx.coroutines.a.newCoroutineContext(context, interfaceC1952k);
        AbstractC0299t0.ensureActive(newCoroutineContext);
        if (newCoroutineContext == context) {
            W5.C c7 = new W5.C(newCoroutineContext, interfaceC1944c);
            result = X5.b.startUndispatchedOrReturn(c7, c7, pVar);
        } else {
            C1946e c1946e = C1946e.f21324b;
            if (kotlin.jvm.internal.j.areEqual(newCoroutineContext.get(c1946e), context.get(c1946e))) {
                Q0 q02 = new Q0(newCoroutineContext, interfaceC1944c);
                InterfaceC1952k context2 = q02.getContext();
                Object updateThreadContext = kotlinx.coroutines.internal.a.updateThreadContext(context2, null);
                try {
                    Object startUndispatchedOrReturn = X5.b.startUndispatchedOrReturn(q02, q02, pVar);
                    kotlinx.coroutines.internal.a.restoreThreadContext(context2, updateThreadContext);
                    result = startUndispatchedOrReturn;
                } catch (Throwable th) {
                    kotlinx.coroutines.internal.a.restoreThreadContext(context2, updateThreadContext);
                    throw th;
                }
            } else {
                Q q6 = new Q(newCoroutineContext, interfaceC1944c);
                X5.a.startCoroutineCancellable$default(pVar, q6, q6, null, 4, null);
                result = q6.getResult();
            }
        }
        if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            A5.f.probeCoroutineSuspended(interfaceC1944c);
        }
        return result;
    }
}
