package R5;

import W5.C0359f;
import java.util.concurrent.CancellationException;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public abstract class J {
    public static final I CoroutineScope(InterfaceC1952k interfaceC1952k) {
        InterfaceC0305y Job$default;
        if (interfaceC1952k.get(F.f3147e) == null) {
            Job$default = AbstractC0301u0.Job$default(null, 1, null);
            interfaceC1952k = interfaceC1952k.plus(Job$default);
        }
        return new C0359f(interfaceC1952k);
    }

    public static final void cancel(I i2, CancellationException cancellationException) {
        InterfaceC0294q0 interfaceC0294q0 = (InterfaceC0294q0) i2.getCoroutineContext().get(F.f3147e);
        if (interfaceC0294q0 != null) {
            interfaceC0294q0.cancel(cancellationException);
        } else {
            throw new IllegalStateException(("Scope cannot be cancelled because it does not have a job: " + i2).toString());
        }
    }

    public static final <R> Object coroutineScope(H5.p pVar, InterfaceC1944c interfaceC1944c) {
        W5.C c7 = new W5.C(interfaceC1944c.getContext(), interfaceC1944c);
        Object startUndispatchedOrReturn = X5.b.startUndispatchedOrReturn(c7, c7, pVar);
        if (startUndispatchedOrReturn == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            A5.f.probeCoroutineSuspended(interfaceC1944c);
        }
        return startUndispatchedOrReturn;
    }

    public static final void ensureActive(I i2) {
        AbstractC0299t0.ensureActive(i2.getCoroutineContext());
    }

    public static final void cancel(I i2, String str, Throwable th) {
        cancel(i2, AbstractC0270e0.CancellationException(str, th));
    }
}
