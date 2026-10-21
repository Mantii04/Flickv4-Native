package R5;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CoroutineStart;
import y5.C1946e;
import y5.InterfaceC1947f;
import y5.InterfaceC1952k;

/* renamed from: R5.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC0275h {
    public static final <T> T runBlocking(InterfaceC1952k interfaceC1952k, H5.p pVar) throws InterruptedException {
        Y currentOrNull$kotlinx_coroutines_core;
        InterfaceC1952k newCoroutineContext;
        Thread currentThread = Thread.currentThread();
        InterfaceC1947f interfaceC1947f = (InterfaceC1947f) interfaceC1952k.get(C1946e.f21324b);
        C0278i0 c0278i0 = C0278i0.f3178b;
        if (interfaceC1947f == null) {
            currentOrNull$kotlinx_coroutines_core = O0.f3153a.getEventLoop$kotlinx_coroutines_core();
            newCoroutineContext = kotlinx.coroutines.a.newCoroutineContext(c0278i0, interfaceC1952k.plus(currentOrNull$kotlinx_coroutines_core));
        } else {
            Y y6 = interfaceC1947f instanceof Y ? (Y) interfaceC1947f : null;
            if (y6 != null) {
                Y y7 = y6.shouldBeProcessedFromContext() ? y6 : null;
                if (y7 != null) {
                    currentOrNull$kotlinx_coroutines_core = y7;
                    newCoroutineContext = kotlinx.coroutines.a.newCoroutineContext(c0278i0, interfaceC1952k);
                }
            }
            currentOrNull$kotlinx_coroutines_core = O0.f3153a.currentOrNull$kotlinx_coroutines_core();
            newCoroutineContext = kotlinx.coroutines.a.newCoroutineContext(c0278i0, interfaceC1952k);
        }
        C0269e c0269e = new C0269e(newCoroutineContext, currentThread, currentOrNull$kotlinx_coroutines_core);
        c0269e.start(CoroutineStart.f17480b, c0269e, pVar);
        return (T) c0269e.joinBlocking();
    }

    public static /* synthetic */ Object runBlocking$default(InterfaceC1952k interfaceC1952k, H5.p pVar, int i2, Object obj) throws InterruptedException {
        if ((i2 & 1) != 0) {
            interfaceC1952k = EmptyCoroutineContext.f17433b;
        }
        return AbstractC0273g.runBlocking(interfaceC1952k, pVar);
    }
}
